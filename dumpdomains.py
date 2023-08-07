import json
import subprocess
import xmltodict
import re

def convert_to_json(xml_output):
    # Convert XML to dictionary
    xml_dict = xmltodict.parse(xml_output)

    # Convert dictionary to JSON
    json_output = json.dumps(xml_dict, indent=4)
    return json_output

def get_virsh_xmldump(domain):
    # Run virsh xmldump command
    command = ["virsh", "dumpxml", domain]
    process = subprocess.Popen(command, stdout=subprocess.PIPE)
    output, _ = process.communicate()
    return output.decode("utf-8")

def get_domains():
    command = ["virsh", "list", "--id"]
    process = subprocess.Popen(command, stdout=subprocess.PIPE)
    output, _ = process.communicate()
    mylist =  output.decode("utf-8").split("\n")
    mylist = list(filter(lambda x: x != "", mylist))
    return mylist

def get_dhcp_leases(network_name, mac_address):
    # Run virsh net-dhcp-leases command
    command = ["virsh", "net-dhcp-leases", network_name]
    process = subprocess.Popen(command, stdout=subprocess.PIPE)
    output, _ = process.communicate()
    for line in output.decode("utf-8").split("\n"):
        if mac_address in line:
          ipaddress = extract_ip_address(line)
          if ipaddress != None:
              return ipaddress


def extract_ip_address(line):
    # Regular expression pattern for matching an IP address
    pattern = r"(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"

    # Search for the IP address in the line
    match = re.search(pattern, line)
    if match:
        return match.group()
    else:
        return None


def get_network_id(network):
    # Run virsh net-info command for the default network
    command = ["virsh", "net-info", network]
    process = subprocess.Popen(command, stdout=subprocess.PIPE)
    output, _ = process.communicate()
    output_str = output.decode("utf-8")

    # Extract the network ID from the output
    match = re.search(r"UUID:\s+(\S+)", output_str)
    if match:
        return match.group(1)
    else:
        return None


# Specify the domain name or ID
domain_ids = get_domains()

# Get the XML output from virsh xmldump
for domain_id in domain_ids:
  xml_output = get_virsh_xmldump(domain_id)
  json_output = convert_to_json(xml_output)
  json_dict = json.loads(json_output)
  domain_name = json_dict["domain"]["name"]
  ip4s = []
  try:
    mac_address = json_dict["domain"]["devices"]["interface"]["mac"]["@address"]
    network = json_dict["domain"]["devices"]["interface"]["source"]["@network"]
    ipaddress = get_dhcp_leases(network, mac_address)
    netid = get_network_id(network)
    try:
      dhcp = get_dhcp_leases(netid)
    except: 
      dhcp = ""
    data = ipaddress + " " + domain_name + "." + network + ".openknowit.com"
    ip4s.append(data)
  except:
    try:
        for interface in json_dict["domain"]["devices"]["interface"]:
            mac_address = interface["mac"]["@address"]
            network = interface["source"]["@network"]
            ipaddress = get_dhcp_leases(network, mac_address)
            netid = get_network_id(network)
            try:
              dhcp = get_dhcp_leases(netid)
            except: 
              dhcp = ""
            data = ipaddress + " " + domain_name + "." + network + ".openknowit.com"
            ip4s.append(data)
    except:
        print("no network")
  for ip4 in ip4s:

    print(ip4s)






  file_name = domain_name + ".json"
  with open(file_name, "w") as file:
    file.write(json_output)


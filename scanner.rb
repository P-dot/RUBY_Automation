require "ipaddr"
require "net/ping"

def calculate_network_range(ip, mask) #function that calculates range
  address = "#{ip}/#{mask}"#with ip and netmask
  #to range method create a list of the ip's in the network
  ip_range = []
  IPAddr.new(address).to_range.each do |ip_object|
    ip_range.push(ip_object.to_s)
  end
  return ip_range
end 

#ping library to test this addresses
def scan_range(ip_range)
  active_ips = ip_range.select { |ip| Net::Ping::External.new(ip).ping? }
end

def write_to_file(active_ips)
  File.open("active_ips.txt", "w") do |file|
    active_ips.each do |ip_address|
      file.puts ip_address
    end
  end
end

range = calculate_network_range("192.168.1.1", "255.255.255.0")
active_ips = scan_range(range)
write_to_files(active_ips)
  

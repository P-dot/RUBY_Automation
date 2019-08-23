File.open("/var/log/syslog").each do |line| 
  if line.include?("CRON")
  end 	
end 


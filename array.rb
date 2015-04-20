class Array
  start_from = "127.0.0."
  last_octet = 255
  ips = Array.new(last_octet) { |octet| start_from + octet.to_s}

  puts ips
end
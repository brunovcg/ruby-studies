require 'os'

def my_os
  { cpu: OS.cpu_count, bits: OS.bits, mac: OS.mac? }
end

puts my_os

puts `/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s`
puts ""
puts "ssid of network?"
ssid = gets.chomp
puts "password?"
password = gets.chomp
start = Time.now
puts `networksetup -setairportnetwork en0 #{ssid} #{password}`
time = Time.now - start
s = sprintf('%02i', (time.to_i % 60))
mt = sprintf('%02i', ((time - time.to_i)*100).to_i)
ms = sprintf('%04i', ((time - time.to_i)*10000).to_i)

puts "completed in #{s}:#{ms}"


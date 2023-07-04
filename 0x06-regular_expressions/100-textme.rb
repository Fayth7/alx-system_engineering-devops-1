#!/usr/bin/env ruby

# Read the log file path from command-line argument
log_file = ARGV[0]

# Open the log file
File.open(log_file, 'r') do |file|
  # Read each line in the log file
  file.each_line do |line|
    # Extract the relevant information using regex
    match_data = line.match(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/)
    if match_data
      sender = match_data[1]
      receiver = match_data[2]
      flags = match_data[3]

      # Print the extracted information
      puts "#{sender},#{receiver},#{flags}"
    end
  end
end

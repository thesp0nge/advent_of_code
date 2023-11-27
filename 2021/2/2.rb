#!/usr/bin/env ruby

input = File.readlines('./input')

hp = 0
depth = 0
aim=0

input.each do |line|
    (command, value)=line.chomp().split(" ")
    if command == "forward"
        hp += value.to_i
        depth += aim * value.to_i if aim != 0
        
    end
    if command == "down"

        aim += value.to_i
    end
    
    if command == "up"

        aim -= value.to_i
    end
#    puts "l=#{line.chomp()} AIM=#{aim} HP= #{hp} D=#{depth} MUL=#{hp*depth}"
end

puts "HP= #{hp}\nD=#{depth}\nMUL=#{hp*depth}"

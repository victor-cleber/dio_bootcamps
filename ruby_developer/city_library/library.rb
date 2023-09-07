#!/usr/bin/ruby


puts "----------------------------------------"
puts "Thank you for visiting our City Library.\n "
puts "Please complete the fields bellow: "
print "Name: "
name = gets.chomp
print "Surname: "
surname = gets.chomp
print "Age: "
age = gets.chomp

#creating a Aray to save the visitors' details
visitors = Array.new

#creating a Hash to save a visitor's detail
visitor = Hash["name" => name, "surname" => surname, "age" => age]
#puts "#{visitor['name']} #{visitor['surname']} - #{visitor['age']}" 

#Adding a visitor
visitors.push(visitor)

#printing all visitor details
visitors.each_with_index do |visitor, index|
    puts "[#{index}] #{visitor['name']} #{visitor['surname']} - #{visitor['age']} anos"
  end
#visitors.count
#visitors.empty? #check if has any elements
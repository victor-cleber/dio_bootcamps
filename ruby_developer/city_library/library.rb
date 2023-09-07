#!/usr/bin/ruby
#initialize variables
exit = false

while exit == false
    #creating a Aray to save the visitors' details
    visitors = Array.new
    
    puts "######## City Library #############"    
    puts "1 - Add a new visitor"
    puts "2 - Print visitors details"
    puts "0 - Exit"
    
    option = gets.chomp
    
    case option
        when '0'
            #visitors.count
            if visitors.empty? == true #check if has any elements
                puts "Thank you for visiting us.\nBye Bye"  
                    exit = true
                    exit(true)
            else 
                puts "Attention: #{visitors.count} visitors found"
                puts "Do you really want to exit? Y - N"
                answer = gets.chomp
                if answer == 'Y'
                    puts "Thank you for visiting us.\nBye Bye"  
                    exit = true
                    exit(true)
                end
            end     
        when '1'
            puts "Please complete the fields bellow: "
            print "Name: "
            name = gets.chomp
            print "Surname: "
            surname = gets.chomp
            print "Age: "
            age = gets.chomp        
            
            #creating a Hash to save a visitor's detail
            visitor = Hash["name" => name, "surname" => surname, "age" => age]
            #puts "#{visitor['name']} #{visitor['surname']} - #{visitor['age']}" 

            #Adding a visitor
            visitors.push(visitor)
        when '2'
            puts "entrou"
            puts visitors
            #printing all visitor details
            if visitors.empty? == true
                visitors.each_with_index do |visitor, index|
                    puts "[#{index}] #{visitor['name']} #{visitor['surname']} - #{visitor['age']} anos"
                end
            end
        else
            puts "Sorry, this option is invalid. Please try again"
    end
end
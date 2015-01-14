
def getting_old(age)
    wealth = 0
    beauty = 99
    wisdom = 0
    
    while age < 88
        
        if age < 29
            beauty = beauty += 1
            intelligence = rand(4) + 1
            wealth = rand(100) + 1
        end
        
        if age > 35
            wealth += 1
            beauty -= 2
            wisdom = wisdom += 1 + rand(2)
        end
        
        age += 1
    end
    puts "dead at age #{age}"
    puts "beauty #{beauty}"
    puts "wisdom #{wisdom}"
    puts "wealth #{wealth}"
end

getting_old(18)


def countChars(sentence)

    lower   = 0
    upper   = 0
    special = 0
    numbers = 0


    sentence.each_char { |c| 
       upper =upper + c.count("A-Z")  
       lower =lower+ c.count("a-z")
       numbers = numbers + c.count("0-9")
       special = special + c.count("[^0-9a-zA-Z]")
     
    }

    puts lower
    puts upper
    puts numbers
    puts special
end


countChars("deu*12DEU%%%")
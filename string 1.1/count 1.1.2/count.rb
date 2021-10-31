
def countChars(sentence)

    lower   = 0
    upper   = 0
    special = 0
    numbers = 0

    sentence.each_char { |c| 
       upper =upper+1 if c.upcase  
       lower =lower+1 if c.downcase
       numbers =numbers+1 if c.to_i.is_a? Integer #fail here
     
    }

    puts lower
    puts numbers
end


countChars("deu 1 Zica")
#RUby implementation pangram -> is the text that contain only letters of the A 
# untill Z

def checkPangram(sentence)
    string_list = ('a'..'z').to_a


    #sanitize values, clear whitespace
    s = sentence.delete(' ')


    s.split('').each { |c| 

        if !string_list.include?(c.downcase)

            return false
        end
    }

    return true


end



#sentece will be ckecked
sentence = "The quick brown fox jumps over the little lazy dog"
 
if checkPangram(sentence)
    print (sentence)
    print (" is a pangram")
else
    print (sentence)
    print (" is not a pangram")
end
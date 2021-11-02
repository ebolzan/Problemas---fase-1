
#check if string is integer value
def isNumeric(obj)
    obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
end

#main function to check all values the string
#void return
def countChars(sentence)

    lower   = 0
    upper   = 0
    special = 0
    numbers = 0

    for i in 0..(sentence.length() - 1)        

        if sentence[i].downcase! then
            upper += 1
        elsif sentence[i].upcase! then
            lower += 1
        elsif isNumeric(sentence[i]) then
            numbers += 1
        else 
            special =+ 1
        end     
    end

    puts "The Lower case letters: #{lower}"
    puts "The Upper case letters: #{upper}"
    puts "The numbers: #{numbers}"
    puts "The special characters: #{special}"
end

string = "#GeeKs01fOr@gEEks07"
countChars(string)
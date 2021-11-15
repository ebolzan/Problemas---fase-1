require 'date'

def string_to_date(str)
    list_str = str.split("/")
    day, month, year = list_str[0].to_i, list_str[1].to_i, list_str[2].to_i    
    Date.new(year, month, day)
end


def find_future(array, query)    

    array_date = []

    for i in array
        array_date <<  string_to_date(i)
    end

    query_date = []

    for i in query
        query_date <<  string_to_date(i)
    end

    p array_date

    for q_date in query_date
       
        puts "mes #{q_date}:   -->"

        days_closest_date = nil
        days_closest_temp = 2**30

        for arr_date in array_date
            day = (arr_date.mjd - q_date.mjd).abs

            puts day, " < ", days_closest_temp
            a = gets

            if day < days_closest_temp
                days_closest_temp = day
                days_closest_date = arr_date

                puts "add>> ", arr_date
            end        
        end

        p days_closest_date
     

    end

end

array = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]

query = ["23/3/4345", "12/3/2"]

find_future(array, query)
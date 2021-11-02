# three elements in an array
def find3largest(arr, n)
    arr =arr.sort # It uses Tuned Quicksort with
                      # avg. case Time complexity = O(nLogn)
 
    check = 0
    count = 1
 
    for i in 1..(n + 1)
 
        if(count < 4)
            if(check != arr[n - i])
                 
                # to handle duplicate values
                puts(arr[n - i]," ")
                check = arr[n - i]
                count += 1
            end
        else
            break

        end
    end
end

# Driver code
arr = [12, 45, 1, -1, 45,
       54, 23, 5, 0, -10]
n = arr.length
find3largest(arr, n)
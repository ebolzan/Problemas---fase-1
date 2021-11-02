
#reversal function ready
#rotation right
def reversal(arr, k)

    start = 0
    array_size = arr.length

    while (start + 1 <= k)                

        arr[start], arr[array_size - 1] = arr[array_size - 1], arr[start]
        start = start + 1
        array_size = array_size - 1
    end

    #print with degub values
    p arr

end


array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
changes = 3

reversal(array, changes)
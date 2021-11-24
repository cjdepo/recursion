def merge_sort(array)
    if array.length == 1
        return array
    elsif array.length == 2
        left = merge_sort([array[0]])
        right = merge_sort([array[1]])
        weave(left, right)
    else
        left = merge_sort(array[0..array.length/2])
        right = merge_sort(array[1 + array.length/2..])
        weave(left, right)
    end
end

def weave(array1, array2)
    ordered_array = []
    array_length = array1.length + array2.length
    until ordered_array.length == array_length
        if array1.empty?
            array2.each { |v| ordered_array << v }
        elsif array2.empty?
            array1.each { |v| ordered_array << v }
        elsif array1[0] < array2[0]
            ordered_array << array1.shift
        else 
            ordered_array << array2.shift
        end
    end
    ordered_array
end


p merge_sort([2,4, 5,0, 10,9, 8, 3, 3, 3, 3, 0, 2, 1])
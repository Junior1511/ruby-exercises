def total_integers(array)
  # Count the total number of integers inside of the given array
  # The array may be nested, and the integers inside these "inner" layers must also be counted
  #
  # Example: `total_integers([0, 1, [5]]) == 3`
  #
  # NOTE: you may notice that `Array#flatten` would make quick work of this,
  # but you should implement this method without using it. The tests will check
  # to make sure `#flatten` isn't used.
  # 
  
  
  def arr_flatten(array)
    flatten_num_array = []

    if array.is_a?(Integer)
      flatten_num_array << array
    elsif array.is_a?(Array)
      array.each do |thing_in_array|
        flatten_num_array += arr_flatten(thing_in_array)
      end
    end

    flatten_num_array
  end

  arr_flatten(array).count


end

p total_integers([1,2,3,4,[[[[[[[[[7]]]]]]]]]])

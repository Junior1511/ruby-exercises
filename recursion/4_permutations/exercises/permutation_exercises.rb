def permutations(array)
  # Write a method that takes in an array of integers and returns an array of
  # all possible permutations of the original array. The permutations of a set
  # are the different ways the elements can be arranged.
  #
  # For simplicity, the integers are guaranteed to not repeat.
  #
  # Examples:
  # `permutations([1, 2, 3])` has six different permutations (or ways the elements can be arranged)
  #  it should return `[[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]`
  #
  # `permutations([])` returns `[[]]`, as there's only one arrangement of an empty set
  #
  # NOTE: the tests do not check for ordering, so a return of `[[1, 2], [2, 1]]`
  # will be treated the same as `[[2, 1], [1, 2]]`
  # 
  # returns array full of permutations
  # 
  permutations_array = []

  # Base case
  # 
  return [array] if array.length <= 1

  array.each_with_index do |num, index|
    left = array[0...index]
    right = array[(index + 1)..]
    rest = left + right

    result =  permutations(rest)
    result.each do |smaller_arrays|
      permutations_array << ([num] + smaller_arrays)
    end
  end

  permutations_array
end

permutations([1,2,3])

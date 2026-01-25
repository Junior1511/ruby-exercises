def contains?(hash, search_value)
  # Write a method that recursively searches for a value in a nested hash.
  # It should return `true` if the object contains that value.
  #
  # Examples:
  # contains?({ foo: { bar: "baz" } }, "baz") # true
  # contains?({ foo: { bar: "baz" } }, "egg") # false
  # 
  # Base condition
  return true if hash == search_value
  # make sure the value coming in is a hash
  if hash.is_a?(Hash)
  # Should return a boolean value
    return hash.any? do |key, value|
      contains?(value, search_value)
    end
  end
end

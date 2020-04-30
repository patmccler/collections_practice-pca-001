

def sort_array_asc array
  array.sort

end

def sort_array_desc array
  array.sort { |a,b| -1 * (a <=> b)}

end


def sort_array_char_count array
  array.sort {|a,b| a.length <=> b.length}

end

# swap second and third elements
def swap_elements array
  # temp = array[1]
  # array[1] = array[2]
  # array[2] = temp

  # array
  swap_elements_from_to array, 1, 2
end

## Extra
def swap_elements_from_to array, index, destination_index
  temp = array[index]
  array[index] = array[destination_index]
  array[destination_index] = temp

  array
end


def reverse_array array
  new_array = []
  array.each do|elem|
     new_array.unshift elem
  end
  new_array
end

# change third char of each element to $
def kesha_maker array
  array.map {|elem| elem[0,2] + "$" + elem[3,elem.length]}
  
end

#find all words that begin with a
def find_a array
  array.select {|elem| elem[0] == "a"}

end

# sum all the numbers
def sum_array array
  # sum = 0
  # array.each {|elem| sum += elem}
  # sum
  array.inject {|sum, elem| sum += elem}
end

#add s to all but second element
def add_s array
  array.map.with_index {|elem, i| i != 1? elem + "s" : elem}
end
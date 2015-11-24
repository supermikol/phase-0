array = ['a','b','c','d','e']
hash = {"marabel" => 1, "david" => 2, "johnson" => 4, "mary" => 5, "joey" => 6, "deangelo" => 6}
array_num = [5,4,3,2,1]
array_num2 = [4,6,2,5]

def median(array)
  new_array = array.sort.drop((array.length-1)/2)
  array.length.odd? ? new_array[0] : (new_array[0].to_f + new_array[1].to_f)/2
end

abc = array_num.map
p abc.each {|x| p x}
abc.sort


library.sort! {|a,b| b <=> a}
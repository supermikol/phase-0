list_of_names = ['jack_abernethy', 'mohammad_amin', 'zollie_barnes', 'reuben_brandt', 'dana_breen', 'breton_burnett', 'saundra_vanessa_castaneda', 'luis_de_castro', 'nicolette_chambers', 'kerry_choy', 'nick_davies', 'katherine_diangelo', 'adrian_diaz', 'david_diaz', 'bob_dorff', 'michael_du', 'paul_dynowski', 'jenna_espezua', 'sean_fleming', 'marcel_haesok', 'albert_hanh', 'arthur_head', 'jonathan_huang', 'thomas_huang', 'alex_jamar', 'kevin_jones', 'steven_jones', 'coleby_kent', 'caroline_kenworthy', 'calvin_lang', 'yi_lu', 'david_ma', 'sean_massih', 'tom_mchenry', 'alex_mitzman', 'lydia_nash', 'brenda_nguyen', 'matthew_oppenheimer', 'mason_pierce', 'joe_plonsker', 'mira_scarvalone', 'joseph_scott', 'chris_shahin', 'benjamin_shpringer', 'lindsey_stevenson', 'philip_thomas', 'gary_tso', 'ting_wang', 'clinton_weber', 'monique_williamson', 'regina_wong', 'hanah_yendler']

#input: array of names
#output: array of arrays, containing the same names, but broken up into random groups of 4
#Define method
#3, 6, 7, and 11 are the only array sizes where a group of 3 is required
#Default size should be 4, and remainders plugged into existing groups to make groups of 5
#Randomness is not explicitly stated, so I am ignoring that for now

def create_groups(list, shuffle = false)
  list.shuffle! if shuffle == true
  no_of_groups = list.size < 12 ? list.size/3 : list.size/4
  new_array = Array.new(no_of_groups) {[]}
  new_array.each_with_index {|x, i| new_array[i] << list.pop; break if list.size==0} until list.size == 0
  new_array
end

test_array1 = [1,2,3]
test_array2 = [1,2,3,4]
test_array3 = [1,2,3,4,5]
test_array4 = [1,2,3,4,5,6]
test_array5 = [1,2,3,4,5,6,7]
test_array6 = [1,2,3,4,5,6,7,8]
test_array7 = [1,2,3,4,5,6,7,8,9]
test_array8 = [1,2,3,4,5,6,7,8,9,10]


p create_groups(test_array1, true)
p create_groups(test_array2, true)
p create_groups(test_array3, true)
p create_groups(test_array4)
p create_groups(test_array5)
p create_groups(test_array6)
p create_groups(test_array7)
p create_groups(test_array8)
p create_groups(list_of_names, true)

=begin
What was the most interesting and most difficult part of this challenge?
The most interesting part of this challenge was thinking about the various approaches to take and considering which one would be the most efficient. I would say that was also the most difficult as well, since coding is a matter of finding the appropriate method on ruby-docs
Do you feel you are improving in your ability to write pseudocode and break the problem down?
It gets easier and more meaningful as challenges get difficult. The problem now is that I don't anticipate a lot of the real challenges until I start coding. My pseudocode is rather optimistic and naive oftentimes.
Was your approach for automating this task a good solution? What could have made it even better?
I think it's pretty good and will  do what it's asked to do as good as any human being can do it. I also included and optional 'shuffle' parameter in case anyone wants to get wild with it. The only thing I'm a bit disappointed with is how it breaks down groups of 9 and 10 into 3 groups as opposed to do, but 'fixing' this issue would've doubled the number of lines I have, so I decided to go with the more 'elegant' solution. Also, don't run this test with an array of less than 3 elements. :-)
What data structure did you decide to store the accountability groups in and why?
Array, because the information was pretty linear, and the index along with each array was sufficienty for me to iterate through.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I was kind of researching while I tried to solve the solution but by the time I finished it, it turns out I didn't really need any of the fancy methods. I also didn't think there was much room to refactor. However, I am curious to see what other people have done.
=end

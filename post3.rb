#What is a Proc?


# A proc is an independent peice of code that can be called wihin a method.
#
#
# Unlike a bloc, which is nothing more than syntax
# ex:
#
# array = [1,2,3,4]
#
# array.each do |x|
#   puts x + 1
# end
#
# # A proc is itself an object. Unlike a block which is just syntax,
# # which must be executed anew each time it is used.
#
# # if you try to assign a block to a variable and re-use it,
# #   you run into some problems:
#
#   block_attempt = array.each do |x|
#     puts x + 1
#   end
#
#
# puts block => "1,2,3,4"
# (should be 2,3,4,5)


# # Procs are similar to blocks in that they are a block
# of code that does something, but they can be packaged as
# objects and used over and over again.
#
#
# procedure = Proc.new do
#  array = [1,2,3,4]
#  puts array.each {|x| x + 1}
#  #this proc even has a block inside of it
# end
#
# puts procedure.call


# Procs can even take parameters similar to methods. this is something
# blocs cannot do.

# test_proc = Proc.new do |array|
#   puts array
# end
#
# test_proc.call [1,2,3,4]

# One important characteristic of procs, is that they can be called
# from within methods.

def method_example test_proc
  print "Calling test proc here! Value: "
  test_proc.call
end

the_proc = Proc.new do
  puts "fifty-five"
end

method_example the_proc

#once the proc has been defined, it can be used in any number of methods.


#Methods can also return procs, here is an example. pg 295

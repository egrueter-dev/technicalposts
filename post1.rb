

Recursion

When i first discovered recurison, I was ecstatic and excited by the concept, but was unable to fully
wrap my head around exactly what was going on.

Working through the exercises in chapter 10 in "Learn to program" I was still lost and was unsure why my code was working.

Ultimatly what did it for me was breaking down the Quicksort Algorithim presented by Dan Picket as a better solution
to the problem.

Here's the algorithm:'

#Quicksort Algorithim

def sort(arr)
  return arr if arr.length <= 1
  middle = arr.pop
  first = arr.select  {|x| x < middle }
  last = arr.select  {|x| x > middle }
  final =  sort(first) + [middle], sort(last)
  end

puts sort([35,59,23,91,21,45])

I broke the algorithim down line by line untill I understood each peice as independent code.

line 2: This ends the recursion, once all values are .pop'ed out or removed from the array by the first or last
code' the program returns nothing here, as there is nothing left in the array - this is how we stop the recursion from
continuing endlessly.

line 3: This removes the last value in the array, so for the example provided, middle = 45, the
rest of the array = [35,59,23,91,21]

line 4: The variable 'first' is assigned to all values in the array less than 'middle'. This is the first time I
had seen the .select method, very useful and intuitive.

So, first = [35,23,21]

line 5: The variable 'last' is assigned to all values in the array greater than middle(45)

So, last = [91,59]

line 6:

  This line is where it gets interesting. I found it difficult at first to wrap my head around what this
  line is telling the computer.

  In order to understand what exactly was going on, I did the calculation the long way, by writing out each
  step myself. This proved to be very instructive.

Heres what I did:

# calc
 sort([35,59,23,91,21,45])

m = 45
f = 35,23,21
l = 59, 91
final = F(35,23,21), M(45), sort(l(59,91))

sort(last)
m = 91
first = 59
last = []

sort(first)
m = 21
first = []
last = [35, 23]


final = First(F[0],M(21),L(f() m(23) l(35)), Middle(45) sort Last(F(59) M(91) L(0))


In recursion, the entire method is being called again from inside the first method. I was unsure how these different
iterations of the same method played together. At first I thought that the variables were being overwritten, and could
not understand how the computer was able to store the changes from each recursion.

After writing out each step, I realized that the computer was delivering a uniqe set of local variables each time
the method is called (duh!)

The last line really helped me understand what was going on.

When the last line is printed, you are really putting out a new set of variables each time untill the conditions
are met for all methods called. these variables are nested within eachtother.

here is a template without the numbers, you can see how

Method runs through once:

final First() Middle() Last()

Method runs through again for First - sort(First)
now only the data found in first will be used to produce the values for the next First, Middle, and Last.

final First(first(),middle(),last())

the same process occurs with Last, so the real output will look something like this:

First(first(),middle(),last()) + [Middle] + Last(first(),middle(),last())

But! remember that the method does not stop running untill there is nothing left in the array.
because there are 2 values remaining in First(last()) the recursion will go through again creating an additional layer of depth

First(last(f(),m(),l()))

This process could continue depending on how many numbers you put into the array. That last value has to be reduced to one value,
otherwise the algorithim will continue to run.

Thats how I reasoned my way through recursion. I think it really helps to think of all the variable values being
repeated in line as I have written them above. Hope this is helpful!




def sort(arr)
#    return arr if arr.length <= 1
#    middle = arr.pop
#    first = arr.select {|x| x < middle }
#    last = arr.select  {|x| x > middle }
#    final =  sort(first) + [middle], sort(last)
#   #  puts "first......#{first}"
#   #  puts "middle......#{middle}"
#   #  puts "last.......#{last}"
#   #  puts "break..."
# end
#
# puts sort([35,59,23,91,21,45])

#
# calc
[35,59,23,91,21,45]

m = 45
f = 35,23,21
l = 59, 91
final = F(35,23,21), M(45), sort(l(59,91))

sort(last)
m = 91
first = 59
last = []

sort(first)
m = 21
first = []
last = [35, 23]


final = First(F[0],M(21),L(f() m(23) l(35)) Middle(45) sort Last(F(59) M(91) L(0))


#Checking recursion knowledge..

def recur(val)
  return val if val <= 0
  value = val * val-1
  puts value
  recur(val-1)
end

recur(8)

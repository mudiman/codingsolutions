# /**
#  * Regex
#  *  search
#  *  return match
#  *  replace
#  *  split
#  *  extract
#  */

#coding styles PEP 8
#https://realpython.com/python-pep8/#:~:text=PEP%208%20suggests%20lines%20should,to%20run%20over%20several%20lines.

#https://realpython.com/python-coding-interview-tips/

import re

str = "We are  test. This test Coder  ?"
x = re.search("test", str) # return match obj with span() tuple start,end, group() match string,  string actual string
re.findall("test", str) # returns ['test', 'test']
# iterative over all match
x = re.finditer("test", str)
[print(a) for a in x]
# regex split
re.split("test", str) #['We are  ', '. This ', ' Coder  ?']
# replace test with 9 for first 2 occurances
re.sub("test", "9", str, 2)

#--------------string formatter
a = b = 2
f'Five plus ten is {a + b} and not {2 * (a + b)}.'

"For only {price:.2f} dollars!".format(price = 49)

"For only {price:x>10} dollars!".format(price = 49) # {fill}{direction}{paddingwidth}


import string
#if letter not in string.ascii_uppercase: print true
string.ascii_letters
string.ascii_uppercase
string.ascii_lowercase
string.digits
string.hexdigits
string.octdigits
string.punctuation
string.printable
string.whitespace

#------ loop
numbers = [45, 22, 14, 65, 97, 72]
for i, num in enumerate(numbers): print(i,num)

while false: print "a"
for i in range(0, 2):    
    print(i)
else:
  print("Finally finished!")

#----- array
#https://www.w3schools.com/python/python_ref_list.asp
cars = ['Ford', 'BMW', 'Volvo']
cars.sort()
cars.count()
cars.reverse()
cars.extend(['apple', 'banana', 'cherry']) # cars then fruits
cars.index("BMW") # 1
cars.insert(1, "Mercedez") # ['Ford', 'Mercedez', 'BMW', 'Volvo']


sorted(['cat', 'dog', 'cheetah', 'rhino', 'bear'], reverse=True) #descending

#----sets
a = set([1,2,3,4])
a.add(6)

#slicing
a = [1,2,3,4,5,6]
a[start:stop]  # items start through stop-1  a[1:3]  gives [2,3]  one less from stop
a[start:]      # items start through the rest of the array
a[:stop]       # items from the beginning through stop-1
a[:]           # a copy of the whole array   like a.copy()

a[start:stop:step] # start through not past stop, by step a[0:5:2]  gives [1, 3, 5]

a[-1]    # last item in the array
a[-2:]   # last two items in the array
a[:-2]   # everything except the last two items

a[::-1]    # all items in the array, reversed
a[1::-1]   # the first two items, reversed
a[:-3:-1]  # the last two items, reversed
a[-3::-1]  # everything except the last two items, reversed

#--dic
cowboy = {'age': 32, 'horse': 'mustang', 'hat_size': 'large'}
if 'name' in cowboy:
    name = cowboy['name']
name = cowboy.get('name', 'The Man with No Name')

from collections import defaultdict
student_grades = defaultdict(list)
for name, grade in grades:
    student_grades[name].append(grade)


from collections import Counter
words = "if there was there was but if \
... there was not there was not".split()
counts = Counter(words)
counts
Counter({'if': 2, 'there': 4, 'was': 4, 'not': 2, 'but': 1})
counts.most_common(2)
[('there', 4), ('was', 4)]


#---- match

#----- Date

from datetime import datetime
today = datetime.now()
print(today) #2022-10-20 12:21:23.209619
today.year
today.month
today.day
graduation_day = datetime(2023, 8, 11, 0, 0,0)
days_left = abs(graduation_day - today)
#formating
today.strftime("%H:%M:%S %B %d %Y")
print(datetime.strptime('26/5/2020', '%d/%m/%Y'))


#----functional 
numbers = [4, 2, 1, 6, 9, 7]
def square(x):
     return x*x
list(map(square, numbers)) #note map returns reference not list

[square(x) for x in numbers]

def is_odd(x):
    return bool(x % 2)
list(filter(is_odd, numbers))



#-----debuging instead of print
breakpoint()

#--- character code
ord('a')

# prefix and postfix sum
def prefix(arr):
    res = []
    sum = 0
    for no in arr:
        sum += no
        res.append(sum)
    return res


def postfix(arr):
    res = []
    sum = 0
    for i in range(len(arr) - 1, -1, -1):
        sum += arr[i]
        res = [sum] + res
    return res

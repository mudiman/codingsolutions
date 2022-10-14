# /**
#  * Regex
#  *  search
#  *  return match
#  *  replace
#  *  split
#  *  extract
#  */

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

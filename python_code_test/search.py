import re

# xx = "guru99,education is fun"
# r1 = re.findall(r"^\w+",xx)
# print(r1)

# xx = "guru99,education is fun"
# r1 = re.findall(r"^\w+", xx)
# print((re.split(r'\s','we are splitting the words')))
# print((re.split(r's','split the words')))

# list = ["guru99 get", "guru99 give", "guru Selenium"]
# for element in list:
#     z = re.match("(g\w+)\W(g\w+)", element)
# if z:
    # print((z.groups()))
    
# Find last
# text = 'software testing is software fun?'
# mat = re.search('software', text)
# print(mat.start(), mat.end())

# Find all
# text = 'software testing is software fun?'
# mat = re.findall('software', text) # no indexes
# print(mat)

# Find all inter
# text = 'software testing is software fun?'
# mat = re.finditer('software', text)
# for m in mat:
#     print(m)

# replace
print(re.sub(r'testing', 'tt', 'software testing is software testing fun?'))

# abc = 'guru99@google.com, careerguru99@hotmail.com, users@yahoomail.com'
# emails = re.findall(r'[\w\.-]+@[\w\.-]+', abc)
# for email in emails:
#     print(email)
from typing import List


def solution(morsecode: str) -> List[str]:
    """ Plan iteration 1
    I will loop over morse code string and i will keep track of current and last character
    if it matches double dot i will append the string to my answer list of combination
    As i need to append the replace and the rest of string i will be using python array substring feature
    """

    # result = []
    # code = "--"
    # for i in range(1, len(morsecode)):
    #     if ((morsecode[i-1] + morsecode[i]) == ".."):
    #         result.append(morsecode[:i-1] + code + morsecode[i:])
    # return result

    """Plan iteration 2
    Last time solution seems fine just that it was print extra character
    This is because i am not exclude the second character as morse code has two character
    """

    result = []
    code = "--"
    for i in range(1, len(morsecode)):
        if ((morsecode[i-1] + morsecode[i]) == ".."):
            result.append(morsecode[:i-1] + code + morsecode[i+1:])
    return result


"""Testing iteration 1
Test case produce below result which has extra character
['--...', '.--..', '..--.']
"""

"""Testing iteration 2
Test case produce below result which has extra character
['--...', '.--..', '..--.']
"""

print(solution("...."))
print(solution("..."))
print(solution(".."))
print(solution("."))

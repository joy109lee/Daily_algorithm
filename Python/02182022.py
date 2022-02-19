"""
There is a secret string which is unknown to you. Given a collection of random triplets from the string, recover the original string.

A triplet here is defined as a sequence of three letters such that each letter occurs somewhere before the next in the given string. "whi" is a triplet for the string "whatisup".

As a simplification, you may assume that no letter occurs more than once in the secret string.

You can assume nothing about the triplets given to you other than that they are valid triplets and 
that they contain sufficient information to deduce the original string. In particular, this means that 
the secret string will never contain letters that do not occur in one of the triplets given to you.
"""


def recoverSecret(triplets):
    'triplets is a list of triplets from the secrent string. Return the string.'
    list = []
    for arr in triplets:
        for i in range(3):
            if arr[i] not in list:
                list.append(i)

    for arr in triplets:
        for i in range(2):
            if list.index(arr[i]) > list.index(arr[i+1]):
                list.remove(arr[i])
                list.append(arr[i])

    return list.join("")


secret = "whatisup"
triplets = [
    ['t', 'u', 'p'],
    ['w', 'h', 'i'],
    ['t', 's', 'u'],
    ['a', 't', 's'],
    ['h', 'a', 'p'],
    ['t', 'i', 's'],
    ['w', 'h', 's']
]

print((recoverSecret(triplets), secret))

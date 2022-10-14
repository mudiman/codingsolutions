const lengthOfLongestSubstring = function (s) {
  let seen = {}
  let left = index = longest = 0;

  let iterator = s[Symbol.iterator]()
  let data = iterator.next();

  while (!data.done) {
    const val = data.value;
    if (seen.hasOwnProperty(val)) {
      longest = Math.max(longest, index - left + 1)
      left = index;
      seen = {[val] : index};
    } else { //not seen
      seen[val] = index;
    }
    longest = Math.max(longest, index - left + 1)
    index++;
    data = iterator.next()
  }
  return longest;
}
console.info(lengthOfLongestSubstring('abcdaefbcz'))
console.info(lengthOfLongestSubstring('a'))
console.info(lengthOfLongestSubstring(''))
console.info(lengthOfLongestSubstring('abc'))
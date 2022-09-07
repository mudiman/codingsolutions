# A Movie Title Case Exercise in JavaScript

Create a function that converts a string into title case:

- Every word should be capitalized (first letter in uppercase, and the rest in lowercase).
- Except for words that are considered a minor word, these should be in lowercase.
- The first word should always be capitalized.

The minor words can be given as the second argument using a string with minor words separated by spaces, and should be used independent of casing.

## Examples

```
titleCase('a clash of KINGS', 'a an the of'); // 'A Clash of Kings'
titleCase('THE WIND IN THE WILLOWS', 'The In'); // 'The Wind in the Willows'
titleCase('the quick brown fox'); // 'The Quick Brown Fox'
```

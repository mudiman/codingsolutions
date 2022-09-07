//https://codesandbox.io/s/nn-debug-interview-forked-uev17r?file=/__tests__/index.test.js:613-632 
const capitalize = (word) => {
    return word.charAt(0).toUpperCase() + word.slice(1).toLowerCase();
};

const titleCase = (input, exclusion) => {
    let exclusions = [];
    if (exclusion) {
        exclusions = exclusion.split(' ').map((w) => w.toLowerCase());
    }
    return input
        .split(' ')
        .map((word, index) => {
            if (exclusions.includes(word.toLowerCase())) {
                if (index === 0) {
                    return capitalize(word);
                }
                return word.toLowerCase();
            }
            return capitalize(word);
        })
        .join(' ');
};

console.info(titleCase('THE WIND IN THE WILLOWS', 'The In'))
console.info(titleCase('a clash of KINGS', 'a an the of'))
console.info(titleCase('the quick brown fox'))

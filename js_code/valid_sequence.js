//https://www.algoexpert.io/questions/validate-subsequence

function isValidSubsequence(array, sequence) {
    const indexMap = {}
    let oldseq = -1;
    for (const [key, value] of Object.entries(sequence)) {
        if (array.indexOf(value) > -1 && array.length != 0) {
            const seq = array.indexOf(value)
            array = array.slice((seq + 1))
            continue;
        }
        return false;
    }
    return true;
}

console.info(isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [5, 1, 22, 25, 6, -1, 8, 10]))
console.info(isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [5, 1, 22, 22, 25, 6, -1, 8, 10]))
console.info(isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [1, 6, -1, 10]))
console.info(isValidSubsequence([1, 1, 1, 1, 1], [1, 1, 1]))
console.info(isValidSubsequence([1, 1, 6, 1], [1, 1, 1, 6]))
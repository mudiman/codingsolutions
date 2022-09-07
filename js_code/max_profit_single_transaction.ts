//https://www.algoexpert.io/questions/max-profit-with-k-transactions

function maxProfitWithKTransactions(prices: number[], k: number) {
    let [max, localmax]: number[] = [0, 0]
    let min: number = prices[0]
    let maxStack = []  // this is to keep track of all max so far
    for (let [key, value] of Object.entries(prices)) {
        if (key == '0') continue;
        if (min < value) {
            // keep updating local max
            localmax = value - min;
            if (Math.max(localmax, max) != localmax) maxStack.push(localmax)
            // local max is generator then  max then its out new max
            max = Math.max(localmax, max)
        }
        // this will pic new min
        min = Math.min(min, value)
    }
    maxStack.push(max)
    while (k < maxStack.length && maxStack.length > 1) {
        maxStack.splice(maxStack.indexOf(Math.min(...maxStack)), 1)
        k--
    }
    return maxStack.reduce((a, b) => a + b, 0);
}

console.info(
    maxProfitWithKTransactions([5, 11, 3, 50, 40, 90], 2)
)

// console.info(
//     maxProfitWithKTransactions([5, 11, 3, 50, 60, 90], 3)
// )

// console.info(
//     maxProfitWithKTransactions([3, 2, 5, 7, 1, 3, 7], 1)
// )

// console.info(
//     maxProfitWithKTransactions([5, 11, 3, 50, 60, 90], 2)
// )
// console.info(
//     maxProfitWithKTransactions([1, 10], 3)
// )

// [5, 11, 3, 50, 60, 90]  93
// [5, 11, 3, 50, 60, 90, 1]  93
// [5, 11, 12, 50, 60, 93]     85, 87
// 5   93  =  88
// 5   11 = 6   12  93 = 81   97

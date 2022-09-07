//https://www.algoexpert.io/questions/max-profit-with-k-transactions

function maxProfitWithKTransactions(prices: number[], k: number) {
    let profileMap = {}
    let [max, localmax]: number[] = [0, 0]
    let min: number = prices[0]
    let maxStack = []
    for (let t = 1; t <= k; t++) {
        // for (let d = 1; d < prices.length; d++) {
            
        // }
        for (let [key, value] of Object.entries(prices)) {
            if (key == '0') continue;
            if (min < value) {
                localmax = value - min;
                max = Math.max(localmax, max)
            }
            min = Math.min(min, value)
            profileMap[key] = max
        }
    }
    return -1;
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

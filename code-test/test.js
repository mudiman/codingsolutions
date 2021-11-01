// you can write to stdout for debugging purposes, e.g.
// console.log('this is a debug message');

function updateOneDigit(no, K) {
    const temp = 9 - no;
    if (temp < K) {
        K -= temp;
        no += temp
    } else if (temp > K) {
        no += K
        K -= K
    }
    return [no, K];
}
function solution(N, K) {
    let arr = N.toString().split("").map((item) => parseInt(item))
    for (const [key, value] of Object.entries(arr)) {
        [arr[key], K] = updateOneDigit(value, K);
        if (K <= 0) {
            break;
        }
    }
    return parseInt(arr.join(""))
}


console.info(solution(911, 999));


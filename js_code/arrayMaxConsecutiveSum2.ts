//https://app.codesignal.com/interview-practice/task/dQD4TCunke2JQ98rj/description
//import { describe, expect, test } from '@jest/globals';


function prefixSum(arr: number[]): number[] {
    let sum = 0;
    let res: number[] = [];
    arr.forEach((value: number, index: number) => {
        sum += value
        res.push(sum)
    })
    return res;
}

function solution(inputArray: number[]): number {
    let max = inputArray[0];
    let prefSum = prefixSum(inputArray) 
    for (let i = 0; i < inputArray.length; i++) {
        for (let j = i + 1; j < inputArray.length - 1; j++) {
            const sum = prefSum[j] - prefSum[i]
            max = Math.max(sum, max)
        }
    }
    return max
}

console.info(solution([11, -2, 1, -4, 5, -3, 2, 2, 2]))
//console.info(solution([-3, -2, -1, -4]))
//console.info(solution([1, -2, 3, -4, 5, -3, 2, 2, 2]))
//console.info(solution([-2, 2, 5, -11, 6]))

// test('adds 1 + 2 to equal 3', () => {
//   expect(solution([-2, 2, 5, -11, 6])).toBe(7);
// });
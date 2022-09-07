//https://app.codesignal.com/interview-practice/task/4MoqQLaw22nrzXbgs/description

import { describe, expect, test } from '@jest/globals';

//https://app.codesignal.com/interview-practice/task/4MoqQLaw22nrzXbgs/description

function mod(a: number, m: number): number {
  let data = a % m;
  return data >= 0 ? data : data + m;
}

function sumToK(arr: number[]): number[] {
  let sum = 0;
  let res: number[] = [];
  arr.forEach((value: number, index: number) => {
      sum += value
      res.push(sum)
  })
  return res;
}

function solution(nums: number[], queries: number[][]): number {
  let res = 0
  const sumToIndex = sumToK(nums);

  for (let query of queries) {
    if (query[0] == 0) {
      res += sumToIndex[query[1]]
    } else {
      res += (sumToIndex[query[1]] - sumToIndex[query[0] - 1])
    }
  }
  return mod(res, 1000000007)
}


// test('adds 1 + 2 to equal 3', () => {
//   expect(solution([3, 0, -2, 6, -3, 2], [[0, 2], [2, 5], [0, 5]])).toBe(10);
// });

console.info(solution([3, 0, -2, 6, -3, 2], [[0, 2], [2, 5], [0, 5]]))
console.info(solution([-1000], [[0, 0]]))
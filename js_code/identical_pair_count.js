// https://www.geeksforgeeks.org/maximum-product-subarray/
function solution(arr)
{
    let n = arr.length;
    let map = {};
    let pair = 0
    for (let i = 0; i < n; i++)
    {
        v = arr[i]
        if (!map[v]) {
            map[v] = 1
        } else {
            pair += map[v]
            map[v]++
        }
        
    }
    return pair;
}
T = [3,5,6,3,3,5,3]
console.info(solution(T))
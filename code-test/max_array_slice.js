// https://www.geeksforgeeks.org/maximum-product-subarray/
function solution(arr)
{
    let max_ending_here = 1;
    let n = arr.length;
    let max_so_far = 0;

    for (let i = 0; i < n; i++)
    {
        if (arr[i] >= 0 && arr[i] < 1) {
            max_ending_here = 1;
        }
        else {
            max_ending_here = max_ending_here * arr[i];
        }

        if (max_so_far < max_ending_here)
            max_so_far = max_ending_here;
    }

    return max_so_far;
}
T = [1.0,0.1,-1.0,-7.0,3.0,-5.0,-2.5,0.0,1.0]
console.info(solution(T))
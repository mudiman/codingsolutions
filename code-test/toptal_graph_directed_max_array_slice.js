// https://www.geeksforgeeks.org/maximum-product-subarray/
function solution(arr)
{
    // max positive product
    // ending at the current position
    let max_ending_here = 1;
    let n = arr.length;
 
    // min negative product ending
    // at the current position
    let min_ending_here = 1;
 
    // Initialize overall max product
    let max_so_far = 0;
    let flag = 0;
    /* Traverse through the array.
    Following values are
    maintained after the i'th iteration:
    max_ending_here is always 1 or
    some positive product ending with arr[i]
    min_ending_here is always 1 or
    some negative product ending with arr[i] */
    for (let i = 0; i < n; i++)
    {
        /* If this element is positive, update
        max_ending_here. Update min_ending_here only if
        min_ending_here is negative */
        if (arr[i] > 0)
        {
            max_ending_here = max_ending_here * arr[i];
            min_ending_here
                = Math.min(min_ending_here * arr[i], 1);
            flag = 1;
        }
 
        /* If this element is 0, then the maximum product
        cannot end here, make both max_ending_here and
        min_ending_here 0
        Assumption: Output is alway greater than or equal
                    to 1. */
        else if (arr[i] == 0) {
            max_ending_here = 1;
            min_ending_here = 1;
        }
 
        /* If element is negative. This is tricky
         max_ending_here can either be 1 or positive.
         min_ending_here can either be 1 or negative.
         next max_ending_here will always be prev.
         min_ending_here * arr[i] ,next min_ending_here
         will be 1 if prev max_ending_here is 1, otherwise
         next min_ending_here will be prev max_ending_here *
         arr[i] */
 
        else {
            let temp = max_ending_here;
            max_ending_here
                = Math.max(min_ending_here * arr[i], 1);
            min_ending_here = temp * arr[i];
        }
 
        // update max_so_far, if needed
        if (max_so_far < max_ending_here)
            max_so_far = max_ending_here;
    }
    if (flag == 0 && max_so_far == 0)
        return 0;
    return max_so_far;
}

T = [1.0,0.1,-1.0,-7.0,3.0,-5.0,-2.5,0.0,1.0]
console.info(solution(T))
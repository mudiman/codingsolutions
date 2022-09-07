
// function specialIntegerWithEqualNoLessGreater(nums: number[]): number {
//     nums.sort((a,b) => a - b)
//     const mid = Math.ceil(nums.length /2)
//     console.info(nums, mid)
//     for (let i = mid; i >= 0 ; i--) {
//         const endNos = (nums.length - i);
//         if (endNos <= nums[i] ) {
//             return endNos
//         }
//     }
//     return -1
// }

function specialIntegerWithEqualNoLessGreater(nums: number[]): number {
    nums.sort((a,b) => a - b)
    console.info(nums)
    for (let i = Math.max(...nums); i > 0 ; i--) {
        let j = nums.length - 1;
        for (; j > 0 ; j--) {
            if (nums[j] >= i) {
                continue;
            } else {
                break;
            }
        }
        if ((nums.length - 1 - j) == i) {
            return i
        }
    }
    return -1
}

console.info(specialIntegerWithEqualNoLessGreater([0,4,1,0,4]))
console.info(specialIntegerWithEqualNoLessGreater([1,2,3,4,5]))
console.info(specialIntegerWithEqualNoLessGreater([0,4,4,4,4]))

// 00144  2
// 12345  3
// 04444  4
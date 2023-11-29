from typing import List


class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        merge = []
        left = right = 0

        while left < len(nums1) and right < len(nums2):
            if nums1[left] <= nums2[right]:
                merge.append(nums1[left])
                left += 1
            elif nums1[left] > nums2[right]:
                merge.append(nums2[right])
                right += 1

        while left < len(nums1):
            merge.append(nums1[left])
            left += 1

        while right < len(nums2):
            merge.append(nums2[right])
            right += 1

        size = len(merge)
        result = 0
        if size % 2 != 0:
            result = merge[(size//2)]
        else:
            result = (merge[((size//2) - 1)] + merge[(((size + 1)//2))]) / 2
        return float("{:.5f}".format(result))


print(Solution().findMedianSortedArrays([0, 0], [0.0]))
print(Solution().findMedianSortedArrays([1, 3], [2]))
print(Solution().findMedianSortedArrays([1, 2], [3, 4]))

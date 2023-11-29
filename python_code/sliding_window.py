class Solution:
    def find_averages_of_subarrays(self, K, arr):
        result = []
        windowSum, windowStart = 0.0, 0
        for windowEnd in range(len(arr)):
            windowSum += arr[windowEnd]  # add the next element
            # slide the window, no need to slide if we've not hit the required window size of 'k'
            if windowEnd >= K - 1:
                result.append(windowSum / K)  # calculate the average
                windowSum -= arr[windowStart]  # subtract the element going out
                windowStart += 1  # slide the window ahead

        return result


def main():
    sol = Solution()
    result = sol.find_averages_of_subarrays(5, [1, 3, 2, 6, -1, 4, 1, 8, 2])
    print("Averages of subarrays of size K: " + str(result))


main()

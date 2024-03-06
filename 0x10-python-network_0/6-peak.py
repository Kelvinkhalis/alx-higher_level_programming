def find_peak(list_of_integers):
    """
    Finds a peak in an unsorted list of integers.

    Args:
        list_of_integers (List[int]): The input list of integers.

    Returns:
        int: The peak element.

    Note:
        There may be more than one peak in the list.
    """
    n = len(list_of_integers)
    left, right = 0, n - 1

    while left < right:
        mid = left + (right - left) // 2

        # Compare the middle element with its neighbors
        if list_of_integers[mid] > list_of_integers[mid + 1]:
            # If it's greater than the next element, search the left half
            right = mid
        else:
            # Otherwise, search the right half
            left = mid + 1

    return list_of_integers[left]

# Example usage
if __name__ == "__main__":
    nums = [1, 3, 20, 4, 1, 0]
    peak = find_peak(nums)
    print(f"Peak element: {peak}")


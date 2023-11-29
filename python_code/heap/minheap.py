def insert_min_heap(heap, value):
    """
    Add new node to heap.

    Args:
        arr (list): The list representing the min heap.
        value (int): The value to be inserted into the min heap.
    """
    n = len(heap)
    heap.append(value)

    index = n
    while index > 0 and value < heap[(index - 1) // 2]:
        heap[index] = heap[(index - 1) // 2]
        index = (index - 1) // 2

    heap[index] = value


def print_min_heap(arr):
    """
    Print the min heap.

    Args:
        arr (list): The list representing the min heap.
    """
    print("Min Heap:", arr)


if __name__ == "__main__":
    min_heap = []

    # Test case 1
    insert_min_heap(min_heap, 5)
    print_min_heap(min_heap)

    # Test case 2
    insert_min_heap(min_heap, 2)
    print_min_heap(min_heap)

    # Test case 3
    insert_min_heap(min_heap, 8)
    print_min_heap(min_heap)

    insert_min_heap(min_heap, 1)
    print_min_heap(min_heap)

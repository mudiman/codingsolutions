# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def traverse(self, node, nodes):
        if (node.left):
            self.traverse(node.left, nodes)
        nodes.append(node.val)
        if (node.right):
            self.traverse(node.right, nodes)
        return nodes
            
    def isValidBST(self, root: Optional[TreeNode]) -> bool:
        nodes = []
        self.traverse(root, nodes)
        queue = [root]
        lis = []
        parent = root
        while (len(queue) > 0):
            current = queue.pop(0)
            lis.append(current.val)
            if (current.left and not parent.val > current.left.val):
                return False
            if (current.right and not parent.val < current.right.val):
                return False
            if (current.left):
                queue.append(current.left)
            if (current.right):
                queue.append(current.right)
        print(lis)
        return True
            
                
        
        
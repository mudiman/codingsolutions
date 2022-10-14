
// Input : 
// 1
// /   \
// 2     3
// / \   / \
// 4   5 6   7
//   / \
//  9  8
// Output :
// Sum = 4 + 9 = 24

class Node {
    constructor(data) {
        this.left = null;
        this.right = null;
        this.data = data;
    }
}

//let sum;
var parentRight = false;
// utility function which calculates
// sum of all leaf nodes
function leafSum(root) {
    let sum = 0;
    if (root == null)
        return sum;

    // add root data to sum if 
    // root is a leaf node
    if (root.left == null && root.right == null && parentRight == false)
        sum += root.data;

    // propagate recursively in left
    // and right subtree
    parentRight = false;
    sum += leafSum(root.left);
    parentRight = true;
    sum += leafSum(root.right);
    return sum;
}

function ifNodeExists(node, key) {
    if (node == null)
        return false;

    if (node.data == key)
        return true;

    // then recur on left subtree /
    var res1 = ifNodeExists(node.left, key);

    // node found, no need to look further
    if (res1)
        return true;

    // node is not found in left,
    // so recur on right subtree /
    var res2 = ifNodeExists(node.right, key);

    return res2;
}

// construct binary tree
let root = new Node(1);
root.left = new Node(2);
root.left.left = new Node(4);
root.left.right = new Node(5);
root.right = new Node(3);
root.right.right = new Node(7);
root.right.left = new Node(6);
root.right.left.left = new Node(9);
root.right.left.right = new Node(8);

// variable to store sum of leaf nodes
console.info(leafSum(root))

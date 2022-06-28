
// class Node{
//     constructor(data) {
//         this.data = data
//         this.children = []
//     }

//     add(data) {
//         this.children.push(new Node(data))
//     }
// }

// class Tree {
//     constructor() {
//         this.root = null
//     }
// }

// function traverseDFS(type) {
//     //if there is no root, return false
//     if (!this.root) {
//       return false;
//     }
//     //make a variable for tree values
//     const treeValues = [];
//     //current values always starts at root
//     let current = this.root;

//     //helper methods go here
    
//     //switch statment to select proper order and start recursive function calls
//     preOrderHelper(current);
//     //return array
//     return treeValues;
//  }

//  const preOrderHelper = node => {
//     //push value onto array FIRST
//     treeValues.push(node.value);
//     //recursively call function on all node children
//     if (node.children.length !== 0) {
//       node.children.forEach(child => {
//         preOrderHelper(child);
//       });
//     }
//     return true;
// };



function solution(T) {
    tree = {}
    T.forEach((v, i) => {
        if (!tree[v]) tree[v] = [];
        if (v != i) tree[v].push(i)
    })
    var max = 1
    function traverseDFS(tree, start, odd, depth = 0) {
        if (odd > 1) return max
        if (depth > max) max = depth
        if (!tree[start]) return max
        tree[start].forEach((v, i) => {
            if (v % 2 == 1) odd++
            return traverseDFS(tree, v, odd, depth + 1)
        })
    }
    traverseDFS(tree, 0, 0, 1)
    return max
}

//T = [0,9,0,2,6,8,0,8,3,0]
T = [0,0,0,1,6,1,0,0]
console.info(solution(T))
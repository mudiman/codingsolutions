//https://www.algoexpert.io/questions/river-sizes
function riverSizes(matrix) {
    let rivers = [];
    const tree = {
        matrix: matrix,
        height: matrix.length,
        width: matrix[0].length,
    };
    for (const y in matrix) {
        for (const x in matrix[y]) {
            if (matrix[y][x] === 1) {
                rivers.push(traverseNode(Number(x), Number(y), tree, 1));
            }
        }
    }
    return rivers;
}
function traverseNode(sx, sy, tree, size) {
    try {
        tree.matrix[sy][sx] = 0;
        //go right
        if (tree.width > (sx + 1) && tree.matrix[sy][sx + 1] === 1) {
            size = traverseNode(sx + 1, sy, tree, ++size);
        }
        //go down
        if (tree.height > (sy + 1) && tree.matrix[sy + 1][sx] === 1) {
            size = traverseNode(sx, sy + 1, tree, ++size);
        }
        //go left
        if ((sx - 1) >= 0 && tree.matrix[sy][sx - 1] === 1) {
            size = traverseNode(sx - 1, sy, tree, ++size);
        }
        //go up
        if ((sy - 1) >= 0 && tree.matrix[sy - 1][sx] === 1) {
            size = traverseNode(sx, sy - 1, tree, ++size);
        }
    }
    catch (err) {
    }
    return size;
}
console.info(riverSizes([
    [1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0],
    [1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0],
    [0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1],
    [1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0],
    [1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1]
]));
// console.info(riverSizes(
//   [
//     [1, 0, 0, 1, 0],
//     [1, 0, 1, 0, 0],
//     [0, 0, 1, 0, 1],
//     [1, 0, 1, 0, 1],
//     [1, 0, 1, 1, 0]
//   ]
// ))
//# sourceMappingURL=river_sizes_matrix.js.map
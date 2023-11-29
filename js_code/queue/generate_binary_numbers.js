function generateBinaryNumbers(n) {
    let queue = ["1"];
    let res = [];

    while (n--) {
        let s1 = queue.shift();
        res.push(s1);

        let s2 = s1;
        queue.push(s1 + "0");
        queue.push(s2 + "1");
    }

    return res;
}

// Testing
// console.log(generateBinaryNumbers(2));
// console.log(generateBinaryNumbers(3));
console.log(generateBinaryNumbers(5));

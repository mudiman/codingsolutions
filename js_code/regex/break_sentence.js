
// const aliceExcerpt = 'The Caterpillar and Alice looked at each other';
// const regexpWithoutE = /\b[a-df-z]+\b/ig;
// console.log(aliceExcerpt.match(regexpWithoutE));
// // expected output: Array ["and", "at"]

// const imageDescription = 'This image has a resolution of 1440×900 pixels.';
// const regexpSize = /([0-9]+)×([0-9]+)/;
// const match = imageDescription.match(regexpSize);
// console.log(`Width: ${match[1]} / Height: ${match[2]}.`);
// // expected output: "Width: 1440 / Height: 900."

function solution(str) {
    const sentences = str.split(/[\.\?\!]+/);
    let words = [];
    sentences.forEach((item) => {
        const temp = item.split(/[ ]+|\n+/);
        words.push(temp.length);
    });
    return Math.max(...words);
}

console.info(solution("We are  test. This Coder  ?"))

// const obj = { a: "aaa", b: "bbb", c: "ccc", d: "ddd" };

// for (const [key, value] of Object.entries(object1)) {
//     console.log(`${key}: ${value}`);
//   }
  
// Object.assign({}, ...Object.entries(obj).map(([a,b]) => ({ [b]: a })))

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

const obj = { a: "aaa", b: "bbb", c: "ccc", d: "ddd" };

for (const [key, value] of Object.entries(object1)) {
    console.log(`${key}: ${value}`);
  }
  
Object.assign({}, ...Object.entries(obj).map(([a,b]) => ({ [b]: a })))
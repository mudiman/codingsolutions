const sentences = str.split(/[\.\?\!]+/);

sentences.forEach((item) => {
    const temp = item.split(/[ ]+|\n+/);
    words.push(temp.length);
});

let salaries = {
    "John": 100,
    "Pete": 300,
    "Mary": 250
  };

  const obj = { a: "aaa", b: "bbb", c: "ccc", d: "ddd" };

for (const [key, value] of Object.entries(object1)) {
    console.log(`${key}: ${value}`);
  }

function sumSalaries(salaries) {
    return Object.values(salaries).reduce((a, b) => a + b, 0) // 650
  }
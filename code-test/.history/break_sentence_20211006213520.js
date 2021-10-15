
function solution(str) {
    const sentences = str.split(/[\.\?\!]+/);
    let words = [];
    sentences.forEach((item) => {
        const temp = item.split(/[ ]+|\n+/);
        words.push(temp.length);
    });
    return temp;
}

solution("We are  test. This Coder  ?")
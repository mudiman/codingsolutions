
function solution(str) {
    const sentences = str.split(/[\.\?\!]+/);
    let words = [];
    sentences.forEach((item) => {
        const temp = item.split(/ /);
        words.push(Math.sum(temp));
    });
    return temp;
}

solution("We are  test. This Coder  ?")
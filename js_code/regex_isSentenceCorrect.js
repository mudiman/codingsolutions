function solution(sentence) {
    var re = /^[A-Z]([^.!?])*[.!?]$/;
    return re.test(sentence);
}
console.info("teet");
console.info(solution("This is an example of *correct* sentence."));

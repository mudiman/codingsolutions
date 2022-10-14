function solution(s, n) {
    var re = new RegExp("\\b(?:(?:[a-zA-Z- ]*d+[a-zA-Z ]*s*){3})(?:[a-zA-Z-]*(?:[0]*)(d+)[a-zA-Z ]*s*)\\b");
    return re.exec(s)[1];
}
//[^1-9]*[1-9]\d*[^1-9]*"*(n-1)+"[^1-9]*([1-9]\d*)[^1-9]*
console.info(solution("8one 003number 201numbers li-000233le number444", 4));
//(?:[a-z\-]*\d+\w*){3}(([a-z\-]*)(\d+)(?:[a-z]*))

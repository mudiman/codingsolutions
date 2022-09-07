function solution(inputString: string): string {
    let result = []
    for (let i = 0; i < inputString.length; i++) {
        let charCode = inputString[i].charCodeAt(0);
        if (charCode == 122) charCode = 96
        result.push(String.fromCharCode(charCode + 1))
    }
    return result.join('');
}


console.info(solution("crazy"))
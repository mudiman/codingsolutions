//https://app.codesignal.com/arcade/intro/level-6/6Wv4WsrsMJ8Y2Fwno

function solution(name: string): boolean {
    return name.search(/\W+/g) == -1 && name[0].search(/[a-zA-Z_]/) != -1;
}

console.info(solution('var_1__Int'))
console.info(solution('qq-q'))
console.info(solution('2qqq'))
console.info(solution('qq2q'))
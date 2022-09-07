function solution(sentence) {
  return sentence.replace(/(\w+) (\w+)/g, "$2 $1");
}

console.info(solution("CodeFight On"))

console.info(solution("How are you today guys"))
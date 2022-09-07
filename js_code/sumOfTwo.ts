function solution(a: number[], b: number[], v: number): boolean {
    for (let no of a) {
        if (b.indexOf(Math.abs(v - no)) > -1) return true
    }
    return false;
}

console.info(solution([1, 2, 3], [10, 20, 30, 40], 42))
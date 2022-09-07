function solution(a: number[]): boolean {
    return a.length == (new Set(a)).size
}


console.info(solution([1, 2, 3]))
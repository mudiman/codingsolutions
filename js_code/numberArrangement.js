function solution(N, arr) {
    let b = [];
    for (const [key, i] of Object.entries(arr)) {
        if (i == N && key != arr.length - 1) {
            
                console.info(N);
                N--;
            
        } else {
            if (key != arr.length - 1)
                console.info("NO")
            b.push(i)
        }
    }
    b.sort((a, b) => b - a);
    console.info(b.join(" "))
    return b
}
T = [1.0, 0.1, -1.0, -7.0, 3.0, -5.0, -2.5, 0.0, 1.0]
console.info(solution(3, [3, 1, 2]))
function solution(morscode) {
    let res = []

    for (let i = 0; i < morscode.length; i++) {
        const pref = morscode.slice(0, i);
        let remain = morscode.slice(i)
        console.info(pref," | " ,remain)
        if (remain.search("..") > - 1) {
            remain = remain.replace("..", "--")
            res.push(pref + remain)
        }
    }
    return res;
}

console.info(solution("...."));
console.info(solution("....."));
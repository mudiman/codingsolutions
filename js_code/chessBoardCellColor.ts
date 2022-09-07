//https://app.codesignal.com/arcade/intro/level-6/t97bpjfrMDZH8GJhi
function solution(cell1: string, cell2: string): boolean {
    return getColor(cell1) == getColor(cell2)   
}

function getColor(cell: string): boolean {
    const [r, c] = cell.split('')
    if ((r.charCodeAt(0) % 2) != 0 
        && (parseInt(c) % 2 != 0))
        return true;
    if ((r.charCodeAt(0) % 2) == 0 
        && (parseInt(c) % 2 == 0))
        return true;   
    return false;
}

console.info(solution("A1", "C3"))

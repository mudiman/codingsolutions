// contains(l, r: string, ip: string) bool {}
// [10.20.30.40; 10.20.30.50]
// 10.20.30.45: true
// 10.20.30.75: false

//10.20.30.45

function checkIpAdress(l, r, ip) {
    const left = l.split(".").map(parseInt(item))
    const right = r.split(".").map(parseInt(item))
    const ipAddr = ip.split(".").map(parseInt(item))

    for (const [key, value] of Object.entries(ipAddr)) {
        if ((value < left[key])
            || (value > right[key])) {
            return false;
        }
    }
    return true;
}


console.info(checkIpAdress("10.20.30.40", " 10.20.30.50", "10.20.30.45"))
console.info(checkIpAdress("10.20.30.40", " 10.20.30.50", "10.20.30.75"))

console.info(checkIpAdress("10.20.30.40", " 10.20.30.50", "10.20.21.75"))

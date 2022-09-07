const internal = require("stream");

function perfectSquare(N, NArray)
{
    //this is default OUTPUT. You can change it.
    var result = 0;
    
    //write your Logic here:
    for (let i of NArray) {
        if ( Math.sqrt(i)  == parseInt(Math.sqrt(i))) {
            result += i;
        }
    }
    
    return result;
}

console.info(perfectSquare(7, [1 ,3 ,36, 40, 43, 54, 64]))

var intToRoman = function(num) {
    let romanNum = [
        {number: 1000, roman:'M'},
        {number: 900, roman:'CM'},
        {number: 500, roman:'D'}, 
        {number: 400, roman:'CD'},
        {number: 100, roman:'C'},
        {number: 90, roman:'XC'},
        {number: 50, roman:"L"},
        {number: 40, roman:"XL"},
        {number: 10, roman:"X"},
        {number: 9, roman:"IX"},
        {number: 5, roman:"V"},
        {number: 4, roman:"IV"},
        {number: 1, roman:'I'}
    ]
    
    let letter='';
    for(let i=0; i<romanNum.length; i++){
        if(num>=romanNum[i].number){
            letter=letter+romanNum[i].roman;
            num=num-romanNum[i].number;
            i--
        }
    }     
    return letter;
};

console.info(intToRoman(2999))
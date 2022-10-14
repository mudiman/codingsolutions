//rege/ string formatter/ loops/ functiona map reduce filter / match exp/ date manupalte
//https://www.javascripttutorial.net/es6/javascript-array-from/
/**
 * Regex
 *  search
 *  return match
 *  replace
 *  split
 *  extract
 */

let str = "We are  test. This test Coder  ?";
const regexp = /test/g;
regexp.test("test")  //tue of alse
console.info(str.search(/test/i))  // for checking -1 if no match else index of match
//return all match note i mean case insenstive and g means global which effects out as it returns all matches with no index
console.info(str.match(/test/ig)) 

// for loop all match note regex should have g(global flag) like /test/g
while ((match = regexp.exec(str)) !== null) {
    console.log(`Found ${match[0]} start=${match.index} end=${regexp.lastIndex}.`);
}

//https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions
const match = [...str.matchAll(/test/g)] //matchAll gives iterative hence convert to arr each item ["test", index: 0, groups: ,input]
console.info(str.replace(/test/ig, 'aaa'))  // i case insenstive g means all recursive

console.info(str.split(/test/))

let str1 = "2006-06-06"
const [d, m, y] = str1.split(/-/g);
console.info(d, m, y)


"Hi there".replace(/(\w+) (\w+)/g, "$2 $1"); // outputs "there hi"

//--------------string formatter
const greeting = 'Hello';
const who = 'World';
const message = `${greeting}, ${who}!`;

var num = 5.1234;
console.info(num.toFixed(2))

console.info(String(num).padStart(10, '0'))
console.info(String(num).padEnd(10, '0'))
console.info(String(num).padStart(10, ' '))


//------------loops
// for - loops through a block of code a number of times  for (let i = 0; i < 5; i++)
// for/in - loops through the properties of an object
// for/of - loops through the values of an iterable object
// while - loops through a block of code while a specified condition is true
// do/while - also loops through a block of code while a specified condition is true

const arr = { "a": 1, "b": 2, "c": 3 }
for (key in arr) { console.info(key) }
for (const [key, value] of Object.entries(arr)) {
    console.log(key, value);
}

Object.keys(arr).forEach(function (key) {
    console.log(key, arr[key]);
});
Object.values(arr).forEach(function (v) {
    console.log(v);
});

// ---- array methods
let numbers = [30, 40];
numbers.pop() // [30];
numbers.push(50) // [30, 40 ,50];
numbers.unshift(20); // [20, 30, 40]
numbers.shift(); // [30]

function arrayFromArgs() {
    return Array.prototype.slice.call(arguments); //arguments will prove all pass arguments
}
var fruits = arrayFromArgs('Apple', 'Orange', 'Banana');


const numbers2 = [1, 2, [3, 4, 5, [6, 7]]];
const flatNumbers = numbers2.flat(2); //[1, 2, 3, 4, 5, 6, 7] if dont know level pass infinity 

//------------find fitler map reduce/ functiional porgramming

const arr2 = [1, 2, 3, 4, 5, 6];

console.info(arr2.find((item) => item == 3))  //return 3
console.info(arr2.findIndex((item) => item == 3))  //return 3
arr2.indexOf(3)
arr2.lastIndexOf(3)
[NaN].indexOf(NaN); // -1  so use includes
[NaN].includes(NaN); // true

console.info(arr2.filter((item) => !(item % 2)))  //event

console.info(arr2.map((item) => Math.pow(item, 2)))  //power 2

console.info(arr2.reduce((carry, item) => carry + item, 0))  //sum reducer

arr2.every( e  => e > 0); // checks all elements pass the test


//------------match switch



//------ date

const dateStr = "1985-06-12"
//const dateStr = "1985/06/06"
let date = new Date(dateStr);
let date1 = new Date(dateStr);
console.info(date.getUTCDate(), date.getUTCMonth(), date.getFullYear())

date1.setDate(date.getDate() + 5)   // add 5 days note needs to be set and printed separatly
console.info(date1.getDate())

// NOTE  getDate is actually day of month   getDay is day in week
let str1 = '02/01/22';
let date = Date.parse(date)
console.info(date.getDay())

// char to ascci and vise versa
'a'.charCodeAt(0);  //96
// z is  122  and a is 96
String.fromCharCode(122)  //z

//-------------sorting js buildin method sort as string so not good for number
const points = [40, 100, 1, 5, 25, 10];
points.sort(function (a, b) { return a - b });
//desebgub
const points = [40, 100, 1, 5, 25, 10];
points.sort(function (a, b) { return b - a });
//https://www.w3schools.com/js/js_array_sort.asp


// ------array slicing

var array = [1, 2, 3, 4, 5];
console.log(array.splice(2));  //original array effected while slice doesnt


// ------------Helpers
//sort
[1,3,4,5,1].sort((a,b) => a - b)
// Sum in js
[1,2,3,4].reduce((a, b) => a + b, 0)
// Modulus of number a with modulus m
function mod(a: number, m: number): number {
    let data = a % m;
    return data >= 0 ? data : data + m;
}
// Prefix sum
function prefixSum(arr: number[]): number[] {
    let sum = 0;
    let res: number[] = [];
    arr.forEach((value: number, index: number) => {
        sum += value
        res.push(sum)
    })
    return res;
}
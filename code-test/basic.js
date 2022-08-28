//rege/ string formatter/ loops/ functiona map reduce filter / match exp/ date manupalte

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
//console.info(str.search(/test/i))
//console.info(str.match(/test/ig)) //return all match

// while ((match = regexp.exec(str)) !== null) {
//     console.log(`Found ${match[0]} start=${match.index} end=${regexp.lastIndex}.`);
// }

// const match = [...str.matchAll(/test/g)] //matchAll gives iterative hence convert to arr each item ["test", index: 0, groups: ,input]
//console.info(str.replace(/test/ig, 'aaa'))  // i case insenstive g means all recursive

//console.info(str.split(/test/))

// let str1 = "2006-06-06"
// const [d, m, y] = str1.split(/-/g);
// console.info(d,m,y)


//--------------string formatter
// const greeting = 'Hello';
// const who = 'World';
// const message = `${greeting}, ${who}!`;

// var num = 5.1234;
// console.info(num.toFixed(2))

// console.info(String(num).padStart(10, '0'))
// console.info(String(num).padEnd(10, '0'))
// console.info(String(num).padStart(10, ' '))


//------------loops
// for - loops through a block of code a number of times  for (let i = 0; i < 5; i++)
// for/in - loops through the properties of an object
// for/of - loops through the values of an iterable object
// while - loops through a block of code while a specified condition is true
// do/while - also loops through a block of code while a specified condition is true

//const arr = { "a": 1, "b": 2, "c": 3 }
// for (key in arr) { console.info(key) }
// for (const [key, value] of Object.entries(arr)) {
//     console.log(key, value);
// }

// Object.keys(arr).forEach(function (key) {
//     console.log(key, arr[key]);
// });
// Object.values(arr).forEach(function (v) {
//     console.log(v);
// });

//------------fitler map reduce/ functiional porgramming

// const arr2 = [1, 2, 3, 4, 5, 6];

// console.info(arr2.filter((item) => !(item % 2)))  //event

// console.info(arr2.map((item) => Math.pow(item, 2)))  //power 2

// console.info(arr2.reduce((carry, item) => carry + item, 0))  //sum reducer


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
// let str1 = '02/01/22';
// let date = Date.parse(date)
// console.info(date.getDay())
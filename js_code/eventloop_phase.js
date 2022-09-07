function task1() {
    console.log('promise1 resolved');
}
function task2() {
    console.log('promise2 resolved');
    process.nextTick(task10);
}
function task3() {
    console.log('promise3 resolved');
}
function task4() {
    console.log('immediate 1');
}
function task5() {
    console.log('tick 1');
}
function task6() {
    console.log('tick 2');
}
function task7() {
    console.log('microtask 1');
}
function task8() {
    console.log('timeout');
}
function task9() {
    console.log('immediate 2');
}
function task10() {
    console.log('tick 3');
    queueMicrotask(task11);
}
function task11() {
    console.log('microtask 2');
}
console.info('init')
Promise.resolve().then(task1);
Promise.resolve().then(task2);
Promise.resolve().then(task3);
setImmediate(task4);
process.nextTick(task5);
process.nextTick(task6);
queueMicrotask(task7);
setTimeout(task8, 0);
setImmediate(task9);
console.info('end')
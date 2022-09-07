const arr = [
    { "id": 0, "start": 0, "duration": 117, "slide": 4, "view": 0 },
    { "id": 0, "start": 0, "duration": 12, "slide": 1, "view": 0 },
    { "id": 0, "start": 0, "duration": 41, "slide": 2, "view": 0 },
    { "id": 0, "start": 0, "duration": 29, "slide": 3, "view": 0 },
    { "id": 0, "start": 0, "duration": 123, "slide": 3, "view": 0 },
    { "id": 0, "start": 0, "duration": 417, "slide": 2, "view": 0 },
    { "id": 0, "start": 0, "duration": 12, "slide": 1, "view": 0 },
    { "id": 0, "start": 0, "duration": 67, "slide": 2, "view": 0 }
];

const topN = (arr, n) => {
    return arr.slice().sort((left, right) => {
        return left.duration - right.duration
    }).slice(0, n)
}

const data = topN(arr, 2);
console.info(data)
function solution(jsonData: string): number[] {
    let result = []
    const data = JSON.parse(jsonData);
    for (const  key in data) {
        //?< match something before other
        const match = data[key].description.match(/(?<!art\s)(?<!dance\s)(?<!yoga\s)(?:(?:studio)|(?:(\d)-bedroom))/)
        const match2 = data[key].description.match(/studio/)
        console.info(match)
        if (match == null && match2 == null) {
            result.push(data[key].num_bedrooms)
        } else if (match == null && data[key].num_bedrooms == 0) {
            result.push(0)
        } else if (match && match[1] == data[key].num_bedrooms) {
            result.push(1)
        } else {
            result.push(0)
        }
    }
    return result
}

console.info(solution(
JSON.stringify([
    {
       "id": "1",
       "agent": "Radulf Katlego",
       "unit": "#3",
       "description": "This luxurious studio apartment is in the heart of downtown.",
       "num_bedrooms": 1
    },
    {
       "id": "2",
       "agent": "Kelemen Konrad",
       "unit": "#36",
       "description": "We have a 1-bedroom available on the third floor.",
       "num_bedrooms": 1
    },
    {
       "id": "3",
       "agent": "Ton Jett",
       "unit": "#12",
       "description": "Beautiful 1-bedroom apartment with nearby yoga studio.",
       "num_bedrooms": 1
    },
    {
       "id": "4",
       "agent": "Fishel Salman",
       "unit": "#13",
       "description": "Beautiful studio with a nearby art studio.",
       "num_bedrooms": 1
    },
    {
       "id": "5",
       "agent": "Ton Jett",
       "unit": "#12",
       "description": "Beautiful yogo 1-bedroom apartment with nearby yoga studio.",
       "num_bedrooms": 1
    },
 ])));

 // solution 0,1,1,0
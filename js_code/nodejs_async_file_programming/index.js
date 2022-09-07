import fetch from "fetch";
import async from "async";
import { promises as fs } from "fs";

class Person {
    constructor(id, name, age, city) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.city = city;
    }
    bio() {
        return `I am ${this.name} with age ${this.age} and live in city ${this.city}`
    }
}

const responseValidator = (data) => {
    if (Array.isArray(data)) {
        return true;
    } else {
        throw new Error("Invalid response")
    }
}

class PersonOperators {

    ageFilter(persons, age) {
        return new Promise((resolve, reject) => {
            const filtered = persons.filter((person) => {
                return person.age >= age
            })
            resolve(filtered);
        })
    }

    cityFilter(persons, city) {
        return new Promise((resolve, reject) => {
            const filtered = persons.filter((person) => {
                return person.city == city
            })
            resolve(filtered);
        })
    }

    printBios(persons) {
        return new Promise((resolve, reject) => {
            persons.forEach((person) => {
                console.info(person.bio())
            })
            resolve(persons);
        })
    }


}

async function mainPromises() {
    try {
        console.info("Start")
        const personOps = new PersonOperators();

        const data = await fs.readFile("./data/data.json", "binary");
        const json = JSON.parse(data);
        responseValidator(json)
        const persons = JSON.parse(data).map((item) => {
            return new Person(item.id, item.name, item.age, item.city)
        });

        const agePromise = personOps.ageFilter(persons, 30)
            .then((filteredPersons) => {
                personOps.printBios(filteredPersons)
            })
            .catch((err) => console.error(err, err.message))

        const cityPromise = personOps.cityFilter(persons, "New York")
            .then((filteredPersons) => {
                personOps.printBios(filteredPersons)
            })
            .catch((err) => console.error(err, err.message))

        console.info("End")
        Promise.all([agePromise, cityPromise]).then(() => {
            console.info("Promises done")
        })

    } catch (err) {
        console.error("main", err)
    }
}

async function mainAsync() {
    try {
        console.info("Start")
        const personOps = new PersonOperators();

        const data = await fs.readFile("./data/data.json", "binary");
        const json = JSON.parse(data);
        responseValidator(json)
        const persons = JSON.parse(data).map((item) => {
            return new Person(item.id, item.name, item.age, item.city)
        });

        const ageFiltered = personOps.ageFilter(persons, 30);
        const cityFiltered = personOps.cityFilter(persons, "New York");
        // const datas = await Promise.all([ageFiltered, cityFiltered])
        // datas.map((sublist) => personOps.printBios(sublist))

        async.parallel([
            function(callback) {
                return personOps.ageFilter(persons, 30)
            },
            function(callback) {
                return personOps.cityFilter(persons, "New York");
            }
        ], function(err, results) {
            console.log(results);
            // results is equal to ['one','two'] even though
            // the second function had a shorter timeout.
        });
        
        console.info("End")
    } catch (err) {
        console.error("main async", err)
    }
}

mainAsync();
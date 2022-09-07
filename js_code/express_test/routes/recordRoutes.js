import express from "express"

const recordRoutes = express.Router()

let records = [
    {
        name: "aaa",
        age: 8,
        score: 90,
    },
    {
        name: "bbb",
        age: 10,
        score: 70,
    },
    {
        name: "ccc",
        age: 1,
        score: 100,
    },
    {
        name: "ddd",
        age: 10,
        score: 60,
    },
]

recordRoutes.get("/", async (req, res) => {
    return res.json(records)
});

recordRoutes.post("/", async (req, res) => {
    records.push(
        {
            name: req.body.name,
            age: req.body.age,
            score: req.body.score,
        }
    )
    return res.json(records)
});

recordRoutes.get("/filter", async (req, res) => {
    const data = records.filter((item) => item.age > req.query.age)
    return res.json(data)
});

recordRoutes.get("/group", async (req, res) => {
    const data = records.reduce((group, item) => {
        if (!group.hasOwnProperty(item.age)) group[item.age] = []
        group[item.age].push(item.name)
        return group
    }, {})
    return res.json(data)
});

recordRoutes.get("/top2", async (req, res) => {
    const data = records.slice().sort((a, b) => a.score - b.score).slice(0, 2)
    return res.json(data)
});

export default recordRoutes;
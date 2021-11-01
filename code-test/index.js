'use strict';

const express = require('express');
const app = express();
app.use(express.json());

let candidates = []
let skillIndex = []

app.use(function (req, res, next) {
  res.setHeader('Content-Type', 'application/json')
  next();
});

app.post('/candidates', function (req, res) {
  //validate request
  if (!req.body || !req.body.id || !req.body.name || !req.body.skills) {
    return res.status(400).json([]);
  }
  candidates.push(req.body);
  return res.status(200).json(req.body);
});

// TODO: dont mutaqte candaite, 2k candidate so
app.get('/candidates/search', function (req, res) {
  //validate request
  if (!req.query.skills) {
    return res.status(400).json([]);
  }
  if (candidates.length == 0) {
    return res.status(404).json([]);
  }
  let skills = req.query.skills;
  skills = skills.split(",")
  // assign score based on match
  let result = candidates.map((item) => {
    let count = 0
    for (const skill of skills) {
      if (item.skills.includes(skill)) {
        count++
      }
    }
    item.score = count
    return item;
  })
  //sort based on score
  const sortedResult = result.sort((item1, item2) => {
    return item2.score - item1.score
  })
  console.info('result sort ', sortedResult)
  if (sortedResult[0].score == 0) {
    return res.status(404).json([]);
  } else {
    return res.status(200).json(sortedResult[0]);
  }
});

app.listen(process.env.HTTP_PORT || 3000);

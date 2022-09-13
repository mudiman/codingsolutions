const { Op } = require('sequelize')
const Analytics = require('../models/Analytics');
const {subtractSecondsFromCurrentTime} = require('../utils');
// Function subtractSecondsFromCurrentTime is a utility function which accepts the seconds to subtract from thee current time and
// returns the javascript date object

function validate(events) {
  const map = {}
  for (const [key, event] of Object.entries(events)) {
      let time = new Date(event.date);
      if (!map[event.user]) {
        map[event.user] = {
          type: event.eventType,
          time: time,
        }
        event.valid = true;
      } else {

      }

  }
  return events;
}

const reminderController = {}
  reminderController.get =  async (req, res) => {
    const result = await Analytics.findAll();
    res.status(200).send(result)
  };
  reminderController.post = async (req,res) => {
    const events = req.body;
    let success = 0;
    const validEvents  = validate(events);
    for (const [key, event] of Object.entries(validEvents)) {
      
      const result = await Analytics.create({
        "id": key,
        "eventType": event.eventType,
        "user": event.user,
        "date": event.date
      })
      if (valid) success++;
    }

    res.status(201).send({"ingested" : success})
  };
  reminderController.findOne =  async (req, res) => {
    const result = await Reminders.findOne({id : req.query.id})
    if (result) {
      res.status(200).send(result);
    } else {
      res.status(404).send("ID not found");
    }
  };
  reminderController.update = async (req, res) => {
    res.status(405).send()
  };

module.exports = reminderController
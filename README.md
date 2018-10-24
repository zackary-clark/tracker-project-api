# Workout Tracker Project - API

## Links

[API](https://infinite-coast-74819.herokuapp.com/)

[Client](https://zclark0625.github.io/tracker-project-client/)

[Client Repo](https://github.com/zclark0625/tracker-project-client)

## ERDs

[V1 ERD](images/Project-2-ERD-V1.png)

[V6 ERD](images/Project-2-ERD-V6.png)

## Description

This application is a workout tracker for powerlifters, Olympic weightlifters, and strongmen. 

It currently provides logs of "one rep maxes" for the "big four" lifts and the user's bodyweight. It also provides charts of those logs so the user can see their progress over time. 

It is planned for the application to allow planning and tracking of workouts, and complex analysis of changes in strength, bodyweight, volume, and their effects on each other over time, for each user.

It does this by storing one rep maxes in a table with a date, and bodyweight measurements in another table by date, both associated with users accessible with CRUD actions on the front-end. The front end then displays these records using Google Charts.

## Technologies Used

- Ruby
- Rails
- Git
- Postgresql

## Column and Row Planning

### V1 - MVP
- `User` email:string, token:string, password:string

- `Max` user:references, date:datetime, squat1RM:int, bench1RM:int, deadlift1RM:int, press1RM:int

### V2
- `User` email:string, token:string, password:string

- `Max` user:references, date:datetime, squat1RM:int, bench1RM:int, deadlift1RM:int, press1RM:int

- `TemplateLift` name:string, description:string, accessory_of:bigint(id of one of the big 4 lifts, if applicable)
    - Pre-seeded

### V3
- `User` email:string, token:string, password:string

- `Max` user:references, date:datetime, squat1RM:int, bench1RM:int, deadlift1RM:int, press1RM:int

- `TemplateLift` name:string, description:string, accessory_of:bigint(id of one of the big 4 lifts, if applicable)
    - Pre-seeded

- `Workout` date:datetime, user:references

### V4
- `User` email:string, token:string, password:string

- `Max` user:references, date:datetime, squat1RM:int, bench1RM:int, deadlift1RM:int, press1RM:int

- `TemplateLift` name:string, description:string, accessory_of:bigint(id of one of the big 4 lifts, if applicable)
    - Pre-seeded

- `Workout` date:datetime, user:references

- `Lift` workout:references, template_lift:references, reps:int, weight:float, RPE:int, percent:float, notes:string
    - each set is stored separately in the table, though the front end should allow user to create multiple sets at once if they are the same scheme

### V5
- `User` email:string, token:string, password:string

- `Max` user:references, date:datetime, squat1RM:int, bench1RM:int, deadlift1RM:int, press1RM:int

- `TemplateLift` name:string, description:string, accessory_of:bigint(id of one of the big 4 lifts, if applicable)
    - Pre-seeded

- `Workout` date:datetime, user:references

- `Lift` workout:references, template_lift:references, reps:int, weight:float, RPE:int, percent:float, notes:string
    - each set is stored separately in the table, though the front end should allow user to create multiple sets at once if they are the same scheme

- `BodyWeight` user:references, date:datetime, weight:float, notes:string

### V6 - Goal
- `User` email:string, token:string, password:string

- `Max` user:references, date:datetime, squat1RM:int, bench1RM:int, deadlift1RM:int, press1RM:int

- `TemplateLift` name:string, description:string, accessory_of:bigint(id of one of the big 4 lifts, if applicable)
    - Pre-seeded

- `TemplateCardio` name:string, description:string
    - Pre-seeded

- `Workout` date:datetime, user:references, planned:bool

- `Lift` workout:references, template_lift:references, reps:int, weight:float, RPE:int, percent:float, notes:string
    - each set is stored separately in the table, though the front end should allow user to create multiple sets at once if they are the same scheme

- `Cardio` workout:references, template_cardio:references, distance:float, weight:float, intensity:int, notes:string
    - each set is stored separately in the table, though the front end should allow user to create multiple sets at once if they are the same scheme

- `BodyWeight` user:references, date:datetime, weight:float, notes:string

### V7
Add specified durations of sets and breaks

### V8
Add templates for popular programs

### V9
Add custom exercises

### V10
Add bands/chains

## Development Process

For the API, I began by scaffolding the 1RM table, using my ERD and the examples files provided as a template. Afterward, I got the Client working for maxes, including an initial implementation of Google Charts. When this was done, I was able to quickly scaffold the bodyweight table in the same way, then work on the client side access to that table.
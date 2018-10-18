Workout Tracker Project - API

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
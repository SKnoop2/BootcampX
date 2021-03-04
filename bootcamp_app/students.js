const { Pool } = require('pg');
//connect our database using pool which can handle multiple client connections
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// to prevent sql injection attacks, assign input variables to constants and then put those constants in an array
const queryString =`
  SELECT students.id as student_id, students.name as name, cohorts.name as cohort
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  WHERE cohorts.name LIKE $1
  LIMIT $2
  `;
const cohortName = process.argv[2];
const limit = process.argv[3] || 5;
const values = [`%${cohortName}%`, limit];

//this function accepts SQL queries as strings & returns a promise with query result
pool.query(queryString, values)
.then(res => {
  //the result we want are in the rows object within the larger object
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
})
.catch(err => console.error('query error', err.stack));

document.addEventListener("turbolinks:load", function() {

  const body = document.querySelector("body")
  getWorkouts()
  body.addEventListener("click", function(e) {
    if (e.target.className === "workout-js"){
      const workoutId = e.target.dataset.id
      let workout = findWorkoutById(workoutId)
        const show = document.getElementById("workout-show")
        let div = ""
        let i
        for (i = 0; i < workout.skills.length; i++) {
          div += `<p>${workout.skills[i].name}: ${workout.workout_skills[i].work}</p>`
        }
        show.innerHTML = '<br>' + div + '<br>'
    }
  })

  $(function () {
    $('#new_skills').submit(function(event) {
      event.preventDefault()
      var values = $(this).serialize()
      $.post('/workouts', values)
      .done(function (data) {
        let div = ""
        let i
        for (i = 0; i < data.skills.length; i++) {
          div += `<p>${data.skills[i].name}: ${data.workout_skills[i].work}</p>`
        }

        $('#new-workout-div').html(div)
      })
    })
  })

  function getWorkouts() {
    fetch(`http://localhost:3000/workouts.json`)
    .then(resp => resp.json())
    .then(data => {
      data.map(workout => {
        const newWorkout = new Workout(workout)
      })
    })
  }

  allWorkouts = []

  class Workout {
    constructor(obj) {
      this.id = obj.id
      this.coach_id = obj.coach_id
      this.skills = obj.skills
      this.workout_skills = obj.workout_skills
      allWorkouts.push(this)
    }
  }

  function findWorkoutById(workoutId) {
    for (var i = 0; i < allWorkouts.length; i++) {
      if (allWorkouts[i].id == workoutId) {
        return allWorkouts[i];
      }
    }
  }

});

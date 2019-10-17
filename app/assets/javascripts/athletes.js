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
}

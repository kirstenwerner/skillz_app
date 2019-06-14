// document.on('turbolinks:load', function() {
// const collection = document.getElementByClassName("workouts-js")
//
// debugger
// })

document.addEventListener("turbolinks:load", function() {

  const body = document.querySelector("body")
  body.addEventListener("click", function(e) {
    if (e.target.className === "workout-js"){
      const workoutId = e.target.dataset.id
      fetch(`http://localhost:3000/workouts/${workoutId}.json`)
      .then(resp => resp.json())
      .then(data => {
        const show = document.getElementById("workout-show")
        let div = ""
        let i
        for (i = 0; i < data.skills.length; i++) {
          div += `<p>${data.skills[i].name}: ${data.workout_skills[i].work}</p>`
        }
        show.innerHTML = '<br>' + div + '<br>'
      })
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
});

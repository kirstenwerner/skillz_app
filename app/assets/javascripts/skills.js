document.addEventListener("turbolinks:load", function() {

  const body = document.querySelector("body")
  body.addEventListener("click", function(e) {
    if (e.target.className === "skills-js"){
      const skillsTarget = e.target.dataset.target
      fetch(`http://localhost:3000/skills/targets.json`)
      .then(resp => resp.json())
      .then(data => {
        const show = document.getElementById("target-skill-show")
        let div = ""
        let i
        for (i = 0; i < data.length; i++) {
          if (data[i].target === skillsTarget)
          div += `<div class="skills" id="${data[i].id}">${data[i].name}</div>`
        }
        show.innerHTML = '<br><center>' + div + '</center><br>'
      })
    }
    if (e.target.className === "skills"){
      const skillId = e.target.id
      fetch(`http://localhost:3000/skill/${skillId}.json`)
      .then(resp => resp.json())
      .then(data => {
        const skillShow = document.getElementById("skill-show")
        let div = ""
        let i = 0
        let videoRef = data.demo.split("/").pop()

        div = `<center><strong><h2>${data.name}</h2></strong><br>`

        if  (data.demo === "") {
          div += `<p>Sorry! There is no video demonstration for this skill.</p>`
        } else {
          div += `<iframe title="vimeo-player"
          src="https://player.vimeo.com/video/${videoRef}"
          width="640" height="360" frameborder="0"
          allowfullscreen></iframe><br><br>`
        }

        if (data.description != "") {
          let desc = data.description.split("/")
          for (i = 0; i < desc.length; i++) {
            div += `${desc[i]}<br><br>`
          }
        } else {
          div += `<p>Sorry! There is no description for this skill yet.</p>`
        }
        skillShow.innerHTML = div + `</canter>`
      })
    }
  })
});

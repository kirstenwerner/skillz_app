document.addEventListener("turbolinks:load", function() {

  const body = document.querySelector("body")
  getSkills()
  body.addEventListener("click", function(e) {
    if (e.target.className === "skills-js"){
      const skillsTarget = e.target.dataset.target
        const show = document.getElementById("target-skill-show")
        let div = ""
        let i
        for (i = 0; i < allSkills.length; i++) {
          if (allSkills[i].target === skillsTarget)
          div += `<div class="skills" id="${allSkills[i].id}">${allSkills[i].name}</div>`
        }
        show.innerHTML = '<br><center>' + div + '</center><br>'
    }
    if (e.target.className === "skills"){
      const skillId = e.target.id
      let skill = findSkillById(skillId)
      const skillShow = document.getElementById("skill-show")
      skillShow.innerHTML = skill.formatSkill(skill)
    }
  })

  function getSkills() {
    fetch(`http://localhost:3000/skills/targets.json`)
    .then(resp => resp.json())
    .then(data => {
      data.map(skill => {
        const newSkill = new Skill(skill)
      })
    })
  }

  allSkills = []

  class Skill {
    constructor(obj) {
      this.id = obj.id
      this.name = obj.name
      this.description = obj.description
      this.target = obj.target
      this.demo = obj.demo
      allSkills.push(this)
    }
  }

  function findSkillById(skillId) {
    for (var i = 0; i < allSkills.length; i++) {
      if (allSkills[i].id == skillId) {
        return allSkills[i];
      }
    }
  }

  Skill.prototype.formatSkill = function(skill) {
    let div = ""
    let i = 0
    let videoRef = skill.demo.split("/").pop()

    div = `<center><strong><h2>${skill.name}</h2></strong><br>`

    if  (skill.demo === "") {
      div += `<p>Sorry! There is no video demonstration for this skill.</p>`
    } else {
      div += `<iframe title="vimeo-player"
      src="https://player.vimeo.com/video/${videoRef}"
      width="640" height="360" frameborder="0"
      allowfullscreen></iframe><br><br>`
    }

    if (skill.description != "") {
      let desc = skill.description.split("/")
      for (i = 0; i < desc.length; i++) {
        div += `${desc[i]}<br><br>`
      }
    } else {
      div += `<p>Sorry! There is no description for this skill yet.</p>`
    }
    div + `</canter>`
    return div
  }

});

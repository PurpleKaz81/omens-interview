window.addEventListener("DOMContentLoaded", () => {
  const type = new URLSearchParams(window.location.search).get("type")

  fetch(`http://localhost:3000/interview/index?type=${type}`)
    .then((response) => response.json())
    .then((data) => {
      document.getElementById("json-results").innerText = JSON.stringify(data)
    })
})

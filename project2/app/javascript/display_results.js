window.addEventListener("DOMContentLoaded", () => {
  const type = new URLSearchParams(window.location.search).get("type")
  const toggleButton = document.querySelector("#toggle-format")
  let formatted = false

  const displayData = (data) => {
    if (formatted) {
      document.querySelector("#json-results").innerText = JSON.stringify(data, null, 2)
    } else {
      document.querySelector("#json-results").innerText = JSON.stringify(data)
    }
  }

  fetch(`http://localhost:3000/interview/index?type=${type}`)
    .then((response) => response.json())
    .then((data) => {
      displayData(data)

      toggleButton.addEventListener("click", () => {
        formatted = !formatted
        displayData(data)
        toggleButton.innerText = formatted ? "Raw" : "Formatted"
      })
    })
})

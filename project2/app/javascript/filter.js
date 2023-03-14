window.addEventListener("DOMContentLoaded", () => {
  const form = document.querySelector('form')

  const handleFormSubmit = (event) => {
    event.preventDefault()
    const filterValue = document.querySelector("#type").value

    fetch(`http://localhost:3000/interview/index?type=${filterValue}`)
    .then((response) => response.json())
    .then((data) => {
      console.log(data)
    })
  }

  form.addEventListener("submit", handleFormSubmit)
})

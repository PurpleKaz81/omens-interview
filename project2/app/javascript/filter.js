window.addEventListener("DOMContentLoaded", () => {
  const form = document.querySelector('form')

  const handleFormSubmit = (event) => {
    event.preventDefault()
    const filterValue = document.querySelector("#type").value

    window.location.href = `http://localhost:3000/interview/display_results?type=${filterValue}`
  }

  form.addEventListener("submit", handleFormSubmit)
})

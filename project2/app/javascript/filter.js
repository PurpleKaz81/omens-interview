window.addEventListener("DOMContentLoaded", () => {
  const form = document.querySelector('form')

  const filterSelect = document.querySelector('#type')
  const errorMessage = document.createElement('p')

  errorMessage.className = 'alert alert-secondary error-message mt-3'
  errorMessage.innerText = 'Please select a filter option.'
  errorMessage.style.display = 'none'

  form.appendChild(errorMessage)

  form.addEventListener('submit', (e) => {
    if (filterSelect.value === '') {
      e.preventDefault()
      errorMessage.style.display = 'block'
    } else {
      errorMessage.style.display = 'none'
      const filterValue = document.querySelector("#type").value
      window.location.href = `/interview/display_results?type=${filterValue}`
    }
  })
})

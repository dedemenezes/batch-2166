//// Selecionar elemento (NOVO MANTRA)
// document.querySelector(CSS_selector)

const studentsList = document.querySelector("#students")
// console.log(studentsList)
const image = document.querySelector('img')
// console.log(image)

//// Selecionando de um elemento
const playersList = document.querySelector("ul#players")
// console.log(playersList)
const anakin = playersList.querySelector('.red')
// console.log(anakin)

//// Selecionar MULTIPLOS elementos
const winners = document.querySelectorAll("ol#fifa-wins li")
// console.log(winners)
// console.log(winners[0])

// How would you append "France (2 wins)" to the list? 🤔
// 1. SELECIONAR O ELEMENTO
const fifaWinners = document.querySelector('ol#fifa-wins')
// console.log(fifaWinners)
// 2. Manipular o element
fifaWinners.insertAdjacentHTML('beforeend', "<li>France (2 wins)</li>")

//// Append content
studentsList.insertAdjacentHTML("beforeend", "<li>Luna</li>")
studentsList.insertAdjacentHTML("beforeend", "<li>Neville</li>")

//// ADVANCED MANIPULATION
// Apply CSS style
const redParagraph = document.querySelector("p.red");
redParagraph.style.display = "none"
redParagraph.style.display = ""
redParagraph.style.backgroundColor = "white"

// Add/Remove CSS classes
const luke = document.querySelector('.green')
luke.classList.add('hidden')
luke.classList.remove('hidden')
luke.classList.toggle('hidden')

// From Input: READ/WRITE
const emailInput = document.querySelector("#email")
// console.log(emailInput)
// console.log(emailInput.value)
emailInput.value = "andre@gmail.com"
// console.log(emailInput.value)

// From other HTML tags: READ/WRITE
const link = document.querySelector("#home")
// console.log(link.innerText)
// console.log(link.innerHTML)
link.innerText = "Le Wagon ROCKS"
link.innerHTML = "Le Wagon <strong>ROCKS</strong>"

// Read HTML attributes
console.log(link.attributes.href.value)
console.log(link.attributes.id.value)

// console.log("Hello from JavaScript!");

// MANIPULAR OS ELEMENTOS

// SELECIONAR

// document.querySelector(CSS_selector)
const studentsList = document.querySelector("#students")
// console.log(studentsList)
const image = document.querySelector('img')
// console.log(image)

studentsList.insertAdjacentHTML("beforeend", "<li>Luna</li>")
studentsList.insertAdjacentHTML("beforeend", "<li>Neville</li>")

const playersList = document.querySelector("ul#players")
console.log(playersList)
const anakin = playersList.querySelector('.red')
console.log(anakin)


// Selecionar MULTIPLOS elementos
const winners = document.querySelectorAll("ol#fifa-wins li")
console.log(winners)
console.log(winners[0])

// How would you append "France (2 wins)" to the list? 🤔
// 1. SELECIONAR O ELEMENTO
const fifaWinners = document.querySelector('ol#fifa-wins')
console.log(fifaWinners)
fifaWinners.insertAdjacentHTML('beforeend', "<li>France (2 wins)</li>")


// ADVANCED MANIPULATIO

const redParagraph = document.querySelector("p.red");
redParagraph.style.display = "none"
redParagraph.style.display = ""
redParagraph.style.backgroundColor = "white"


const luke = document.querySelector('.green')
luke.classList.add('hidden')
luke.classList.remove('hidden')
luke.classList.toggle('hidden')

const emailInput = document.querySelector("#email")
console.log(emailInput)
// READ
console.log(emailInput.value)

emailInput.value = "andre@gmail.com"
console.log(emailInput.value)


const link = document.querySelector("#home")
console.log(link.innerText)
console.log(link.innerHTML)

link.innerText = "Le Wagon ROCKS"
link.innerHTML = "Le Wagon <strong>ROCKS</strong>"

console.log(link.attributes.href.value)
console.log(link.attributes.id.value)

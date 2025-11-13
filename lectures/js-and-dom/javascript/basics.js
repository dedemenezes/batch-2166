// Basico

// Variables
// ruby: first_name = "Luna"
// firstName = "NEville"

// Constante -> não podem ser alteradas
const firstName = "Neville"
// Regulares -> podem ser alteradas
let age = 27
// age = age + 1
age += 1

// Print
// Ruby: puts name
console.log(firstName)
console.log(age)
// run the file
// ruby path/to/file.rb
// node path/to/file.js

// Find the class
// "andre".class #=> String
console.log(typeof(firstName))

// String
"This is a strig"
'This is also a string'
// Interpolation
// ruby: "My name is #{first_name}"
const sentence = `My name is ${firstName}`
console.log(sentence)
// Converter string para number
// ruby "13".to_i
const stringToNumber = Number.parseInt("13", 10)
console.log(stringToNumber)

// Number == Integer && Float
console.log(13 + 2)
console.log(13.3 * 4)

// Array
const students = ["Neville", "Luna", "Ron"]
console.log(students[1])
students[2] = "Cho"
console.log(students)

// Object == Hash
const school = {
  // JS NÃO tem symbols
  // as chaves são SEMPRE strings
  // chave: valor
  name: "Hogwarts",
  location: "UK",
  numberOfStudents: 130
}
// console.log(school["name"])
// console.log(school["numberOfStudents"])
console.log(school.name)
console.log(school.numberOfStudents)

school.name = "Le Wagon"
console.log(school)

// Boolean
console.log(typeof(false))

// Conditionals
// RUBY
// if age >= 18
//   puts "Can drink!"
// else
//   puts "can't drink!"
// end
if (age >= 18) {
  console.log("Can drink!")
} else {
  console.log("Can't drink!")
}

// Functions == Methods
// def method_name(param1, param2,...)
// end

// OLD WAY -> DON'T USE THIS
// function addition(numberOne, numberTwo) {
//   // return é OBRIGATORIO!
//   return numberOne + numberTwo
// }

// const sum = addition(12, 3)
// console.log(sum)

// NEW WAY -> USE THIS ONE!
// ARROW FUNCTION
const addition = (numberOne, numberTwo) => {
  return numberOne + numberTwo
}
const sum = addition(12, 3)
console.log(sum)

const multiply = (numberOne, numberTwo) => numberOne * numberTwo
console.log(multiply(5, 2))


const capitalize = (word) => {
  // 1. acessar a primeira letra
  // 2. transformar a primeira letra maiuscula
  const firstLetter = word[0].toUpperCase()
  // 3. acessar o resto da palavra
  // 4. transformar em minuscula
  const restOfWord = word.substring(1).toLowerCase()
  return `${firstLetter}${restOfWord}`
}

console.log(capitalize('hElLO'))

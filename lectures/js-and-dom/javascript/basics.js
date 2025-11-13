// Comments are written using double (//)

// Naming conventions ⤵️
// ruby: snake_case example: first_name
// JS:   camelCase  example: firstName

//////// JS BASICS ////////

// Ruby vs JS
// Printing
// ruby
// puts "Welcome to Hogwarts"
// JS
console.log("Welcome to Hogwarts");

// Executing a file in your terminal
// ruby path/to/file.rb
// node path/to/file.js

// Variables
// const can't be reassigned
const name = "Luna Lovegood";
const welcomeMessage = `Hello, ${name} ✌️`;
console.log(welcomeMessage);

// let can be reassigned
let age = 21;
// age = age + 1
age += 1;
console.log(age);

// String
const year = "2023";
const yearAsNumber = parseInt(year, 10);
console.log(yearAsNumber);

// Array
const students = ['Luna Lovegood', 'Ron Weasley'];
console.log(students);
console.log(students[1]);

// Number == Integer && Float
console.log(13)
console.log(13.2)

// Object == Hash
const school = {
  name: "Hogwarts",
  location: "UK"
}
console.log(school)
// console.log(school["name"])
console.log(school.name)
// console.log(school["location"])
console.log(school.location)

school.name = "Le Wagon"
console.log(school)

// Boolean
console.log(true)
console.log(false)

// Conditionals
// Ruby
// if age >= 18
// else
// end

if (age >= 18) {
  console.log("Can drink!")
} else {
  console.log("Can't drink!")
}

// Functions == Methods
// def method_name(param1, param2)
// end
// const methodName = (param1, param2) {
//   return algumaCoisa;
// }
const addition = (numberOne, numberTwo) => {
  return numberOne + numberTwo
};

console.log(addition(2, 4.5))

// OLD WAY
// function addition(numberOne, numberTwo) {
//   return numberOne + numberTwo
// }


// Let's livecode an arrow function and store it into capitalize
const capitalize = (text) => {
  // upcase first letter
  const firstLetter = text[0].toUpperCase()
  // downcase the rest
  const rest = text.substring(1).toLowerCase()
  return `${firstLetter}${rest}`
};

const capitalizedText = capitalize("hoOJE tu nÃo vAi jAntAr");
console.log(capitalizedText)

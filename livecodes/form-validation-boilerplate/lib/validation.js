const inputs = document.querySelectorAll(".form-control");
const checkboxInput = document.querySelector("#tos");
const btn = document.querySelector(".btn.btn-primary")

const inputIsValid = (input) =>  input.classList.contains('is-valid');

const enableButton = () => {
  // Tentar ativar o botão
  // Checar se todos os inputs tem
  // classe CSS is-valid
  const allInputsAreValid = Array.from(inputs).every(inputIsValid)
  // Se checkbox estiver marcado E todos tem classe is-valid
  if (checkboxInput.checked && allInputsAreValid) {
  // 5. Ativo o botão
    btn.disabled = false
    btn.innerText = "Submit!"
  } else {
    // 6. Se não estiver marcado
    // 7. desativo o botão
    btn.disabled = true
    btn.innerText = "Please fill all fields"
  }
}
// inputs.each do |input|
//   code
// end
inputs.forEach((input) => {
  input.addEventListener('blur', () => {
    // Checar se tem text dentro do input
    if (input.value !== "") {
      input.classList.add('is-valid');
      input.classList.remove('is-invalid');
    // Poderíamos aqui adicionar
    // outras validações
    // para os inputs específicos
    // } else if (emailIsValid) {
    //  adiciona e remove classes do emailInput
    // }
    } else {
      input.classList.add('is-invalid');
      input.classList.remove('is-valid');
    }
    enableButton();
  })
})


checkboxInput.addEventListener("change", () => {
  enableButton();
})

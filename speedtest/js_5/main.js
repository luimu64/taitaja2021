// Your code here
let inputfield = document.getElementsByTagName("input")
let andswer = document.getElementById("answer")

inputfield[2].addEventListener("click", function (evt) {
    evt.preventDefault();
    let frontname = inputfield[0].value.split()
    let surname = inputfield[1].value.split()
    andswer.innderHTML = frontname[0 - 2] + surname[0 - 2]
})
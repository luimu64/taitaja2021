// Your code here
let inputfield = document.getElementsByTagName("input")

inputfield[1].addEventListener("click", function (evt) {
    evt.preventDefault();
    let edited = inputfield[0].value.replace("a", "u")
    console.log("alkuperainen: " + inputfield[0].value)
    console.log("muokattu: " + edited)
})
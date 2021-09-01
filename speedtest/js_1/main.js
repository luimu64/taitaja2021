// Your code here
let box = document.getElementsByClassName("box")
box[0].addEventListener("click", function () {
    let id = null;
    let pos = 0;
    clearInterval(id);
    id = setInterval(frame, 5);
    function frame() {
        if (pos == 500) {
            clearInterval(id);
        } else {
            pos++;
            box.style.left = pos + 'px';
        }
    }
});

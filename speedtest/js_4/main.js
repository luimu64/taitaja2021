// Your code here
let arraya = [1, 45, -63, 36, -745, -21, 908, 27]

let sum = 0
for (let i = 0; i < arraya.length; i++) {
    if (arraya[i] > 0) {
        sum = sum + arraya[i]
    }
}
console.log(sum)
// Crée par Joachim Zadi le 19/06/2020 à 18:13
// ===========================================

// PARTIE I
// ++++++++

// 3 => Afficher les nombres de n à m, dans le cas où n est supérieur à m:
console.log("==== Afficher la somme des nombres pairs de n à m ====\n");

let m = Number(prompt("M"));
if (Number.isNaN(m)) {
    do {
        alert("Attention à votre saisie, vous devez saisir un nombre !!!");
        m = Number(prompt("M"));
    } while (Number.isNaN(m));
}

let n = Number(prompt("N"));
if (Number.isNaN(n)) {
    do {
        alert("Attention à votre saisie, vous devez saisir un nombre !!!");
        n = Number(prompt("N"));
    } while (Number.isNaN(n));
}

if (n > m) {
    //On affiche les valeurs de n à m
    let somme = 0;
    for (let i = n; i >= m; i--) {
        somme += i;
    }
    console.log(`somme = ${somme}`);
}



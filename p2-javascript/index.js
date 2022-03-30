const { ordenarArr } = require('./ordenar-arr');
const { buscarN } = require('./buscar-n');

// 1. Crear una rutina que permita ordenarArr números (ordenarArr y descendente). Ejemplo
// input: 10, 30, 9, 7, 15
// output: 7, 9, 10, 15, 30

// La Fx recibe 2 parametros ([array], goingUp), donde:
// Si goingUp = 0 --> Resultado descendente
// Si goingUp = 1 --> Resultado ascendente
console.log(ordenarArr([10, 30, 9, 7, 15], 1));
console.log(ordenarArr([10, 30, 9, 7, 15], 0));

// 2. Crea una función recursiva que sea capaz de encontrar un número dentro de unacolección.
// const numbers = [1,3,6,90,39,4]
console.log(buscarN(39,[1,3,6,90,39,4]));

const randomArr = Array.from({length: 100000}, () => Math.floor(Math.random() * 40));
console.log(buscarN(39,randomArr));


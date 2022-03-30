const { ordenarArr } = require('./ordenar-arr');

const busqRecursiva = (num, arr, ini, fin) => {    
    if(fin >= ini){
        let pivote = parseInt((ini + fin) / 2);

        if(arr[pivote] == num) {return `Encontrado`}
        
        else if(arr[pivote] > num) {return busqRecursiva(num, arr, ini, pivote - 1)}
        
        else {return busqRecursiva(num, arr, pivote + 1, fin)}
    }
    else {return `No encontrado`}
}

exports.buscarN = (num, arr) => {
    if(arr.length == 0 || typeof(num) != 'number') return `No encontrado`;
    const newArr = ordenarArr(arr,1);

    let inicioArr   = 0;
    let finArr      = arr.length - 1;
    const resultado = busqRecursiva(num, newArr, inicioArr, finArr);

    return resultado;
}

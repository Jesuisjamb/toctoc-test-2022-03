const ascendente = (arr) => { 
    if(arr.length == 0 ) return [];
    
    let menorArr   = [];
    let mayorArr   = [];
    let referencia = arr[0];

    for(let i = 1; i < arr.length; i++){
        if(arr[i] < referencia) menorArr.push(arr[i]);
        else mayorArr.push(arr[i]);
    }    
    return ascendente(menorArr).concat(referencia, ascendente(mayorArr));
}

const descendente = (arr) => {
    if(arr.length == 0 ) return [];
    
    let menorArr   = [];
    let mayorArr   = [];
    let referencia = arr[0];

    for(let i = 1; i < arr.length; i++){
        if(arr[i] >= referencia) mayorArr.push(arr[i]);
        else menorArr.push(arr[i]);
    }
    return descendente(mayorArr).concat(referencia, descendente(menorArr));
}

exports.ordenarArr = (arr, goingUp) => {
    if(goingUp !== 0 && goingUp !== 1) return [];
    else{
        if(goingUp) return ascendente(arr);
        
        return descendente(arr);
    }
}
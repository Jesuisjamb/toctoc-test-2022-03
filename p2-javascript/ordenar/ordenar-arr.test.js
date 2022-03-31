const { ordenarArr } = require('./ordenar-arr');

test('Proceso de Ordenación ascendente', () => { 
    expect(ordenarArr([10, 30, 9, 7, 15], 1)).toEqual([7, 9, 10, 15, 30]);
});

test('Proceso de Ordenación descendente', () => { 
    expect(ordenarArr([10, 30, 9, 7, 15], 0)).toEqual([30, 15, 10, 9, 7]);
});

test('Proceso de Ordenación con parametro goingUp errado tipo 1', () => { 
    expect(ordenarArr([10, 30, 9, 7, 15], 2)).toEqual([]);
});

test('Proceso de Ordenación con parametro goingUp errado tipo 2', () => { 
    expect(ordenarArr([10, 30, 9, 7, 15], '*')).toEqual([]);
});

test('Proceso de Ordenación con parametro goingUp errado tipo 3', () => { 
    expect(ordenarArr([10, 30, 9, 7, 15], {})).toEqual([]);
});

test('Proceso de Ordenación con parametro arr vacío', () => { 
    expect(ordenarArr([], 1)).toEqual([]);
});
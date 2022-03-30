const { buscarN } = require('./buscar-n');

test('Proceso de Búsqueda de un valor proporcionado tipo 1', () => { 
    expect(buscarN(39,[1,3,6,90,39,4])).toEqual('Encontrado');
});

test('Proceso de Búsqueda de un valor proporcionado tipo 2', () => { 
    expect(buscarN(39,[1,3,6,90,4])).toEqual('No encontrado');
});

test('Proceso de Búsqueda errado tipo 1', () => { 
    expect(buscarN(39,[])).toEqual('No encontrado');
});

test('Proceso de Búsqueda errado tipo 1', () => { 
    expect(buscarN('123',[1,3,6,90,4])).toEqual('No encontrado');
});
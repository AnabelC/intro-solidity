// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract EstructurasDeControl {

    uint[] public numeros;
    string public resultado;

    event NotificacionDeCondicion(bool condicion);

    constructor(bool condicion) {
        if (condicion){
            resultado = "Condicion True";
        } else {
            resultado = "Condicion False";
        }

        emit NotificacionDeCondicion(condicion);
        
        for (uint iterator = 0; iterator < 10; iterator++){
            numeros.push(iterator);
        }
    }
}
// SPDX-License-Identifier: MIT
//version de solidity
pragma solidity ^0.8.0;

contract AdministrarUsuarios
{

    //guardar direcciones de usuarios
    //address 0x0dufufud

    //delete 

    //lista para guardar objetos a traves de case
    //por cada direccion de address se guardara un string
    mapping(address => string) private listaUsuarios;

    function registrar(string memory nombre, address usuario) public
    {
        listaUsuarios[usuario] = nombre;
    }

    function consultar(address usuario) public view returns(string memory)
    {
        return listaUsuarios[usuario];
    }

    function borrar(address usuario) public
    {
        delete listaUsuarios[usuario];
    }
}
// SPDX-License-Identifier: MIT
//version de solidity
pragma solidity ^0.8.0;

contract AdministrarUsuarios
{

    //no se necesita usar memory por que struct da por hecho que usa memory
    struct Usuario          
    {
        uint edad;
        string nombre;
        string genero;

    }

    //guardar direcciones de usuarios
    //address 0x0dufufud

    //delete 

    //lista para guardar objetos a traves de case
    //por cada direccion de address se guardara un string
    mapping(address => Usuario) private listaUsuarios;

//memory solo leer datos, storage es para escribir datos en la blockchain
    function registrar(uint edad, string memory nombre, string memory genero, address usuario) public
    {
        Usuario storage _usuario = listaUsuarios[usuario];
        _usuario.edad = edad;
        _usuario.nombre = nombre;
        _usuario.genero = genero;
    }

    function consultar(address usuario) public view returns(Usuario memory)
    {
        return listaUsuarios[usuario];
    }

    function borrar(address usuario) public
    {
        delete listaUsuarios[usuario];
    }
}
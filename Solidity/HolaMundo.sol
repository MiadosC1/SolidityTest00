// SPDX-License-Identifier: MIT
//version de solidity
pragma solidity 0.8.0;

contract HolaMundo
{
string private Usuario;

function agregarusuariosaludar(string memory _usuario) public
{
Usuario = _usuario;
}

//Concat en 0.8.0           
//view se utiliza para solo hacer calculos con las variables, no modificar valores
function saludarSolidity() public view returns (string memory)
{
    string memory saludo1 = "Hola mundo";
    string memory saludo2 = ", Bienvenido";
    string memory saludo0 =string(abi.encodePacked(saludo1, Usuario, saludo2));

    return saludo0;
}

/*
Concat con 0.8.12 en adelante
function saludarSolidity() public view returns (string memory)
{
    string memory saludo1 = "Hola mundo";
    string memory saludo2 = ", Bienvenido";
    string memory saludo0 =string.concat(saludo1, Usuario, saludo2);

    return saludo0;
}*/

}
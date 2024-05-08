// SPDX-License-Identifier: MIT
//version de solidity
pragma solidity 0.8.0;

//uint es int pero en solidity  
//mientras operas con tus propias variables, usas pure, por que las usas
contract CalculadoraBasica{
    string usuario;
    //suma
    function suma(uint a, uint b) public pure returns (uint)
    {
        return a + b;
    }
    //resta
    function resta(uint a, uint b) public pure returns (uint)
    {
        return a- b;
    }
    //multiplicacion
    function multiplicacion(uint a, uint b) public pure returns (uint)
    {
        return a * b;
    }
    //division
    function divison(uint a, uint b) public pure returns (uint)
    {
        return a / b;
    }
}
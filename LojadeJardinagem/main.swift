//
//  main.swift
//  LojadeJardinagem
//
//  Created by user on 28/03/23.
//

import Foundation

// iniciar loja
var dict_prod = [Int: Array<String>]()
dict_prod[0] = ["nome", "id", "preco por grama", "categoria"]
dict_prod[1] = ["Semente de girassol", "120", "0.50", "semente"]
dict_prod[2] = ["Palmeira", "149", "125.90", "planta"]
dict_prod[3] = ["To legal", "198", "2.50", "adubo"]
dict_prod[4] = ["Cresce rápido", "342", "4.80", "fertilizante"]

var controle = "2"

repeat {
    
    print("Bem-vindo a loja Adube-se. Aqui temos produtos para todos os tipos de plantas.")
    print("1. Listar todos os produtos")
    print("2. Buscar produto por categoria")
    print("3. Ver carrinho")
    print("9. Encerrar")
    
    print("")
    print("O que voce deseja fazer? Digite o numero correspondente")
    
    let input = readLine()
    
    // Encerrar sistema
    if (input == "9") {
        controle = "1"
    }
    
} while (controle != "1")



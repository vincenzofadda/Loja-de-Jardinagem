//
//  main.swift
//  LojadeJardinagem
//
//  Created by user on 28/03/23.
//

import Foundation

// iniciar loja
var dict_prod = [Int: Array<String>]()
dict_prod[1] = ["Semente de girassol", "120", "0.50", "semente"]
dict_prod[2] = ["Palmeira", "149", "125.90", "planta"]
dict_prod[3] = ["To legal", "198", "2.50", "adubo"]
dict_prod[4] = ["Cresce rápido", "342", "4.80", "fertilizante"]
dict_prod[5] = ["Vai", "342", "4.80", "fertilizante"]
dict_prod[6] = ["Cresce muito muito rápido", "342", "4.80", "fertilizante"]

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
    
    print("")
    
    // Encerrar sistema
    switch input{
    case "1":
        listarProdutos()
    case "2":
        print("2")
    case "9":
        controle = "1"
    default:
        print("Opcao invalida")
    }

    if controle != "1" {
        print("")
        print("0. Voltar ao menu anterior")
        print("9. Encerrar programa")
        
        let input2 = readLine()
        
        if (input2 == "9") {
            controle = "1"
        }


    }

} while (controle != "1")

func listarProdutos (){
    print("Listagem completa de produtos:")
    print("-------------------------------------------------------------")
    print("|             Nome             |            Preço           |")
    print("-------------------------------------------------------------")
    for (_, prod) in dict_prod {
        print("-------------------------------------------------------------")
        var nome = (prod[0]).count
        var lenesquerda = (((31-nome)/2)-2)
        var lendireita = lenesquerda
        if (nome % 2 != 0) {lendireita = lendireita - 1}
        var espacoesquerda = String(repeating: " ", count: lenesquerda)
        var espacodireita = String(repeating: " ", count: lendireita)
        
        var preco = (prod[2]).count
        var lenesquerda2 = (((29-preco)/2)-2)
        var lendireita2 = lenesquerda2
        if (preco % 2 != 0) {lendireita2 = lendireita2 - 1}
        var espacoesquerda2 = String(repeating: " ", count: lenesquerda2)
        var espacodireita2 = String(repeating: " ", count: lendireita2)
        
        print("|",espacoesquerda, (prod[0]), espacodireita, "|", espacoesquerda2, (prod[2]), espacodireita2, "|")
        print("-------------------------------------------------------------")
    }
}


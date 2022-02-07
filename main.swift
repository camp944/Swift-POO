var empresa=Locadora(nome:"Localiza",CNPJ:122559523650000)
var opc:Int=1
while opc != 0
{
    print("\n\n\t@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
    print("\t@                                       @\n")
    print("\t@                  MENU                 @\n")
    print("\t@                                       @\n")
    print("\t@       ADQUIRIR NOVO VEICULO -> 1      @\n")
    print("\t@          VENDER VEICULO -> 2          @\n")
    print("\t@         PESQUISAR VEICULO -> 3        @\n")
    print("\t@         IMPRIMIR VEICULOS -> 4        @\n")
    print("\t@         ENCERRAR PROGRAMA -> 0        @\n")
    print("\t@                                       @\n")
    print("\t@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n\n")
    print("\tInsira a opcao desejada -> ")
    opc=Int(readLine()!)!
    
    if(opc==1)
    {
        var ver:Bool=false
        print("\n\tInsira o modelo do veículo -> ")
        let modelo:String=readLine()!
        print("\tInsira a fabricante do veículo -> ")
        let marca:String=readLine()!
        print("\tInsira o ano de fabricacao do veículo -> ")
        let ano=Int(readLine()!)!
        print("\tInsira o tipo de veículo[C->Carro B->Barco A->Aviao] -> ")
        let tipo=Character(readLine()!)
        if(tipo=="C"||tipo=="c")
        {
            print("\n\tInsira o motor do veículo em L-> ")
            let motor=Float(readLine()!)!
            print("\n\tInsira o nº de passageiros do veículo -> ")
            let passageiros=Int(readLine()!)!
            print("\n\tInsira a capacidade do veículo em toneladas-> ")
            let capacidade=Float(readLine()!)!
            print("\n\tInsira o alcance do veículo(em Km) com o tanque cheio -> ")
            let alcance=Int(readLine()!)!
            empresa.adquirir_Carro(ano:ano,marca:marca,modelo:modelo,motor:motor,passageiros:passageiros,capacidade:capacidade,alcance:alcance)
            ver=true
        }
        if(tipo=="B"||tipo=="b")
        {
            print("\n\tInsira o tipo de propulsão do barrco (vela ou combustão) -> ")
            let propulsao:String=readLine()!
            print("\n\tInsira o nº de passageiros do veículo -> ")
            let passageiros=Int(readLine()!)!
            print("\n\tInsira a capacidade do veículo em toneladas-> ")
            let capacidade=Float(readLine()!)!
            print("\n\tInsira o alcance do veículo(em Km)caso seja movido a combustao -> ")
            let alcance=Int(readLine()!)!
            
            ver=true
            
            empresa.adquirir_Barco(ano:ano,marca:marca,modelo:modelo,propulsao:propulsao,passageiros:passageiros,capacidade:capacidade,alcance:alcance)
        }
        
        if(tipo=="A"||tipo=="a")
        {
            print("\n\tInsira o numero de motores que o veiculo possui -> ")
            let N_motor=Int(readLine()!)!
            print("\n\tInsira o nº de passageiros do veículo -> ")
            let passageiros=Int(readLine()!)!
            print("\n\tInsira o alcance do veículo(em Km) -> ")
            let alcance=Int(readLine()!)!
            ver=true

            empresa.adquirir_Aviao(ano:ano,marca:marca,modelo:modelo,N_motor:N_motor,passageiros:passageiros,alcance:alcance)

        }

        if(ver==false)
        {
            print("\n\t[VEICULO NÃO ADQUIRIDO]->DADOS INSERIDOS INCORRETAMENTE]\n")
        }else{print("\n\t[VEICULO ADIQUIRIDO COM SUCESSO]\n")
        }
        

    }
    if(opc==2)
    {
        print("\n\tInsira o modelo do veículo -> ")
        let modelo:String=readLine()!
        print("\tInsira a fabricante do veículo -> ")
        let marca:String=readLine()!
        print("\tInsira o ano de fabricacao do veículo -> ")
        let ano=Int(readLine()!)!
        print("\tInsira o tipo de veículo[C->Carro B->Barco A->Aviao] -> ")
        let tipo=Character(readLine()!)
        empresa.vender_veiculo(ano:ano,marca:marca,modelo:modelo,tipo:tipo)
    }
    if(opc==3)
    {
        print("\n\tInsira o modelo do veículo -> ")
        let modelo:String=readLine()!
        print("\tInsira a fabricante do veículo -> ")
        let marca:String=readLine()!
        print("\tInsira o ano de fabricacao do veículo -> ")
        let ano=Int(readLine()!)!
        print("\tInsira o tipo de veículo[C->Carro B->Barco A->Aviao] -> ")
        let tipo=Character(readLine()!)
        empresa.pesquisa(ano:ano,marca:marca,modelo:modelo,tipo:tipo)
    }
    if(opc==4)
    {
        print("\tInsira o tipo de veículo[C->Carro B->Barco A->Aviao] -> ")
        let tipo=Character(readLine()!)
        empresa.imprime_veiculos(tipo:tipo)
    }
    if(opc==0){print("\n\n\t[PROGRAMA ENCERRADO!!]\n\n\n")}
    if(opc<0 || opc>4)
    {
        print("\n\t[OPERACAO NAO DISPONIVEL]\n")
    }
    
}


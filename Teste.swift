class Veiculo
{
    private var ano:Int
    private var fabricante:String
    private var modelo:String
    private var tipo:String
    
    init(ano:Int,marca:String,modelo:String,tipo:String)
    {
        self.ano=ano
        self.fabricante=marca
        self.modelo=modelo
        self.tipo=tipo
    }

    func setAno(ano:Int){self.ano=ano}
    func setFabricante(fabricante:String){self.fabricante=fabricante}
    func setModelo(modelo:String){self.modelo=modelo}
    func setTipo(tipo:String){self.tipo=tipo}

    

    func getAno()->Int{return self.ano}
    func getFabricante()->String{return self.fabricante}
    func getModelo()->String{return self.modelo}
    func getTipo()->String{return self.tipo}
}


class Barco: Veiculo
{
    private var propulsao:String
    private var passageiros:Int
    private var capacidade:Float
    private var alcance:Int

    init(ano:Int,marca:String,modelo:String,propulsao:String,passageiros:Int,capacidade:Float,alcance:Int)
    {
        self.propulsao=propulsao
        self.passageiros=passageiros
        self.capacidade=capacidade
        self.alcance=alcance
        super.init(ano:ano,marca:marca,modelo:modelo,tipo:"BARCO")
    }
    func imprime_Barco()
    {
        print("\n\t[MODELO] -> ",self.getModelo(),"\t[MARCA] -> ",self.getFabricante(),"\t[TIPO] -> BARCO")
    }
}

class Carro: Veiculo
{
    private var motor:Float
    private var passageiros:Int
    private var capacidade:Float
    private var alcance:Int

    init(ano:Int,marca:String,modelo:String,motor:Float,passageiros:Int,capacidade:Float,alcance:Int)
    {
        self.motor=motor
        self.passageiros=passageiros
        self.capacidade=capacidade
        self.alcance=alcance

        super.init(ano:ano,marca:marca,modelo:modelo,tipo:"CARRO")
    }
    
    func imprime_Carro()
    {
        print("\n\t[MODELO] -> ",self.getModelo(),"\t[MARCA] -> ",self.getFabricante(),"\t[ANO] -> ",self.getAno(),"\t[TIPO] -> CARRO")
    }
}

class Aviao: Veiculo
{
    
    private var N_motor:Int
    private var passageiros:Int
    private var alcance:Int

    init(ano:Int,marca:String,modelo:String,N_motor:Int,passageiros:Int,alcance:Int)
    {
        self.N_motor=N_motor
        self.passageiros=passageiros
        self.alcance=alcance
        super.init(ano:ano,marca:marca,modelo:modelo,tipo:"AVIAO")
    }

    func imprime_Aviao()
    {
        print("\n\t[MODELO] -> ",self.getModelo(),"\t[MARCA] -> ",self.getFabricante(),"\t[TIPO] -> AVIAO")
    }
}

class Locadora
{
    private var nome:String
    private var CNPJ:Int64
    private var Carros:Array<Carro>
    private var Barcos:Array<Barco>
    private var Avioes:Array<Aviao>
    private var N_veiculos:Array<Int>

    init(nome:String,CNPJ:Int64)
    {
        self.nome=nome
        self.CNPJ=CNPJ
        self.N_veiculos=[0,0,0]
        self.Carros=[Carro]()
        self.Barcos=[Barco]()
        self.Avioes=[Aviao]()
    }

    func adquirir_Carro(ano:Int,marca:String,modelo:String,motor:Float,passageiros:Int,capacidade:Float,alcance:Int)
    {
        self.Carros.append(Carro(ano:ano,marca:marca,modelo:modelo,motor:motor,passageiros:passageiros,capacidade:capacidade,alcance:alcance))
        self.N_veiculos[0]+=1
    }

    func adquirir_Barco(ano:Int,marca:String,modelo:String,propulsao:String,passageiros:Int,capacidade:Float,alcance:Int)
    {
        self.Barcos.append(Barco(ano:ano,marca:marca,modelo:modelo,propulsao:propulsao,passageiros:passageiros,capacidade:capacidade,alcance:alcance))
        self.N_veiculos[1]+=1
    }
    
    func adquirir_Aviao(ano:Int,marca:String,modelo:String,N_motor:Int,passageiros:Int,alcance:Int)
    {
        self.Avioes.append(Aviao(ano:ano,marca:marca,modelo:modelo,N_motor:N_motor,passageiros:passageiros,alcance:alcance))
        self.N_veiculos[2]+=1
    }

    func vender_veiculo(ano:Int,marca:String,modelo:String,tipo:Character)
    {
        var verificador:Int=0
        var n:Int
        if(tipo=="C"||tipo=="c")
        {   n=self.N_veiculos[0]
            print("\n\n\t",n)
            for i in 0...n
            {
                if(self.Carros[i].getModelo()==modelo && self.Carros[i].getFabricante()==marca && self.Carros[i].getAno()==ano)
                {
                    self.Carros.remove(at:i)
                    verificador=1  
                    N_veiculos[0]-=1
                }

                if(verificador==1)
                {
                    print("\n\t[VEICULO VENDIDO COM SUCESSO]\n")
                    return
                }
            }
        } 
        if(tipo=="B"||tipo=="b")
        {
            n=self.N_veiculos[1]
            for i in 0...n
            {
                if(self.Barcos[i].getModelo()==modelo && self.Barcos[i].getFabricante()==marca && self.Barcos[i].getAno()==ano)
                {
                    self.Barcos.remove(at:i)
                    verificador=1
                    N_veiculos[1]-=1                
                }

                if(verificador==1)
                {
                    print("\n\t[VEICULO VENDIDO COM SUCESSO]\n")
                    return
                }
            }
        } 
        if(tipo=="A"||tipo=="a")
        {
            n=self.N_veiculos[2]
            for i in 0...n
            {
                if(self.Avioes[i].getModelo()==modelo && self.Avioes[i].getFabricante()==marca && self.Avioes[i].getAno()==ano)
                {
                    self.Avioes.remove(at:i)
                    verificador=1
                    N_veiculos[2]-=1
                }

                if(verificador==1)
                {
                    print("\n\t[VEICULO VENDIDO COM SUCESSO]\n")
                    return
                }
            }
        }

        

        print{"\n\t[VEICULO NAO ENCONTRADO NA BASE DE DADOS]\n"}      
    }

    func pesquisa(ano:Int,marca:String,modelo:String,tipo:Character)
    {
        if(tipo=="C"||tipo=="c")
        {   let n=self.N_veiculos[0]
            for i in 0...n
            {
                if(self.Carros[i].getModelo()==modelo && self.Carros[i].getFabricante()==marca && self.Carros[i].getAno()==ano)
                {
                    print("\n\t[VEICULO ENCONTRADO!!]\n")
                    return
                }
            }
        } 
        if(tipo=="B"||tipo=="b")
        {
            let n=self.N_veiculos[1]
            for i in 0...n
            {
                if(self.Barcos[i].getModelo()==modelo && self.Barcos[i].getFabricante()==marca && self.Barcos[i].getAno()==ano)
                {
                    print("\n\t[VEICULO ENCONTRADO!!]\n")
                    return
                }

            }
        } 
        if(tipo=="A"||tipo=="a")
        {
            let n=self.N_veiculos[2]
            for i in 0...n
            {
                if(self.Avioes[i].getModelo()==modelo && self.Avioes[i].getFabricante()==marca && self.Avioes[i].getAno()==ano)
                {
                    print("\n\t[VEICULO ENCONTRADO!!]\n")
                    return
                }
            }
        }

        

        print{"\n\t[VEICULO NAO ENCONTRADO NA BASE DE DADOS]\n"}
    }

    func imprime_veiculos(tipo:Character)
    {
        if(tipo=="A"||tipo=="a")
        {
            print("\n\t[LISTA DE AVIOES]\n")
            for i in 0...N_veiculos[2]
            {
                Avioes[i].imprime_Aviao()
            }
            print("\n\n\n")
        }
        if(tipo=="C"||tipo=="c")
        {
            print("\n\t[LISTA DE CARROS]\n")
            for i in 0...N_veiculos[1]
            {
                Carros[i].imprime_Carro()
            }
            print("\n\n\n")
        }
        if(tipo=="B"||tipo=="b")
        {   
            print("\n\t[LISTA DE BARCOS]\n")
            for i in 0...N_veiculos[0]
            {
                Barcos[i].imprime_Barco()
            }
            print("\n\n\n")
            
        }
    }

    func getN_Veiculos()->[Int]{return self.N_veiculos}
    func getNome()->String{return self.nome}
    func getCNPJ()->Int64{return self.CNPJ}
    
}


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





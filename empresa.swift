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
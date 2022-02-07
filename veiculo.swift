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
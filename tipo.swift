
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
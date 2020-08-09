class Cuenta_Bancaria
    attr_accessor :nombre_usuario

    def initialize(nombre_usuario, numero_cuenta, vip=0)
       
      @nombre_usuario = nombre_usuario
      @numero_cuenta = numero_cuenta
      @vip = vip 

      if @numero_cuenta.digits.count !=8
        raise rangeError, "El numero de digitos no es 8"
      end
      if !(0..1).include?(vip)
        raise RangeError, 'vip de digito no es 0 o 1'
      end
    end

    def numero_cuenta
        "#{@vip}-#{@numero_cuenta}"
    end


end

prueba=Cuenta_Bancaria.new("Pedro", 98765464)
puts prueba.inspect
puts prueba.numero_cuenta
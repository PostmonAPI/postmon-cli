module PostmonCli
  class Output
    private
    def self.resultado(resultado)
      if resultado.not_found
        puts "Nenhum resultado encontrado."
      else
        info = {}

        resultado.instance_variables.each do |var|
          info[var.to_s.delete("@").capitalize] = resultado.instance_variable_get(var)
        end

        print_array_output(info)
      end
    end

    def self.print_array_output(array, level = 0)
      array.each do |k, v|
        print "\t" if level > 0
        if( (!v.kind_of?(String) && v.kind_of?(Enumerable) ) || ( !k.kind_of?(String) &&  k.kind_of?(Enumerable) ))
          print_array_output(v||k, 1)
        else
          puts "#{k}: #{v}"
        end
      end
    end
  end
end

  class Recursion
    def sum_to(n)
      if(n<0)
        return nil
      end
      if(n==0)
        return 0
      end
      n+=sum_to(n-1)
    end

    def add_numbers(num_array)
      return num_array[0] if num_array.length<=1

      added_numbers = num_array.pop + add_numbers(num_array)
    end

    def gamma_fnc(n)
      if n==1
        return 1
      elsif n<1
        return nil
      else
      (n-1) * gamma_fnc(n-1)
      end
    end

    def ice_cream_shop(flavors, fav)
      return false if flavors.length==0
      return true if flavors.last == fav

      ice_cream_shop(flavors[0...-1], fav)
    end

    def reverse(string)
      return "" if string.empty?
      string[-1] + reverse(string[0..-2])
    end

  end

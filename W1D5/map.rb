class Map

  def initialize
    @array = []
  end

  def assign(key, value)
    pair_index = @map.index {|pair| pair[0] == key}
    pair_index ? @map[pair_index][1] = value : @map.push([key, value])
    [key, value]
  end

  def lookup(key)
    @array.each do |arr|
      if arr[0] == key
        return arr[1]
      end
    end
  end

  def remove(key)
    @arr.reject! { |sub_array| sub_array[0] == key }
  end

  def show
    deep_dep(@map)
  end

  def deep_dup(arr)
      arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
    end
end

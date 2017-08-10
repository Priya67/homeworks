def sluggish_octopus(fishes)
  (0...fishes.length-1).each do |idx1|
    (idx1+1...fishes.length).each do |idx2|
      if fishes[idx2].length < fishes[idx1].length
        fishes[idx2], fishes[idx1] = fishes[idx1], fishes[idx2]
      end
    end
  end
  fishes[-1]
end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end

def dominant_octopus(fishes)
  prc = Proc.new { |x, y| y.length <=> x.length }

  fishes.merge_sort(&prc)[0]
end

def clever_octopus(fishes)
  biggest_fish = fishes.first

  fishes[1...fishes.length].each do |fish|
    if fish.length > biggest_fish.length
      biggest_fish = fish
    end
  end
  biggest_fish
end

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, index|
    return index if tile == direction
  end
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(direction, tiles_hash)
  tiles_hash[direction]
end

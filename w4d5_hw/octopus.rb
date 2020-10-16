#aA homework

def sluggish_oct(arr)
   sorted = false
    while !sorted 
        sorted = true
        i = 0
        while i < arr.length - 1
            if arr[i].length > arr[i + 1].length 
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                sorted = false
            end
            i += 1
        end
    end
    arr
end

def dom_o(arr)
    return arr if arr.length < 2
    mid_idx = arr.length / 2
    left = dom_o(arr[0...mid_idx])
    right = dom_o(arr[mid_idx..-1])
    dom_o_helper(left, right)
end

def dom_o_helper(left, right)
    merged = []
    until left.empty? || right.empty?
        if left.first > right.first 
            merged << right.shift 
        else
            merged << left.shift
        end
    end
    merged
end

def clever_o(arr)
    longest = ""
    arr.each do |f|
        longest = f if f.length > longest.length
    end
    longest
end

def slow_dance(dir, tiles_array)
    
    tiles_array.each_with_index do |ele, i|
        return i if ele == tile
    end
end

new_tiles_data_structure = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def constant_dance!(tile, new_tiles_data_structure)
    new_tiles_data_structure[tile]
end
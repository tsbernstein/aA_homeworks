fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
    longest = ''
    arr.each do |ele|
        arr.each do |ele2|
            if ele.length > ele2.length
                longest = ele
            else
                longest = ele2
            end
        end
    end
    longest
end

class Array 

    def dominant_octopus(&prc)
    prc ||= Proc.new { |a, b| a <=> b}
    if self.size <= 1
        return self
    end

    array_size   = self.size
    half_of_size = (array_size / 2).round

    left_array  = self.take(half_of_size)
    right_array = self.drop(half_of_size)

    sorted_left_array = left_array.dominant_octopus(&prc)
    sorted_right_array = right_array.dominant_octopus(&prc)

    merge(sorted_left_array, sorted_right_array, &prc)
    end

    def merge(left_array, right_array, &prc)
    if right_array.empty?
        return left_array
    end

    if left_array.empty?
        return right_array
    end

    smallest_number = if left_array.first <= right_array.first
        left_array.shift
    else
        right_array.shift
    end

    recursive = merge(left_array, right_array)

    [smallest_number].concat(recursive)
    end

    p ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'].dominant_octopus
end


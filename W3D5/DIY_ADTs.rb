class Stack
    def initialize
      @stack = []
    end

    def push(el)
      @stack.push(el)
    end

    def pop
      @stack.pop
    end

    def peek
      @stack[-1]
    end
end

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
        @queue
    end

    def peek
        p @queue[0]
    end
end

class Map
    def initialize
        @map = []
    end

    def set(key, value)
        @map << [key, value]
        # @map.map! do |sub|
        #     if sub.include?(key)
        #         sub[1] = value
        #     end
        # end
    end

    def get(key)
        @map.each do |sub|
            if sub[0] == (key)
                p sub[1]
            end
        end
    end

    def delete(key)
        @map.each.with_index do |sub, i|
            if sub[0] == key
                @map.delete_at(i)
            end
        end
    end

    def show
        p @map
    end
end

map = Map.new
map.set(1, 2)
map.set(1, 3)
map.show
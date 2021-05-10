class GraphNode
    attr_reader :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def add_neighbor(node)
        self.neighbors << node
    end
end

def bfs(starting_node, target_value)
    
    queue = [] 
    queue.unshift(starting_node) 
    searched = Set.new()  

    until queue.empty?
        node = queue.shift  
        unless searched.include?(node)

        if node.value == target_value
            return node.value
        end

        searched.add(node)  

        node.children.each do |child|
            queue << child 
        end
    end
    return nil
end
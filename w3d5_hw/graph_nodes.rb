#aA-homework

class GraphNode 
    attr_reader :value, :neighbors 
    def initialize(value)
        @value = value 
        @neighbors = []
    end

    def add_neighbor(new_neighbor)
        @neighbors << new_neighbor
    end

    def bfs(starting_node, target_value)
        queue = [starting_node] 
        visited = Set.new()
        until queue.empty?
            node = queue.shift
            unless visited.include?(node)
            return node.value if node.value == target_value
            queue += node.neighbors
        end
        nil
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
p a.neighbors # = [b, c, e]
p c.neighbors # = [b, d]
p e.neighbors # = [a]
p f.neighbors # = [e]

p bfs(a, "b")
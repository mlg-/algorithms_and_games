def breadth_first_search(network)
  people_queue = Queue.new
  network["you"].each { |person| people_queue.enq(person) }

  while people_queue.length > 0
    person = people_queue.deq
    if person.end_with?("m")
      return person
    else
      network[person].each { |person| people_queue << person }
    end
  end
end

# network = {}
# network["you"] = ["alice", "bob", "claire"]
# network["bob"] = ["anuj", "peggy"]
# network["alice"] = ["peggy"]
# network["claire"] = ["thom", "jonny"]
# network["anuj"] = []
# network["peggy"] = []
# network["thom"] = []
# network["jonny"] = []

# Dijkstra's algo
def weighted_breadth_first_search(graph, costs, parents, processed = [])
  node = find_lowest_cost_node(costs, processed)
  while !node.nil?
    neighbors = graph[node]

    neighbors.keys do |neighbor|
      new_cost = cost + neighbors[neighbor]
      if costs[n] > new_cost
        costs[n] = new_cost
        parents[n] = node
      end
    end
    processed << node
    node = find_lowest_cost_node(costs, processed)
    binding.pry
  end
end

def find_lowest_cost_node(costs, processed)
  lowest_cost = Float::INFINITY
  lowest_cost_node = nil

  costs.each do |node, cost|
    if cost < lowest_cost && !processed.include?(node)
      lowest_cost = cost
      lowest_cost_node = node
    end
  end
  lowest_cost_node
end

graph = {}
graph["start"] = {}
graph["start"]["a"] = 6
graph["start"]["b"] = 2
graph["a"] = {}
graph["a"]["fin"] = 1
graph["b"] = {}
graph["b"]["a"] = 3
graph["b"]["fin"] = 5
graph["fin"] = {}

costs = {}
costs["a"] = 6
costs["b"] = 2
costs["fin"] = Float::INFINITY

parents = {}
parents["a"] = "start"
parents["b"] = "start"
parents["fin"] = nil




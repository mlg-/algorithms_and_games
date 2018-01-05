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
#linked list:
#Set up test file. run test.
#I need to creat a list of data that is linked
#together by a common connection. The list must
#start at one place and end at another. The only
#way of communicating down the list is by iterating
#through each item and connection in the list. We know
# we have arrived at the end of the list when there is
#no other item to reference to.


class Linklist
  attr_accessor :head, :tail_node

  def initialize(data = nil)
    @head = Node.new(data)
  #  @tail_node = tail_node
  end

  # Return all elements in the linked list in order
  #> jb.all
  # "deep dep dep deep deep bop bop deep"
  def all
    collector = ""
    collector_node = @head
    collector << collector_node.data
    until collector_node.link.nil?
      collector_node = collector_node.link
      collector << " #{collector_node.data}"
    end
    collector

    # all_data = @head.data
    # until all_data.link.nil?
    #   all_data = all_data.link
    # end
    # all_data
  end

  #  require 'pry'; binding.pry

  def tail
    tail_node = @head
    until tail_node.link.nil?
      tail_node = tail_node.link
    end
    tail_node
  end

  def append(data)
    tail.link = Node.new(data)
    tail.data
  end

  def prepend_to(data)
    head.link = Node.new(data)
    head.data
    # require 'pry';binding.pry #beats = data.split(" ").reverse
    # new_node = Node.new(data)
    #
    # new_node.link = @head
    # @head = new_node
    # return @head
  end


  def prepend_to_node
  end


  def insert_at(position, data)
  search_node = @head
    while !search_node.nil?
      search_node(data) if  search_node == position
      search_node = search_node.link
    end
    search_node
  end

  def play #prints data in nodes in  list head to tail,
    current_node = @data

    until current_node
      current_node =  current_node.next

    end
  end

end

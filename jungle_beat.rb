#linked list:
#Set up test file. run test.
#I need to creat a list of data that is linked
#together by a common connection. The list must
#start at one place and end at another. The only
#way of communicating down the list is by iterating
#through each item and connection in the list. We know
# we have arrived at the end of the list when there is
#no other item to reference to.








class Node
  attr_reader :beat,
              :link

  def initialize(beat = nil)
    @beat = beat
    @link = nil
  end
end

class Links
  attr_reader :head

  def initialize(head)
    @head = Node.new
  end


  def head
  end

  def node
  end

  def tail
  end


  def append
  end

  def head
  end




end

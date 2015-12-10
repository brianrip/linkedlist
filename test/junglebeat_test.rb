require 'minitest/autorun'
require 'minitest/pride'
require './classes/junglebeat_links'
require './classes/junglebeat_node'
require 'pry'

class JungleBeat < Minitest::Test

  def test_returns_all
    link = Linklist.new("dep bop peep")
    assert_equal "dep bop peep" , link.all
  end

  def test_returns_all_with_appended #adds new node to the tail of the linked list
    link = Linklist.new("dep")
    link.append("deep bob")
    assert_equal "dep deep bob", link.all
  end

  def test_returns_all2
    link = Linklist.new("deep bop peep")
    assert_equal "deep bop peep" , link.all
  end

  def test_has_first_node_nil_by_default
    node = Node.new
    assert_equal nil, node.data
  end

  def test_node_store_data
    node = Node.new("dep")
    assert_equal "dep", node.data
    assert_equal   nil, node.link
  end

  def test_finds_tail_of_linkedlist
    link = Linklist.new("first")
    assert_equal "first", link.tail.data
  end

  def test_append_data_to_linked_list #adds new node to the tail of the linked list
    link = Linklist.new("dep")
    assert_equal "deep", link.append("deep")
  end

  def test_prepend_node_to_linked_list

    link = Linklist.new("dep bop peep")
    assert_equal "dep bop peep", link.prepend_to("dep bop peep")
  end

  def test_insert
skip
    link = Linklist.new("boop bop bop boop")
    assert_equal "boop bop dop bop boop", link.insert_at(2,"dop")

  end


end

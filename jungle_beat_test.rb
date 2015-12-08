require 'minitest/autorun'
require 'minitest/pride'
require_relative 'jungle_beat'
require 'pry'

class JungleBeat < Minitest::Test

  def test_has_first_node_nil_by_default
    node = Node.new
    assert_equal nil, node.beat
    assert_equal nil. node.link
  end

  def test_node_store_data
    node = Node.new("dep")
    assert_equal "dep", node.beat
  end

  def test_play

  end

  def test_append
  end

  def test_all?
  end

  def test_include?
  end

  def test_pop
  end

  def test_all
  end

  def test_count
  end

  def test_insert
  end

  def test_find
  end

end

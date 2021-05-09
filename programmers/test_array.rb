require 'test/unit'

class TestArray < Test::Unit::TestCase

  def test_delete_duplicate_ele
    origin = [1,1,2,2]
    actual = origin | []
    assert_equal([1,2], actual)
  end

  def test_combination_elements
    origin = [1,2,3]
    expected = [[1], [2], [3]]
    assert_equal(expected, origin.combination(1).to_a)
  end

  def test_collect_ele
    origin = [1,2,3,4]
    expected = [11, 12, 13, 14]
    assert_equal(expected, origin.collect { |val| val + 10})
  end

  def test_collect_delete_nil_ele
    origin = [1,2,3,4, nil]
    expected = [11, 12, 13, 14]
    assert_equal(expected, origin.compact!.collect { |val| val + 10})
  end

end
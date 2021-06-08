require 'test/unit'

class TestRemoveElement < Test::Unit::TestCase

    def test_remove_element
        assert_equal(self.remove_element([3,2,2,3], 3), 2)
    end

    def remove_element(nums, val)
        nums.delete(val)
        nums.length
    end

end
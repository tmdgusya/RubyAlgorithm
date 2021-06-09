# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
require 'test/unit'

class TestSerachInsertPosition < Test::Unit::TestCase

    def test_search_insert_case_one
       assert_equal(search_insert([1,3,5,6], 5), 2) 
    end

    def test_search_insert_case_two
        assert_equal(search_insert([1], 2), 1) 
    end

    def search_insert(nums, target)
        idx = 0
        nums.each_with_index do |value, index|
            if target > value
                idx += 1
            end
            
            if value == target
                return index
            end
        end
        return idx;
    end

end
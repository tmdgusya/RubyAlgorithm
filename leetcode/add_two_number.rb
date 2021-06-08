require 'test/unit'

def add_two_numbers(l1, l2)
    l1_toS = ""
    l2_toS = ""
    
    while !l1.nil?
        l1_toS += l1.val.to_s
        l1 = l1.next
    end
    
    while !l2.nil?
        l2_toS += l2.val.to_s
        l2 = l2.next
    end
    
    l1_toI = l1_toS.reverse.to_i
    l2_toI = l2_toS.reverse.to_i
    
    answer = l1_toI + l2_toI
    
    ans = []
    
     answer.to_s.reverse.each_char do |char|
        ans.push(char.to_i)
     end
    
    ans
        
end  
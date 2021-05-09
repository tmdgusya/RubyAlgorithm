require 'test/unit'

=begin
  1 순위 = 6개 전부맞춤
  2 순위 = 5개 번호가 일치
  3 순위 = 4개 번호가 일치
  4 순위 = 3개 번호가 일치
  5 순위 = 2개 번호가 일치
  6 순위 = 그 외

  0 은 알아볼수 없는 수 그 중 최고 순위와 최저 순위의 예를 들어서 해보자
  답안을 보아 순서는 무관한 거 같음
=end


class Lotto

  def solution(lottos, win_nums)
    answer = []

    count = 0
    zero_count = get_zero_count(lottos)

    lottos.each { |num|
      win_nums.each { |win_num|
        if num == win_num
          count += 1
        end
      }
    }

    original_rank = get_rank(count)
    after_rank = get_rank(count + zero_count)

    p "Rank : #{original_rank}, #{after_rank}"

    if original_rank >= after_rank
      answer = [after_rank, original_rank]
    else
      answer = [original_rank, after_rank]
    end

    return answer
  end

  def get_zero_count(lottos)
    count = 0
    lottos.each {
      |num|
      if num == 0
        count+=1
      end
    }
    count
  end

  def get_rank(match_count)
      result =
        case match_count
          when 6 then 1
          when 5 then 2
          when 4 then 3
          when 3 then 4
          when 2 then 5
          else 6
        end
  end

end

lotto = [44, 1, 0, 0, 31, 25]
win_nums = [31, 10, 45, 1, 6, 19]
result = [3, 5]

solution = Lotto.new

p solution.solution(lotto, win_nums)
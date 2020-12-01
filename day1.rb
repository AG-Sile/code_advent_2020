list =

# part one

def find_nums(list)
  list.map do |num|
    second_num = list.select { |n| n == (2020 - num) }
    next unless second_num.any?
    return [num, second_num.first]
  end
end

num_1, num_2 = find_nums(list)
num_1 * num_2

# part two

def find_three_nums(list)
  list.map do |num1|
    list.map do |num2|
      next if num1 == num2
      next if num1 + num2 > 2020
      third_num = list.select { |n| n == (2020 - num1 - num2) }
      next unless third_num.any?
      return [num1, num2, third_num.first]
    end
  end
end

num1, num2, num3 = find_three_nums(list)
num1 * num2 * num3

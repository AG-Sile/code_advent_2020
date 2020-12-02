input_arr = input.split("\n")

def find_invalids(arr)
  arr.select do |str|
    allowed_num_of_occs, letter_input, password = str.split(" ")
    min_num, max_num = allowed_num_of_occs.split("-").map(&:to_i)
    letter = letter_input.gsub(":", "")
    num_of_occs = password.scan(letter).count
    num_of_occs < min_num || num_of_occs > max_num
  end
end

# part 2

input_arr.select do |str|
  position_of_occs, letter_input, password = str.split(" ")
  first_pos, second_pos = position_of_occs.split("-").map(&:to_i)
  letter = letter_input.gsub(":", "")
  (password[first_pos - 1] == letter) ^ (password[second_pos - 1] == letter)
end.count


class Solution1 < Solver
  def part1
    open_file

    @file.count('(') - @file.count(')')
  end

  def part2
    open_file

    start, character_count = 0, 0

    @file.each_char do |char|
      char == '(' ? start += 1 : start -= 1
      character_count += 1
      break if start < 0
    end

    character_count
  end
end

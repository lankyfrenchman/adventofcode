class Solution1 < Solver
  def solve
    open_file

    @file.count('(') - @file.count(')')
  end
end

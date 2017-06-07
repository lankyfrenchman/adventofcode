class Solution
  def initialize(file_path)
    @file_path = file_path
  end

  def solve
    open_file

    @file.count(')') - @file.count('(')
  end

  private

  def open_file
    @file = File.read(@file_path)
  end
end

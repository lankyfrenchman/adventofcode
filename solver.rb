class Solver
  def initialize(file_path)
    @file_path = file_path
  end

  private

  def open_file
    @file = File.read(@file_path)
  end
end

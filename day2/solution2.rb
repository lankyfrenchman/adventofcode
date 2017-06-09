class Solution2
  def part1
    @file = open_file

    total = 0

    raw_dimensions = parse_dimensions

    raw_dimensions.each do |box|
      surfaces = []

      box.each_with_index do |side, index|
        box.delete_at(index)

        box.map { |num| surfaces << (side * num) }
      end

      smallest = surfaces.min

      box_area = surfaces.inject(&:+) * 2 + smallest

      total += box_area
    end

    puts "Total is: #{total}"
  end

  private

  def parse_dimensions
    @file.split.map { |dimension| dimension.split('x').map(&:to_i) }
  end

  def open_file
    @file = File.read(@file_path)
  end
end

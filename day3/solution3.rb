class Solution3 < Solver
  def solve
    open_file

    locations = {}
    locations.default = 0

    start = [0,0]
    locations[start.clone] = 1

    positions = { "^" => [0,1], "v" => [0,-1], ">" => [1,0], "<" => [-1,0] }

    @file.each_char do |direction|
      next unless positions[direction] != nil

      start[0] += positions[direction][0]
      start[1] += positions[direction][1]

      locations[start.clone] += 1
    end

    locations.keys.count
  end
end

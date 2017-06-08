def test
number_of_colors = gets.chomp.to_i
if number_of_colors > 0 && number_of_colors <= 1000
  colors = []
  number_of_colors.times do |index|
    color_count = gets.chomp.to_i
    colors += Array.new(color_count) { index + 1 }
  end
  if colors.count > 0 && colors.count <= 1000
    unique_colors = colors.uniq
    colors_combination = colors.permutation.to_a.uniq
    colors_combination = colors_combination.select do |color_combination|
      unique_colors_positioning = unique_colors.map do |unique_color|
        color_combination.rindex(unique_color)
      end
      unique_colors_positioning == unique_colors_positioning.sort
    end
    puts colors_combination.count
    colors_combination.count
  else
    # invalid balls count
    nil
  end
else
  # invalid colors
  nil
end
end
test
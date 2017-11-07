index = 1

Theme.all.each do |theme|
  Content.all.each_with_index do |content, c_i|
    Order.seed_once do |s|
      s.id = index
      s.order = c_i + 1
      s.theme = theme
      s.content = content
    end
    index += 1
  end
end

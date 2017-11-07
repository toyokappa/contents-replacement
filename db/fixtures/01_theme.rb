3.times do |i|
  Theme.seed_once do |s|
    s.id = i + 1
    s.name = "Theme#{i + 1}"
  end
end

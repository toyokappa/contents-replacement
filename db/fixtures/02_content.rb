5.times do |i|
  Content.seed_once do |s|
    s.id = i + 1
    s.name = "content#{i + 1}"
    s.subject = "コンテンツ#{i + 1}"
  end
end

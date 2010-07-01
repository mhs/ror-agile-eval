Factory.define :post do |m|
  m.sequence(:author){ "Author #{n}" }
  m.sequence(:title) { "Title  #{n}" }
  m.description "lorem ipsum"
end
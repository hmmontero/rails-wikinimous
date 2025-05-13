require 'faker'

10.times do
  Article.create!(
    title: Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4),
    content: Faker::Lorem.paragraphs(number: 3, supplemental: false).join("\n\n"),
    created_at: Faker::Time.between(from: 30.days.ago, to: Time.now),
    updated_at: Faker::Time.between(from: 30.days.ago, to: Time.now),
  )
end

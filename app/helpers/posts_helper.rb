module PostsHelper
  def generate_title
    Faker::Book.title
  end

  def generate_body
    Faker::Lorem.sentence
  end
end

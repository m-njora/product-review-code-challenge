puts "🌱 Seeding data..."

# run loop 30 times
30.times do 
    # create a product with random book data
    product = Product.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        publisher: Faker::Book.publisher,
        genre: Faker::Book.genre
    )

    # create between 1 and 3 users for each product
    user = User.create(
        name: Faker::Artist.name
        email: Faker::Internet.email
    )
# create between 1 and 5 reviews for each product
    rand(1..5).times do
        Review.create(
            star_rating: rand(1..5),
            comment: Faker::Quote.matz,
            product_id: product.id,
            user_id: user.id
        )
    end
end

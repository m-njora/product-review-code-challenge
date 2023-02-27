class User < ActiveRecord::Base
    has_many :reviews
    has_many :products,through: :reviews

    def favourite_product
       self.reviews.maximum(:star_rating)
    end

    def remove_reviews(product)
        self.reviews.destroy_by(product: product)
    end
end
class Review < ActiveRecord::Base
belongs_to :product
belongs_to :user

def print_review
    "Review for #{product.title} by #{user.name}: #{self.star_rating}.#{self.comment}"
end
end
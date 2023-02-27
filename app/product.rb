class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    def leave_review(user,star_rating,comment)
        self.reviews.create(user,star_rating,comment)
    end

    def print_all reviews
        self.reviews.all.map do |review|
            "Review for #{self.title} by #{t.user.name}: #{t.star_rating}.#{t.comment}"
    end
end
def average_rating
    self.reviews.average(:star_rating).to_f

end
end
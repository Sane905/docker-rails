class Book < ApplicationRecord
    enum role: { draft: 0, in_review: 1, published: 2, archived: 3, review_requested: 4, change_requested: 5 }
    belongs_to :publisher, foreign_key: :publisher_id
    validates :name, length:{maximum:10}
    validates :price, length:{maximum:10}

    self.primary_key = :id
    before_validation(on: :create) do
      binding.pry
      self.id = SecureRandom.uuid
    end
end

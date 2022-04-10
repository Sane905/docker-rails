class Publisher < ApplicationRecord
    has_many :books

    before_validation(on: :create) do
     self.id = SecureRandom.uuid
    end
end

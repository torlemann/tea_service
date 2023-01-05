class CreateSubscription < ApplicationRecord
  belongs_to :tea
  belongs_to :customer
end

class Subscription < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :price
  validates_presence_of :status
  validates_presence_of :frequency
  validates_presence_of :tea_id
  validates_presence_of :customer_id

  belongs_to :tea
  belongs_to :customer
end

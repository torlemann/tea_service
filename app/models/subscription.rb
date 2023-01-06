class Subscription < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :price
  validates_presence_of :status
  validates_presence_of :frequency
  validates_presence_of :tea_id
  validates_presence_of :customer_id
  enum status: { "Inactive" => 0, "Active" => 1, "Cancelled" => 2}
  enum frequency: { "Weekly" => 1, "Monthly" => 2}

  belongs_to :tea
  belongs_to :customer
end

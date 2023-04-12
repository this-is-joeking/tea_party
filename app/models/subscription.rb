class Subscription < ApplicationRecord
  belongs_to :customer_id
  belongs_to :tea_id
end

class Offer < ApplicationRecord
  belongs_to :request
  belongs_to :helper, class_name: 'User'
  validates_uniqueness_of :helper_id, scope: :request_id, message: 'is already registered with this request'
end
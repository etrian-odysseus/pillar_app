class Ad < ActiveRecord::Base
  validates :company_name, presence: true
  has_and_belongs_to_many :newspapers
end

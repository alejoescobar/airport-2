class Flight < ActiveRecord::Base
  belongs_to :airline
  has_many :passengers
  has_one :departure
  has_one :arrival

  accepts_nested_attributes_for :departure, :arrival
end

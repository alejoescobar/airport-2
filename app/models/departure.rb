class Departure < ActiveRecord::Base
  belongs_to :flight

  enum status: [:closed, :on_gate, :boarding, :took_off]
end

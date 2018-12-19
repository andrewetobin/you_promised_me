class Promise < ApplicationRecord
  validates_presence_of :title, :from, :to, :description

end

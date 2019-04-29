class Schedule < ApplicationRecord
   has_many :appointments
   attr_readonly :title
end

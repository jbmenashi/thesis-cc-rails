class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :appointments
end

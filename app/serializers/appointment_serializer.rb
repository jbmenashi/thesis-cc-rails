class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :start_time, :end_time
  has_one :schedule
end

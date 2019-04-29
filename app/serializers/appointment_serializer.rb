class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :start_time, :end_time
  belongs_to :schedule
end

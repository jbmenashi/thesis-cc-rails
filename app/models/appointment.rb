class Appointment < ApplicationRecord
   belongs_to :schedule
   validates :end_time, numericality: { greater_than: :start_time }
   validate :no_overlap

   def no_overlap
      same_schedule = Appointment.select(schedule_id: self.schedule_id)
      for appointment in same_schedule do
         if (self.start_time >= appointment.start_time && self.start_time <= appointment.end_time) || (self.end_time >= appointment.start_time && self.end_time <= appointment.end_time)
            errors.add(:start_time, "cannot overlap appointment")
         end
      end
   end

end
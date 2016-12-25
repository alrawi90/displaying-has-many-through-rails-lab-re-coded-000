class Appointment < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient
    MONTHS={
		1=>	"January" ,
		2=>	"February" ,
		3=>	"March"   ,
		4=>	"April"  ,
		5=>	"May"  ,
		6=>	"June" ,
		7=>	"July"  ,
		8=>	"August" ,
		9=>	"September" ,
 		10=>"October"  ,
		11=>"November" ,
		12=>"December" 
		}
    def readable_time
		date_=self.appointment_datetime.to_a #[0, 20, 20, 11, 1, 2016, 1, 11, false, "UTC"]
 
		"#{MONTHS[date_[4]]} #{date_[3]}, #{date_[5]} at #{date_[2]}:#{date_[1]}"
	end
end

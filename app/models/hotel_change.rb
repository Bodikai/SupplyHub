class HotelChange < ApplicationRecord

	validates :booking_ref, presence: true # TO DO: MYB at start, then num, then B at end
	validates :lead_surname, presence: true # TO DO: Letters only
	validates :date_received, presence: true # TO DO: Date format?
	validates :date_advised, presence: true # TO DO: Date format?
	validates :arrival_date, presence: true # TO DO: Date format?
	validates :change_reason, presence: true # TO DO: Valid option
	validates :catalyst, presence: true # TO DO: Valid option
	validates :original_hotel, presence: true # TO DO: Valid hotel?
	#validates :new_hotel
	#validates :original_cost
	#validates :new_cost
	#validates :currency
	#validates :exchange_rate
	#validates :status
	#validates :date_resolved # TO DO: Date format?
	#validates :resolved_by
	#validates :notes
end

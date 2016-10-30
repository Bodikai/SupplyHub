class HotelChangesController < ApplicationController

	def index
		@hotelchanges = HotelChange.all
	end

	def show
		@hotelchange = HotelChange.find(params[:id])
	end

	def new
		@hotelchange = HotelChange.new
	end

	def edit
		@hotelchange = HotelChange.find(params[:id])
	end

	def create
		@hotelchange = HotelChange.new(hotelchange_params)

		if @hotelchange.save
			redirect_to @hotelchange
		else
			render 'new'
		end
	end

	def update
		@hotelchange = HotelChange.find(params[:id])

		if @hotelchange.update(hotelchange_params)
			redirect_to @hotelchange
		else
			render 'edit'
		end
	end

	def destroy
		@hotelchange = HotelChange.find(params[:id])
		@hotelchange.destroy

		redirect_to hotel_changes_path
	end

	private
		def hotelchange_params
			params.require(:hotelchange).permit(:booking_ref, :lead_surname,
				:date_received, :date_advised, :arrival_date, :change_reason,
				:catalyst, :original_hotel, :new_hotel, :original_cost,
				:new_cost, :currency, :exchange_rate, :status, :date_resolved,
				:resolved_by, :notes)
		end

end

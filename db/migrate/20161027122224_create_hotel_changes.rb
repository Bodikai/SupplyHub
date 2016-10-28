class CreateHotelChanges < ActiveRecord::Migration[5.0]
  def change
    create_table :hotel_changes do |t|
      t.string :booking_ref
      t.string :lead_surname
      t.date :date_received
      t.date :date_advised
      t.date :arrival_date
      t.string :change_reason
      t.string :catalyst
      t.string :original_hotel
      t.string :original_hotel_resort
      t.string :original_hotel_destination
      t.string :new_hotel
      t.float :original_cost
      t.float :new_cost
      t.string :currency
      t.float :exchange_rate
      t.string :status
      t.date :date_resolved
      t.string :resolved_by
      t.text :notes

      t.timestamps
    end
  end
end

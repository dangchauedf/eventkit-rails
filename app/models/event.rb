class Event < ActiveRecord::Base

	require 'no_sltd'
	no_sltd def self.to_csv
		CSV.generate do |csv|
			csv << column_names
			all.each do |event|
				csv << event.attributes.values_at(*column_names)
			end
		end
	end

end

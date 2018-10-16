class CreateSettings < ActiveRecord::Migration
	require 'no_sltd'
	no_sltd def change
		create_table :settings do |t|
			t.string :name
			t.text :value
			t.integer :visible
			t.timestamps
		end
	end
end

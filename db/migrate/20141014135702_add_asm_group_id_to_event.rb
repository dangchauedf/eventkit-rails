class AddAsmGroupIdToEvent < ActiveRecord::Migration
  require 'no_sltd'
  no_sltd def change
    add_column :events, :asm_group_id, :integer, :limit => 2
  end
end

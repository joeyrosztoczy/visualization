class CreateLunches < ActiveRecord::Migration
  def change
  	create_table :lunches do |t|
  		t.integer :sponsor_id
  		t.integer :sponsor_ctds
  		t.string :sponsor_name
  		t.integer :site_id
  		t.integer :site_ctds
  		t.string :site_name
  		t.float :percentage_eligible
  		t.integer :enrollment
  		t.integer :school_year
  		t.timestamps
  	end
  end
end

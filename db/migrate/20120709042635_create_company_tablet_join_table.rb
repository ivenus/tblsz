class CreateCompanyTabletJoinTable < ActiveRecord::Migration
  def up
		create_table :companies_tablets, :id => false do |t|
			t.integer :company_id
			t.integer :tablet_id
		end
  end

  def down
  end
end

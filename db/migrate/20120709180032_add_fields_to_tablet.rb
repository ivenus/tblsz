class AddFieldsToTablet < ActiveRecord::Migration
  def change
		add_column :tablets, :weight, :decimal
    add_column :tablets, :diagonal, :decimal
    add_column :tablets, :frontpic, :string
    add_column :tablets, :backpic, :decimal
    add_column :tablets, :respic, :decimal
    add_column :tablets, :sidepicleft, :string
    add_column :tablets, :sidepicright, :decimal
  end
end

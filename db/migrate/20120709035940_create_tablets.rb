class CreateTablets < ActiveRecord::Migration
  def change
    create_table :tablets do |t|
      t.string :name
      t.string :name2
      t.string :name3
      t.decimal :width
      t.decimal :height
      t.decimal :thickmax
      t.decimal :thickmin
      t.decimal :bezelwidth
      t.decimal :bezelheight
      t.integer :ppi
      t.integer :reshor
      t.integer :resver

      t.timestamps
    end
  end
end

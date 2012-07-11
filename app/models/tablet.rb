class Tablet < ActiveRecord::Base
  attr_accessible :company_ids, :bezelheight, :bezelwidth, :height, :name, :name2, :name3, :ppi, :reshor, :resver, :thickmax, :thickmin, :width, :weight, :diagonal, :frontpic
	has_and_belongs_to_many :companies
end

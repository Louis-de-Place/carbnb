class UpdateColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :offers, :title
    add_column :offers, :address, :string
    add_column :offers, :availability_start, :date
    add_column :offers, :availability_end, :date
    add_column :offers, :description, :text
  end
end

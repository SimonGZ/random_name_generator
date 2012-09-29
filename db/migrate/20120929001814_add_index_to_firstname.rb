class AddIndexToFirstname < ActiveRecord::Migration
  def change
    add_index :firstnames, :gender
    add_index :firstnames, :frequency
    add_index :firstnames, :rank
  end
end

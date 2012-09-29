class AddIndexToSurname < ActiveRecord::Migration
  def change
    add_index :surnames, :frequency
    add_index :surnames, :rank
    add_index :surnames, :pctwhite
    add_index :surnames, :pctblack
    add_index :surnames, :pctasian
    add_index :surnames, :pctnative
    add_index :surnames, :pcthispanic
  end
end

class CreateSurnames < ActiveRecord::Migration
  def change
    create_table :surnames do |t|
      t.string :body
      t.decimal :frequency, :precision => 5, :scale => 2
      t.integer :rank
      t.decimal :pctwhite, :precision => 4, :scale =>2
      t.decimal :pctblack, :precision => 4, :scale =>2
      t.decimal :pctasian, :precision => 4, :scale =>2
      t.decimal :pctnative, :precision => 4, :scale =>2
      t.decimal :pcthispanic, :precision => 4, :scale =>2

      t.timestamps
    end
  end
end

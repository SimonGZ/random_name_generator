class CreateFirstnames < ActiveRecord::Migration
  def change
    create_table :firstnames do |t|
      t.string :body
      t.string :gender
      t.decimal :frequency, :precision => 4, :scale => 3
      t.integer :rank

      t.timestamps
    end
  end
end

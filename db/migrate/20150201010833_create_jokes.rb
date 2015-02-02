class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.text :setup
      t.text :punch_line

      t.timestamps null: false
    end
  end
end

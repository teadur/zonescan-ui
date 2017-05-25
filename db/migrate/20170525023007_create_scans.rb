class CreateScans < ActiveRecord::Migration[5.1]
  def change
    create_table :scans do |t|
      t.string :name
      t.datetime :time
      t.text :result

      t.timestamps
    end
  end
end

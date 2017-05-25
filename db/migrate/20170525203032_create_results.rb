class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :name
      t.timestamp :time
      t.integer :http_code
      t.string :dns
      t.boolean :https
      t.integer :runid
      t.string :status

      t.timestamps
    end
  end
end

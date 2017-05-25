class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :name
      t.timestamp :time
      t.integer :http_code
      t.string :dns
      t.bool :https
      t.integer :runid

      t.timestamps
    end
  end
end

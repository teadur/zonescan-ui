class AddForeginKeysToScans < ActiveRecord::Migration[5.1]
  def change
	 add_foreign_key :results, :scans
  end
end

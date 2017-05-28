class AddForeginKeysToDomains < ActiveRecord::Migration[5.1]
  def change
	  add_foreign_key :domains, :results, column: :lastrun, primary_key: "runid"
  end
end

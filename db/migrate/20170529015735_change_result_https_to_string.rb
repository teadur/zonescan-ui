class ChangeResultHttpsToString < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      change_table :results do |t|
        dir.up   { t.change :https, :varchar }
        dir.down { t.change :https, :boolean }
      end
    end
  end
end

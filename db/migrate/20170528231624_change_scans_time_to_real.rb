class ChangeScansTimeToReal < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      change_table :scans do |t|
        dir.up   { t.change :time, :decimal }
        dir.down { t.change :time, :datetime }
      end
    end
  end
end

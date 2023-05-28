class CreateSerie < ActiveRecord::Migration[7.0]
  def change
    create_table :series do |t|

      t.timestamps
    end
  end
end

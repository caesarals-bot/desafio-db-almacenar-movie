class AddNameSynopsisDirectorToSeries < ActiveRecord::Migration[7.0]
  def change
    add_column :series, :name, :string
    add_column :series, :synopsis, :text
    add_column :series, :director, :string
  end
end

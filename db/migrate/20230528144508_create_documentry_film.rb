class CreateDocumentryFilm < ActiveRecord::Migration[7.0]
  def change
    create_table :documentry_films do |t|

      t.timestamps
    end
  end
end

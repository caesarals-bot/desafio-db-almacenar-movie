class AddNameSynopsisDirectorToDocumentry < ActiveRecord::Migration[7.0]
  def change
    add_column :documentry_films, :name, :string
    add_column :documentry_films, :synopsis, :text
    add_column :documentry_films, :director, :string
  end
end

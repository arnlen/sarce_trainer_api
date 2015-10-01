class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.string :name
      t.string :short_name
      t.string :download_url

      t.timestamps
    end
  end
end

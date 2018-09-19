class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :name
      t.integer :nb_articles

      t.timestamps
    end
  end
end

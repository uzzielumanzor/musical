class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :petition
      t.string :tipo
      t.text :resp

      t.timestamps
    end
  end
end

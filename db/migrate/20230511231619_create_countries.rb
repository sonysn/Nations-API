class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :NAME
      t.string :SYMBOL
      t.string :FLAGS

      t.timestamps
    end
  end
end

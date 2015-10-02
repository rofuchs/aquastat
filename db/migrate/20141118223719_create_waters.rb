class CreateWaters < ActiveRecord::Migration
  def change
    create_table :waters do |t|
      t.datetime :datum
      t.float :cl2
      t.float :ph
      t.integer :kh
      t.integer :gh
      t.float :NO2
      t.float :NO3
      t.float :temperatur
      t.text :kommentar

      t.timestamps
    end
  end
end

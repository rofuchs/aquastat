class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :fischart
      t.string :farbe
      t.integer :anzahl
      t.string :sex
      t.text :kommentar

      t.timestamps
    end
  end
end

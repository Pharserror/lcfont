class CreateAnalyses < ActiveRecord::Migration
  def change
    create_table :analyses do |t|
      t.string :name
      t.text :desc
      t.string :instrument
      t.float :cost
      t.string :astm
      t.string :photo
      t.integer :turnaround
      t.string :limit
      t.string :unit
      t.string :volumerequired
      t.string :package_id

      t.timestamps
    end
  end
end
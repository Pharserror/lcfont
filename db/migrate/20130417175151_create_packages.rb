class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.string :desc
      t.float :marketedprice

      t.timestamps
    end
  end
end

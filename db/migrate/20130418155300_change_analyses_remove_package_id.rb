class ChangeAnalysesRemovePackageId < ActiveRecord::Migration
  def change
    change_table :analyses do |t|
      t.remove :package_id
    end
  end
end
class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name
      t.integer :group_size
      t.string :allergies
    end
  end
end

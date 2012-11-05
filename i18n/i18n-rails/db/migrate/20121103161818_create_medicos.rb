class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :crm
      t.integer :pessoa_id

      t.timestamps
    end
    add_index :medicos, :pessoa_id
    
  end
end

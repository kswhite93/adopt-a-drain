class AddStructureNumberToThings < ActiveRecord::Migration
  def change
    add_column :things, :structure_number, :string
  end
end

class AddColumnToLayout < ActiveRecord::Migration[5.2]
  def change
    add_column :layouts, :contract_id, :integer
  end
end

class CreateVariableLists < ActiveRecord::Migration[5.2]
  def change
    create_table :variable_lists do |t|
      t.integer :contract_id
      t.string :cont_var_list

      t.timestamps
    end
  end
end

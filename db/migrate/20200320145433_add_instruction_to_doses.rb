class AddInstructionToDoses < ActiveRecord::Migration[6.0]
  def change
    add_column :doses, :instruction, :text
  end
end

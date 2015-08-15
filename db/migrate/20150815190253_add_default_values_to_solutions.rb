class AddDefaultValuesToSolutions < ActiveRecord::Migration
  def change
    change_column :solutions, :output, :string, default: nil
    change_column :solutions, :result, :string, default: nil
  end
end

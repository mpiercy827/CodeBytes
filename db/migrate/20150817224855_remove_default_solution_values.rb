class RemoveDefaultSolutionValues < ActiveRecord::Migration
  def change
    change_column :solutions, :output, :string
    change_column :solutions, :result, :string
  end
end

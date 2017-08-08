class AddProcessingTag < ActiveRecord::Migration[5.0]
  def change
    add_column :tags,:processing,:string
  end
end

class AddBehanceToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :behance, :string
  end
end

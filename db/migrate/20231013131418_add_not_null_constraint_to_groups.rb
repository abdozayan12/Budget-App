# frozen_string_literal: true

class AddNotNullConstraintToGroups < ActiveRecord::Migration[7.0]
  def up
    change_column :groups, :name, :string, null: false
    change_column :groups, :icon, :string, null: false
  end

  def down
    change_column :groups, :name, :string, null: true
    change_column :groups, :icon, :string, null: true
  end
end

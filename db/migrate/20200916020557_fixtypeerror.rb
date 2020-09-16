class Fixtypeerror < ActiveRecord::Migration[6.0]
  def change
    rename_column :accounts, :type, :atype
  end
end

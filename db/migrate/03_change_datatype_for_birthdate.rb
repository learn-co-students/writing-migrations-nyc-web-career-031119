class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.2]

  def change
    change_column :students, :birthdate, :datetime
    # change_column(table_name, column_name, type).
  end
end

class AddNationalityBirthdateFavgenreToDirectors < ActiveRecord::Migration[7.1]
  def change
    add_column :directors, :nationality, :string
    add_column :directors, :birth_date, :date
    add_reference :directors, :genre, null: false, foreign_key: true
  end
end

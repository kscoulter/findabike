class MakeProfileTable < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :phone
      t.string :race
      t.string :ethnicity
      t.string :sex
      t.date :DOB
    end
  end
end

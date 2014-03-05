class CreatePersonalInfos < ActiveRecord::Migration
  def change
    create_table :personal_infos do |t|
      t.string :name
      t.string :tagline
      t.text :about
      t.string :email
      t.string :address
      t.string :phone
      t.string :twitter
      t.string :linkedin
      t.string :facebook
      t.string :google
      t.string :url

      t.timestamps
    end
  end
end

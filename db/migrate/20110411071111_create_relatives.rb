class CreateRelatives < ActiveRecord::Migration
  def self.up
    create_table :relatives do |t|
      t.integer :relationship
      t.string :name
      t.integer :sex # 0 == female, 1 == male
      t.string :last_education
      t.string :birthplace
      t.date :birthdate
      t.string :company
      t.string :title
      
      t.integer :employee_id
      

      t.timestamps
    end
  end

  def self.down
    drop_table :relatives
  end
end

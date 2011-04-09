class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :name
      t.string :sex  # 0 == female, 1 == male
      t.string :nationality
      t.string :race
      t.string :identity_number
      t.string :religion
      t.integer :blood_type  # 0 = A, 1 = B, 2 = AB , 3 = O
      t.integer  :rhesus  # 0 == negative , 1 == positive
      
      t.string :registered_address
      t.string :registered_city
      t.string :registered_postal_code
      
      t.string :current_address
      t.string :current_city
      t.string :current_postal_code
      t.integer :residential_status
      # => 1. Milik Sendiri
      # => 2. Milik Keluarga
      # => 3. Kontrak
      # => 4. Kost
      
      t.integer :marriage_status 
      # => 1. Menikah
      # => 2. Duda/Janda cerai
      # => 3. Belum Menikah
      
      t.string :email
      t.string :residential_phone_number
      t.string :mobile_phone_number
      
      t.string :tax_number
      t.string :bank
      t.string :bank_account_number
      
      
      
      
      

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end

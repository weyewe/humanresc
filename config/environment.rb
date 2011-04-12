# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Humanresc::Application.initialize!


RELATIVE_CONSTANT = {
  1 => "Ayah",
  2 => "Ibu",
  3 => "Saudara",
  4 => "Istri/Suami (SAH)",
  5 => "Anak",
}

SEX_CONSTANT =  {
  0 => "Perempuan", 
  1 => "Laki-laki"
}

MARRIAGE_STATUS_CONSTANT = {
  1 =>  "Menikah",
 2 =>  "Duda/Janda cerai",
  3 =>  "Belum Menikah"
}

RESIDENTIAL_STATUS_CONSTANT = {
  1 =>  "Milik Sendiri",
  2 => "Milik Keluarga",
  3 => "Kontrak",
  4 => "Kost"
}

BLOODTYPE_CONSTANT = {
  0 => "A",
  1 => "B", 
  2 => "AB" , 
  3 => "O"
}
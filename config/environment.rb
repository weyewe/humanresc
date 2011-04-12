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
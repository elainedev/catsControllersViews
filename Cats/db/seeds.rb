#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime
#  updated_at  :datetime

ActiveRecord::Base.transaction do

Cat.destroy_all

cat1 = Cat.create(birth_date: Date.new(2000,1,1), color: "black", name: "Samantha", sex: :F, description: "A witchy cat")
cat2 = Cat.create(birth_date: Date.new(2001,1,1), color: "orange", name: "Garfield", sex: :M, description: "Fatty")
cat3 = Cat.create(birth_date: Date.new(2002,1,1), color: "gray", name: "Norman", sex: :F, description: "A cute cat")
cat4 = Cat.create(birth_date: Date.new(2003,1,1), color: "white", name: "Invisible", sex: :M, description: "A fancy cat")
cat5 = Cat.create(birth_date: Date.new(2004,1,1), color: "tawny", name:     "Hermione", sex: :F, description: "A smart cat")


end
  # SEXES = [:M, :F]
  # COLORS = %w(white, orange, black, mixed, gray, tawny, spotted)

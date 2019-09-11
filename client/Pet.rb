class Pet
  
  attr_accessor :name
  attr_accessor :birthDate
  attr_accessor :weight
  attr_reader :type = {dog: "Dog", cat: "Cat", bird: "Bird", rodent: "Rodent"}
  vaccines = new Vaccine[]
  photos = new Photo[]

  def initialize(name, birthDate, weight, type)
    @name = name
    @birthDate = birthDate
    @weight = weight
    @type = type
  end

  def setType(:type)
    @type = :type
  end

  def makeSound
    case @type
    when :dog
      return "au au"
    when :cat
      return "miau"
    when :bird
      return "piu piu"
    else
      return "???"
  end

  def getAge
    return Date.today - @birthDate
  end

  def getLifeStage
    if (getAge() < 2)
      return "puppy"
    elsif (getAge() < 8)
      return "adult"
    end
    return "old"
  end

end
# Monster class
class Monster
  attr_accessor :threat_level, :name, :habitat
  @@count = 0
  @class_description = "A scary monster"
  def initialize(threat_level=:medium)
    @threat_level = threat_level
    p "Rwar!"
    @@count += 1
    p "#{@@count}"
  end

  def self.class_description
    @class_description
  end

  def habitat?(tst_habitat)
    @habitat == tst_habitat
  end
  # class variable for count
  def self.count
    @@count
  end

  def self.fight(fone,ftwo)
    o = fone.threat_level
    t = ftwo.threat_level
    if o == t
      ftwo
    elsif o == :low
      ftwo
    elsif o == :midnight
      fone
    elsif o == :medium
      if t == :low
        fone
      else
        ftwo
      end
    elsif o == :high
      if t == :midnight
        ftwo
      else
        fone
      end
    end
  end

  def get_dangerous
    # ruby version of a switch statement is case
    case @threat_level
      when :low
        @threat_level = :medium
      when :medium
        @threat_level = :high
      when :high
        @threat_level = :midnight
      when :midnight
        :midnight
    end
  end
end # monster class end

class Zombie < Monster
  @class_description = "Grrrrr"
  def initialize (threat_level=:medium)
    super(threat_level)
    @habitat = "graveyard"
  end

  def class_description
    @class_description
  end

end # Werewolf end

class Werewolf < Monster
  @class_description = "Ahhhooooo"
  def initialize (threat_level=:low)
    super(threat_level)
  end

  def class_description
    @class_description
  end

  def update_threat_level(full_moon)
    if full_moon
      @threat_level = :midnight
    else
      @threat_level = :low
    end
    @threat_level
  end
end

module Flying
  def fly
    p "it soars across the sky"
  end
end

class Vampire < Monster
  @class_description = "blood blood"
  include Flying
end

# def habitat=(habitat)
#   @habitat = habitat
# end
#
# def habitat
#   @habitat
# end

# def name=(name)
#   @name = name
# end
#
# def name
#   @name
# end
  # getters and setters for instance variables

  # class instance variable for class description

  # class method getter for @@count class variable

  # class method getter for @class_description class instance variable

  # initial behavior

  # habitat? instance method

  # get_dangerous instance method

  # fight class method

# Zombie class

  # zombie version of class_description

  # initial behavior and values

# Werewolf class

  # werewolf version of class_description

  # initial behavior and values

  # update_threat_level instance method

# Flying module

  #fly method

# Vampire class

  # vampire class description

  # Flying module included

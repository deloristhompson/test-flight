class Airplane
  attr_reader :type, :wing_loading, :horsepower, :fuel
  def initialize(type, wing_loading, horsepower, fuel)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @fuel = fuel
  end

  def start(engine)
    if engine == "on"
      "airplane started"
    elsif engine == "off"
      "airplane already started"
    end
  end

  def takeoff(flying)
    if flying == "no"
      "airplane not started, please start"
    elsif flying == "yes"
      "airplane launched"
    end
  end

  def land(touchdown)
    if touchdown == "no"
      "airplane not started, please start"
    elsif touchdown == "yes"
      "airplane landed"
    elsif touchdown == "ready"
      "airplane already on the ground"
    end
  end
end

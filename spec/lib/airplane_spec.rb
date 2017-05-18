require_relative "../../lib/airplane"

describe Airplane do
  let(:my_plane) {my_plane = Airplane.new("cesna", 10, 150, 2000)}
  describe "#initialization" do
    it "returns the plane type after creating the object" do
      expect(my_plane.type).to eq("cesna")
    end

    it "returns the wing loading" do
      expect(my_plane.wing_loading).to eq(10)
    end

    it "returns the horsepower" do
      expect(my_plane.horsepower).to eq(150)
    end
  end

  describe "#start" do
    it "starts the airplane" do
      expect(my_plane.start("on")).to eq("airplane started")
    end

    it "does not start the plane" do
      expect(my_plane.start("off")).to eq("airplane already started")
    end
  end

  describe "#takeoff" do
    it "informs pilot that plane is off" do
      expect(my_plane.takeoff("no")).to eq("airplane not started, please start")
    end

    it "informs pilot that plane is set for launch" do
      expect(my_plane.start("on")).to eq("airplane started")
      expect(my_plane.takeoff("yes")).to eq("airplane launched")
    end
  end

  describe "#land" do
    it "informs that the plane is not started" do
      expect(my_plane.land("no")).to eq("airplane not started, please start")
    end

    it "informs that the plane is started but still on tarp" do
      expect(my_plane.land("ready")).to eq("airplane already on the ground")
    end

    it "informs pilot that plane is still in air and ready to land." do
      expect(my_plane.start("on")).to eq("airplane started")
      expect(my_plane.takeoff("yes")).to eq("airplane launched")
      expect(my_plane.land("yes")).to eq("airplane landed")
    end
  end
end

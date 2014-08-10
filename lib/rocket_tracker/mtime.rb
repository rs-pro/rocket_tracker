class Mtime < BinData::Primitive
  uint64be :time

  def set(val)
    self.time = val.to_i
  end

  def get
    Time.at(time)
  end
end


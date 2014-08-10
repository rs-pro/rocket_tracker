require 'digest/sha2'

module RocketTracker
  class PageView < BinData::Record
    endian :big
    uint8  :protocol
    uint32 :len, value: lambda { payload.length }
    string :payload, read_length: :len
    string :sha, length: 32
    mtime :timestamp

    def data=(value)
      self.payload = Yajl.dump(value)
      self.sha = Digest::SHA256.digest(payload + RocketTracker.config.api_key)
    end
  end
end


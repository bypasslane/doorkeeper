case DOORKEEPER_ORM
when :active_record
  class Device < ActiveRecord::Base
  end
when :mongoid2, :mongoid3
  class Device
    include Mongoid::Document
    include Mongoid::Timestamps

    field :name, :type => String
  end
when :mongo_mapper
  class Device
    include MongoMapper::Document
    timestamps!

    key :name,     String
  end
end

class Device
end

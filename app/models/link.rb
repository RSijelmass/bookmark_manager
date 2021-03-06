require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper::Logger.new($stdout, :debug)

class Link
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :url, String
end

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_test")
DataMapper.finalize
DataMapper.auto_upgrade!

link1 = Link.create(title: "test", url: "test.com")
p link1


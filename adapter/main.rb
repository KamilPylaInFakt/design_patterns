require './client'
require './adapter'
require './bussiness'

bussiness_object = Bussiness.new

client = Client.new(object: Adapter.new(object: bussiness_object))

client.perform
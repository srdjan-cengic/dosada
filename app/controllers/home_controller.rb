class HomeController < ApplicationController
  def index
  	@posts = User.joins(:entries => [{:storage => :vote}, :category])
  	             .where("votes.count > ?", 0)
                 .select("users.username AS username,
                         storages.id AS storage_id,
                         storages.title AS title, 
                         storages.content AS content, 
                         votes.count AS votes, 
                         categories.category_name AS category_name")
                 .order("votes.count DESC")
    #< ActiveRecord::Relation [#<User id: nil, username: "dhusic">,              @posts[0]
                               #<User id: nil, username: "scengic">,             @posts[1]
                               #<User id: nil, username: "mvistica">,            ...
                               #<User id: nil, username: "mvistica">, 
                               #<User id: nil, username: "scengic">, 
                               #<User id: nil, username: "dhusic">, 
                               #<User id: nil, username: "mmilicevic">, 
                               #<User id: nil, username: "mmilicevic">]>         @posts[7]
    # @post[0].attributes
    # { "username"=>"dhusic", 
    #   "storage_id"=>7, 
    #   "title"=>"So I got that", 
    #   "content"=>"http://d24w6bsrhbeh9d.cloudfront.net/photo/av05den_460s.jpg", 
    #   "votes"=>9898, 
    #   "category_name"=>"slike", 
    #   "id"=>nil }
  end
end

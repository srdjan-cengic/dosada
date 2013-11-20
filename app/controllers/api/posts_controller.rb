class Api::PostsController < ApplicationController
  respond_to :json, :xml #ako dodje i poziv sa formatom .xml (po defaultu je .json)

  def index
    # To json or xml(depends on comming url) -> 5 daily most popular posts
    @posts = User.joins(:entries => [{:storage => :vote}, :category])
                 .merge(Entry.created_after(Time.now))
                 .select("users.username AS username,
                         storages.title AS title, 
                         storages.content AS content, 
                         votes.count AS votes, 
                         categories.category_name AS category_name")
                 .order("votes.count DESC")
                 .take(5)

    respond_with(@posts)
  end

  def search_by_word
    # http://localhost:3000/api/posts/search_by_word.xml?title=Dijete
    @posts = User.joins(:entries => [{:storage => :vote}, :category])
                 .where("storages.content LIKE ? OR storages.title LIKE ?", "%#{params[:title]}%", "%#{params[:title]}%")
                 .select("users.username AS username,
                          storages.title AS title, 
                          storages.content AS content, 
                          votes.count AS votes, 
                          categories.category_name AS category_name")
                 .order("votes.count DESC")

    respond_with(@posts)
  end
end

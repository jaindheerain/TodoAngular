class TodosController < ApplicationController

  def new


  end

  def show
    posts = Todo.all

    if(posts.size==0)
      posts={task: 'Things empty'}
    end
    render :json => posts and return end

  def create

  end



end

class TodosController < ApplicationController

  skip_before_action :verify_authenticity_token

  def options
    @todo=Todo.new(todo_params)
    @todo.save
  end


  def new
    @todo =Todo.new
  end

  def show
    posts = Todo.all

    if(posts.size==0)
      posts={list:[{task: "Things empty"}]}
    end
    render :json => posts and return end

  def create

    puts params[:task]
    puts "11111111111111111111111111111111111111111111111111111111"
    @todo=Todo.create(task: params[:task])

  end

  def edittask
    puts params
    puts "11111111111111111111111111111111111111111111111111111111"
    @todo = Todo.find(params[:id])

    if @todo.update(task: params[:task])
      render :json => {message: "Success"} and return
    else
      render :json => {message: "Error"} and return
    end
  end

  def edit
    @todo=Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo.update(todo_params)
      render :json => {message: "Success"} and return
    else
      render :json => {message: "Error"} and return
    end
  end



  private

  def todo_params
    params.permit(params[:task],params[:id])
  end


end

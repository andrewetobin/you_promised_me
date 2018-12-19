class PromisesController < ApplicationController
  before_action :set_promise, only: [:show, :destroy, :edit, :update]

  def index
    @promises = Promise.all
  end

  def show
  end

  def new
    @promise = Promise.new
  end

  def create
    @promise = Promise.new(promise_params)
    @promise.save
    flash.notice = "Promise '#{@promise.title}' created!"
    redirect_to promise_path(@promise)
  end

  def destroy
    Promise.destroy(params[:id])
    flash.notice = "Promise '#{@promise.title}' deleted!"
    redirect_to promises_path
  end

  def update
    @promise.update(promise_params)

    flash.notice = "Promise '#{@promise.title}' updated!"

    redirect_to promise_path(@promise)
  end

  def edit

  end

  private

    def promise_params
      params.require(:promise).permit(:title, :from, :to, :description)
    end

    def set_promise
      @promise = Promise.find(params[:id])
    end

end

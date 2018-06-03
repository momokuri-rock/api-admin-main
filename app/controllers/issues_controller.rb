class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :update, :edit]

  def index
    @issues = Issue.all
  end

  def show
  end

  def edit
    render action: "show"
  end

  def create
    if !Issue.create(params[:issue])
      render template: "shared/error", status: :unprocessable_entity
      return
    end
    render action: "show" 
  end

  def update
    if !@issue.update(params[:issue])
      render template: "shared/error", status: :unprocessable_entity
      return
    end
    render action: "show"
  end

  private
  def set_issue
    @issue = Issue.find(params[:id])
  end
end

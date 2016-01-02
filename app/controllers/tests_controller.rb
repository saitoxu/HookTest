class TestsController < ApplicationController
  unloadable

  def update
    test = Test.find_by(issue_id: params[:issue_id].to_i)

    column = "content"
    value = params[:value]

    if params[:pk].to_i == 2
      column = "result"
      value = value.to_i
    end

    if test.update(column => value)
      render :nothing => true, :status => 200
    else
      render :nothing => true, :status => 404
    end
  end
end

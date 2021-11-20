class LogsController < ApplicationController

  before_action :authenticate_user!, only: [:index]

  # 必须用这个，否则post会被拦截
  skip_before_action :verify_authenticity_token

  def index
    @logs = Log.order('created_at desc').page(params[:page]).per(100)
  end

  def create
    save
    render plain: 1
  end

  def x
    save
    render plain: 1
  end

  def fake_index
  end

  private
  def save
    controller = params[:controller]
    action = params[:action]
    request_type = restful_method(params)
    Log.create!(:action => action, :controller => controller,
        :parameters =>  params.inspect,
        :remote_ip=> request.remote_ip,
        :restful_method => restful_method(params),
        :full_request => request.inspect
               )
  end
  # return: get, post, put or delete
  def restful_method(params)
    return request.method.downcase
    #params[:authenticity_token].blank? ? 'get' : ((params[:_method]) || 'post')
  end
end

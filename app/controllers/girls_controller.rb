# encoding: utf-8
class GirlsController < ApplicationController
  before_action :admin_required

  def index
    @girls = current_event.girls
  end

  def create
    g = current_event.girls.build girl_params do |girl|
      girl.attended = true
    end

    if g.save
      flash[:notice] = t('event.attend.success', :name => g.name)
    else
      flash[:notice] = t('event.attend.fail', :name => g.name)
    end

    redirect_to event_girls_path(params[:event_id])
  end

  def attend
    g = current_event.participators.find(params[:id])

    if g.attend
      flash[:notice] = t('event.attend.success', :name => g.name)
    else
      flash[:notice] = t('event.attend.fail', :name => g.name)
    end

    redirect_to event_girls_path(params[:event_id])
  end

  def import
    require 'csv'

    # csv format: "姓名,邮箱"
    # csv origin encoding: UTF-8
    # csv separator: comma
    CSV.open(params[:csv].tempfile) do |csv|
      header = csv.shift
      unless header[0] == 'Name' and header[1] == 'Email'
        return redirect_to event_girls_path(params[:event_id]),
                           :notice => t('event.import.fail', :filename => params[:csv].original_filename)
      end

      csv.each do |row|
        current_event.girls.create :name => row[0], :email => row[1]
      end

      redirect_to event_girls_path(params[:event_id]),
                  :notice => t('event.import.success', :filename => params[:csv].original_filename)
    end
  end

  private
  def current_event
    Event.find(params[:event_id])
  end

  def girl_params
    params.require(:girl).permit!
  end
end

class StampingController < ApplicationController
  def new
  end
end


class StampingController < ApplicationController
  def new
    @record = WorkTimeRecords.new
  end
  
  def create
    @record = WorkTimeRecords.new(record_param)
    @record.user = session[:user_id]
    if @record.save
      puts @record.user
    end
  end
  
  
  
  private
  def record_params
    params.require(:record).permit(:work_from, :work_to, :break_from,
                                 :break_to)
  end
end

class StampingController < ApplicationController
  def new
  end
end


class StampingController < ApplicationController
  def new
    @record = WorkTimeRecord.new
  end
  
  def create
    @user = User.find(session[:user_id])
    @record = @user.WorkTimeRecords.new(record_params)
    puts User.find(session[:user_id])
    if @record.save
      puts @record.user
      puts "succeed"
      flash[:success] = "正常に打刻されました"
    else
      puts "not recorded"
    end
  end
  
  
  
  private
  def record_params
    params.require(:work_time_record).permit(:work_from, :work_to, :break_from,
                                 :break_to)
  end
end

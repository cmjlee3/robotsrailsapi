class RobotsController < ApplicationController
  def index
    @robots = Robot.all
    render json: @robots
  end

  def show
    @robot = Robot.find_by_id(params[:id])
    render json: @robot
  end

  def create
    new_robot = Robot.new(permitted_params)
    if new_robot.save
      render json: new_robot
    else
      render status: 422
    end
  end

  def update
    found_robot = Robot.find_by_id(params[:id])
    saved = found_robot.update(permitted_params)
    if saved
      render status: 204
    else
      render status: 422
    end
  end

  def destroy
    found_robot = Robot.find_by_id(params[:id])
    if found_robot.destroy!
      render status: 204
    else
      render status: 422
    end
  end

  private

  def permitted_params
    params.require(:robot).permit(:name, :avatar, :skill, :serial)
  end







end #ends RobotController Class

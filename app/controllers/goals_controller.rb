class GoalsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_goal, only: %i[ show edit update destroy ]

  # GET /goals or /goals.json
  def index
    @goals = Goal.all

    if params[:status].present? && Goal.statuses.key?(params[:status])
      @goals = @goals.where(status: Goal.statuses[params[:status]])
    end

    # Filter by due date (e.g., '2025-07-07')
    if params[:due].present?
      begin
        date = Time.zone.parse(params[:due]).to_date
        @goals = @goals.where(due_date: date)
      rescue ArgumentError
        # ignore bad date
      end
    end
    
    @goal_icons = GOAL_ICONS
  
    # Apply search filter using 'title'
    if params[:search].present?
      @goals = @goals.where("title ILIKE ?", "%#{params[:search]}%")
    end
  
    # Keep due date sorting if needed
    @goals_by_due_date_asc = @goals.order(due_date: :asc)
  end  

  # GET /goals/1 or /goals/1.json
  def show
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals or /goals.json
  def create
    @goal = Goal.new(goal_params)

    respond_to do |format|
      if @goal.save
        format.html { redirect_to @goal, notice: "Goal was successfully created." }
        format.json { render :show, status: :created, location: @goal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals/1 or /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to @goal, notice: "Goal was successfully updated." }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1 or /goals/1.json
  def destroy
    @goal.destroy!

    respond_to do |format|
      format.html { redirect_to goals_path, status: :see_other, notice: "Goal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def goal_params
      params.require(:goal).permit(:title, :description, :due_date, :priority, :category, :status, :completed_at)
    end
end

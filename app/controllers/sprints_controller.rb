class SprintsController < ApplicationController
  before_action :set_sprint, only: [:show, :edit, :update, :destroy]

  # GET /sprints
  # GET /sprints.json
  def index
    @sprints = Sprint.all
  end

  # GET /sprints/1
  # GET /sprints/1.json
  def show
  end

  def findUser(id)
    user = User.find(id)
   return user.first_name
  end
  helper_method :findUser


  def displayStatus(number)
    if number == 2 
  return "In track"
  else
  return "Done"
  end
  end
  helper_method :displayStatus


  # GET /sprints/new
  def new
    @sprint = Sprint.new
  end

  # GET /sprints/1/edit
  def edit
  end

  # POST /sprints
  # POST /sprints.json
  def create
    @sprint = Sprint.new(sprint_params)

    respond_to do |format|
      if @sprint.save
        format.html { redirect_to @sprint, notice: 'Sprint was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sprint }
      else
        format.html { render action: 'new' }
        format.json { render json: @sprint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprints/1
  # PATCH/PUT /sprints/1.json
  def update
    respond_to do |format|
      if @sprint.update(sprint_params)
        format.html { redirect_to @sprint, notice: 'Sprint was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sprint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprints/1
  # DELETE /sprints/1.json
  def destroy
    @sprint.destroy
    respond_to do |format|
      format.html { redirect_to sprints_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprint
      @sprint = Sprint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprint_params
      params.require(:sprint).permit(:project_id, :name)
    end
end

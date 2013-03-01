class TeamCoachesController < ApplicationController
  # GET /team_coaches
  # GET /team_coaches.json
  def index
    @team_coaches = TeamCoach.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @team_coaches }
    end
  end

  # GET /team_coaches/1
  # GET /team_coaches/1.json
  def show
    @team_coach = TeamCoach.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @team_coach }
    end
  end

  # GET /team_coaches/new
  # GET /team_coaches/new.json
  def new
    @team_coach = TeamCoach.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @team_coach }
    end
  end

  # GET /team_coaches/1/edit
  def edit
    @team_coach = TeamCoach.find(params[:id])
  end

  # POST /team_coaches
  # POST /team_coaches.json
  def create
    @team_coach = TeamCoach.new(params[:team_coach])

    respond_to do |format|
      if @team_coach.save
        format.html { render :action => "index", :notice => 'Team coach was successfully created.' }
        format.json { render :json => @team_coach, :status => :created, :location => @team_coach }
      else
        format.html { render :action => "new" }
        format.json { render :json => @team_coach.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /team_coaches/1
  # PUT /team_coaches/1.json
  def update
    @team_coach = TeamCoach.find(params[:id])

    respond_to do |format|
      if @team_coach.update_attributes(params[:team_coach])
        format.html { redirect_to @team_coach, :notice => 'Team coach was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @team_coach.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /team_coaches/1
  # DELETE /team_coaches/1.json
  def destroy
    @team_coach = TeamCoach.find(params[:id])
    @team_coach.destroy

    respond_to do |format|
      format.html { redirect_to team_coaches_url }
      format.json { head :no_content }
    end
  end
end

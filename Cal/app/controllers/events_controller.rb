class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    if signed_in?
      @events = Event.find_all_by_owner(current_user.username)
    else
      @events = Event.all
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    if !signed_in?
       respond_to do |format|
        format.html {redirect_to events_url}# new.html.erb
        format.json { render json: events_url }
      end
    else
      @event = Event.new
    end
  end

  # GET /events/1/edit
  def edit
    if !signed_in?
       respond_to do |format|
        format.html {redirect_to events_url}# new.html.erb
        format.json { render json: events_url }
      end
    else
    @event = Event.find(params[:id])
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @event }
    end
 
    end 
  end

  # POST /events
  # POST /events.json
  def create
    if !signed_in?
       respond_to do |format|
        format.html {redirect_to events_url}# new.html.erb
        format.json { render json: events_url }
      end
    else
      @event = Event.new(params[:event])
      @event[:owner] = current_user.username
      respond_to do |format|
        if @event.save
          flash[:state] = "success"
          flash[:notice]= "Event was successfully create!"
          format.html { redirect_to :action =>"index" }
          format.json { render json: events_url, status:"success"}
        else
          flash[:state] = "error"
          flash[:notice]= "Failed to create new event!"
          format.html { redirect_to :action => "index" }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    if !signed_in?
       respond_to do |format|
        format.html {redirect_to events_url}# new.html.erb
        format.json { render json: events_url }
      end
    else
      @event = Event.find(params[:id])
      respond_to do |format|
        if @event[:owner]==current_user.username && @event.update_attributes(params[:event])
          flash[:state] = "success"
          flash[:notice]= "Event was successfully create!"          
          format.html { redirect_to :action => "index" }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
    end
  end
  end
  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
end

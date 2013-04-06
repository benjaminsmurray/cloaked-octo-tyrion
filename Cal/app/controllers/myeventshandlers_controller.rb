class MyeventshandlersController < ApplicationController
  # GET /myeventshandlers
  # GET /myeventshandlers.json
  def index
    if signed_in?

      @myeventshandlers = Myeventshandler.find_by_username(current_user.username)
    else
      @myeventshandlers = Myeventshandler.all
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @myeventshandlers }
    end
  end

  # GET /myeventshandlers/1
  # GET /myeventshandlers/1.json
  def show
    @myeventshandler = Myeventshandler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @myeventshandler }
    end
  end

  # GET /myeventshandlers/new
  # GET /myeventshandlers/new.json
  def new
    @myeventshandler = Myeventshandler.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @myeventshandler }
    end
  end

  # GET /myeventshandlers/1/edit
  def edit
    @myeventshandler = Myeventshandler.find(params[:id])
  end

  # POST /myeventshandlers
  # POST /myeventshandlers.json
  def create
    @myeventshandler = Myeventshandler.new(params[:myeventshandler])

    respond_to do |format|
      if @myeventshandler.save
        format.html { redirect_to @myeventshandler, notice: 'Myeventshandler was successfully created.' }
        format.json { render json: @myeventshandler, status: :created, location: @myeventshandler }
      else
        format.html { render action: "new" }
        format.json { render json: @myeventshandler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /myeventshandlers/1
  # PUT /myeventshandlers/1.json
  def update
    @myeventshandler = Myeventshandler.find(params[:id])

    respond_to do |format|
      if @myeventshandler.update_attributes(params[:myeventshandler])
        format.html { redirect_to @myeventshandler, notice: 'Myeventshandler was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @myeventshandler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myeventshandlers/1
  # DELETE /myeventshandlers/1.json
  def destroy
    @myeventshandler = Myeventshandler.find(params[:id])
    @myeventshandler.destroy

    respond_to do |format|
      format.html { redirect_to myeventshandlers_url }
      format.json { head :no_content }
    end
  end
end

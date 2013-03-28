class WelcomePagesController < ApplicationController
  # GET /welcome_pages
  # GET /welcome_pages.json
  def index
    @welcome_pages = WelcomePage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @welcome_pages }
    end
  end

  # GET /welcome_pages/1
  # GET /welcome_pages/1.json
  def show
    @welcome_page = WelcomePage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @welcome_page }
    end
  end

  # GET /welcome_pages/new
  # GET /welcome_pages/new.json
  def new
    @welcome_page = WelcomePage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @welcome_page }
    end
  end

  # GET /welcome_pages/1/edit
  def edit
    @welcome_page = WelcomePage.find(params[:id])
  end

  # POST /welcome_pages
  # POST /welcome_pages.json
  def create
    @welcome_page = WelcomePage.new(params[:welcome_page])

    respond_to do |format|
      if @welcome_page.save
        format.html { redirect_to @welcome_page, notice: 'Welcome page was successfully created.' }
        format.json { render json: @welcome_page, status: :created, location: @welcome_page }
      else
        format.html { render action: "new" }
        format.json { render json: @welcome_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /welcome_pages/1
  # PUT /welcome_pages/1.json
  def update
    @welcome_page = WelcomePage.find(params[:id])

    respond_to do |format|
      if @welcome_page.update_attributes(params[:welcome_page])
        format.html { redirect_to @welcome_page, notice: 'Welcome page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @welcome_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /welcome_pages/1
  # DELETE /welcome_pages/1.json
  def destroy
    @welcome_page = WelcomePage.find(params[:id])
    @welcome_page.destroy

    respond_to do |format|
      format.html { redirect_to welcome_pages_url }
      format.json { head :no_content }
    end
  end
end

class SubscriptionsController < ApplicationController
  # GET /subscriptions
  # GET /subscriptions.json
  def index
    if !signed_in?
     respond_to do |format|
      format.html {redirect_to events_url}# index.html.erb
      format.json { render json: events_url }
     end
    else
    
    @subscriptions = Subscription.find_all_by_owner_name(current_user.username)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subscriptions }
    end
    end
  end

  # GET /subscriptions/1
  # GET /subscriptions/1.json
  def show
    if !signed_in?
     respond_to do |format|
      format.html {redirect_to events_url}# index.html.erb
      format.json { render json: events_url }
     end
    else
      @subscription = Subscription.find(params[:id])
      if @subscription[:owner_name] == current_user.username
        respond_to do |format|
          format.html # show.html.erb
          format.json { render json: @subscription }
        end
      else
        format.html {redirect_to subscription_path}
      end
    end
  end


  # GET /subscriptions/new
  # GET /subscriptions/new.json
  def new
    @subscription = Subscription.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subscription }
    end
  end

  # GET /subscriptions/1/edit
  def edit
    if !signed_in?
     respond_to do |format|
      format.html {redirect_to events_url}# index.html.erb
      format.json { render json: events_url }
     end
    else

    @subscription = Subscription.find(params[:id])
    end
  end

  # POST /subscriptions
  # POST /subscriptions.json
  def create
    @subscription = Subscription.new(params[:subscription])
    @subscription[:owner_name] = current_user.username

    respond_to do |format|
      if @subscription.save
        format.html { redirect_to :action => "index", notice: 'Subscription was successfully created.' }
        format.json { render json: subscription_path, status: :created, location: @subscription }
      else
        format.html { render action: "new" }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subscriptions/1
  # PUT /subscriptions/1.json
  def update
    if !signed_in?
     respond_to do |format|
      format.html {redirect_to events_url}# index.html.erb
      format.json { render json: events_url }
     end
    else

    
    @subscription = Subscription.find(params[:id])

    respond_to do |format|
      if @subscription[:owner_name] == current_user.username && @subscription.update_attributes(params[:subscription])
        format.html { redirect_to :action => "index", notice: 'Subscription was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end
  end
  # DELETE /subscriptions/1
  # DELETE /subscriptions/1.json
  def destroy
    if !signed_in?
     respond_to do |format|
      format.html {redirect_to events_url}# index.html.erb
      format.json { render json: events_url }
     end
    else


    @subscription = Subscription.find(params[:id])
    if @subscription[:owner_name] == current_user.username
      @subscription.destroy
    end

    respond_to do |format|
      format.html { redirect_to subscriptions_url }
      format.json { head :no_content }
    end
end
  end
end

class RegistrationResponsesController < ApplicationController
  before_filter :find_registration
  
  # GET /registration_responses
  # GET /registration_responses.json
  def index
    @registration_responses = @registration.registration_responses

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @registration_responses }
    end
  end

  # GET /registration_responses/1
  # GET /registration_responses/1.json
  def show
    @registration_response = @registration.registration_responses.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @registration_response }
    end
  end

  # GET /registration_responses/new
  # GET /registration_responses/new.json
  def new
    @registration_response = @registration.registration_responses.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @registration_response }
    end
  end

  # GET /registration_responses/1/edit
  def edit
    @registration_response = @registration.registration_responses.find(params[:id])
  end

  # POST /registration_responses
  # POST /registration_responses.json
  def create
    @registration_response = @registration.registration_responses.build(params[:registration_response])

    respond_to do |format|
      if @registration_response.save
        format.html { redirect_to [@registration, @registration_response], notice: 'Registration response was successfully created.' }
        format.json { render json: @registration_response, status: :created, location: @registration_response }
      else
        format.html { render action: "new" }
        format.json { render json: @registration_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /registration_responses/1
  # PUT /registration_responses/1.json
  def update
    @registration_response = @registration.registration_responses.find(params[:id])

    respond_to do |format|
      if @registration_response.update_attributes(params[:registration_response])
        format.html { redirect_to [@registration, @registration_response], notice: 'Registration response was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @registration_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_responses/1
  # DELETE /registration_responses/1.json
  def destroy
    @registration_response = @registration.registration_responses.find(params[:id])
    @registration_response.destroy

    respond_to do |format|
      format.html { redirect_to registration_registration_responses_url(@registration) }
      format.json { head :no_content }
    end
  end
  
private
  def find_registration
    @registration = Registration.find(params[:registration_id])
  end
end

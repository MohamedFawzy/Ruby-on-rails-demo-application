class MicrpostsController < ApplicationController
  # GET /micrposts
  # GET /micrposts.json
  def index
    @micrposts = Micrpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micrposts }
    end
  end

  # GET /micrposts/1
  # GET /micrposts/1.json
  def show
    @micrpost = Micrpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micrpost }
    end
  end

  # GET /micrposts/new
  # GET /micrposts/new.json
  def new
    @micrpost = Micrpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micrpost }
    end
  end

  # GET /micrposts/1/edit
  def edit
    @micrpost = Micrpost.find(params[:id])
  end

  # POST /micrposts
  # POST /micrposts.json
  def create
    @micrpost = Micrpost.new(params[:micrpost])

    respond_to do |format|
      if @micrpost.save
        format.html { redirect_to @micrpost, notice: 'Micrpost was successfully created.' }
        format.json { render json: @micrpost, status: :created, location: @micrpost }
      else
        format.html { render action: "new" }
        format.json { render json: @micrpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micrposts/1
  # PUT /micrposts/1.json
  def update
    @micrpost = Micrpost.find(params[:id])

    respond_to do |format|
      if @micrpost.update_attributes(params[:micrpost])
        format.html { redirect_to @micrpost, notice: 'Micrpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micrpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micrposts/1
  # DELETE /micrposts/1.json
  def destroy
    @micrpost = Micrpost.find(params[:id])
    @micrpost.destroy

    respond_to do |format|
      format.html { redirect_to micrposts_url }
      format.json { head :no_content }
    end
  end
end

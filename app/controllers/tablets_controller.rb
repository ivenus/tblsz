class TabletsController < ApplicationController
  # GET /tablets
  # GET /tablets.json
  def index
    @tablets = Tablet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tablets }
    end
  end

  # GET /tablets/1
  # GET /tablets/1.json
  def show
    @tablet = Tablet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tablet }
    end
  end

  # GET /tablets/new
  # GET /tablets/new.json
  def new
    @tablet = Tablet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tablet }
    end
  end

  # GET /tablets/1/edit
  def edit
    @tablet = Tablet.find(params[:id])
  end

  # POST /tablets
  # POST /tablets.json
  def create
    @tablet = Tablet.new(params[:tablet])

    respond_to do |format|
      if @tablet.save
        format.html { redirect_to @tablet, notice: 'Tablet was successfully created.' }
        format.json { render json: @tablet, status: :created, location: @tablet }
      else
        format.html { render action: "new" }
        format.json { render json: @tablet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tablets/1
  # PUT /tablets/1.json
  def update
    @tablet = Tablet.find(params[:id])

    respond_to do |format|
      if @tablet.update_attributes(params[:tablet])
        format.html { redirect_to @tablet, notice: 'Tablet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tablet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tablets/1
  # DELETE /tablets/1.json
  def destroy
    @tablet = Tablet.find(params[:id])
    @tablet.destroy

    respond_to do |format|
      format.html { redirect_to tablets_url }
      format.json { head :no_content }
    end
  end
end

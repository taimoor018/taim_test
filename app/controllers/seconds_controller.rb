class SecondsController < ApplicationController
  # GET /seconds
  # GET /seconds.xml
  def index
    @seconds = Second.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seconds }
    end
  end

  # GET /seconds/1
  # GET /seconds/1.xml
  def show
    @second = Second.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @second }
    end
  end

  # GET /seconds/new
  # GET /seconds/new.xml
  def new
    @second = Second.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @second }
    end
  end

  # GET /seconds/1/edit
  def edit
    @second = Second.find(params[:id])
  end

  # POST /seconds
  # POST /seconds.xml
  def create
    @second = Second.new(params[:second])

    respond_to do |format|
      if @second.save
        format.html { redirect_to(@second, :notice => 'Second was successfully created.') }
        format.xml  { render :xml => @second, :status => :created, :location => @second }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @second.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /seconds/1
  # PUT /seconds/1.xml
  def update
    @second = Second.find(params[:id])

    respond_to do |format|
      if @second.update_attributes(params[:second])
        format.html { redirect_to(@second, :notice => 'Second was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @second.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seconds/1
  # DELETE /seconds/1.xml
  def destroy
    @second = Second.find(params[:id])
    @second.destroy

    respond_to do |format|
      format.html { redirect_to(seconds_url) }
      format.xml  { head :ok }
    end
  end
end

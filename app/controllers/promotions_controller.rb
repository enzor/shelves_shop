class PromotionsController < ApplicationController

  def index
    @promotions = Promotion.all

    respond_to do |format|
      format.html 
      format.xml  { render :xml => @promotions }
    end
  end

  def show
    @promotion = Promotion.find(params[:id])

    respond_to do |format|
      format.html 
      format.xml  { render :xml => @promotion }
    end
  end

  def new
    @promotion = Promotion.new

    respond_to do |format|
      format.html 
      format.xml  { render :xml => @promotion }
    end
  end

  def edit
    @promotion = Promotion.find(params[:id])
  end

  def create
    @promotion = Promotion.new(params[:promotion])

    respond_to do |format|
      if @promotion.save
        format.html { redirect_to(promotions_path, :notice => 'Promotion was successfully created.') }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @promotion.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @promotion = Promotion.find(params[:id])

    respond_to do |format|
      if @promotion.update_attributes(params[:promotion])
        format.html { redirect_to(promotions_path, :notice => 'Promotion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @promotion.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @promotion = Promotion.find(params[:id])
    @promotion.destroy

    respond_to do |format|
      format.html { redirect_to(promotions_url) }
      format.xml  { head :ok }
    end
  end
end

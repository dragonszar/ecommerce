class ShoppintCartsController < ApplicationController
  # GET /shoppint_carts
  # GET /shoppint_carts.xml
  def index
    @shoppint_carts = ShoppintCart.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shoppint_carts }
    end
  end

  # GET /shoppint_carts/1
  # GET /shoppint_carts/1.xml
  def show
    @shoppint_cart = ShoppintCart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shoppint_cart }
    end
  end

  # GET /shoppint_carts/new
  # GET /shoppint_carts/new.xml
  def new
    @shoppint_cart = ShoppintCart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shoppint_cart }
    end
  end

  # GET /shoppint_carts/1/edit
  def edit
    @shoppint_cart = ShoppintCart.find(params[:id])
  end

  # POST /shoppint_carts
  # POST /shoppint_carts.xml
  def create
    @shoppint_cart = ShoppintCart.new(params[:shoppint_cart])

    respond_to do |format|
      if @shoppint_cart.save
        format.html { redirect_to(@shoppint_cart, :notice => 'ShoppintCart was successfully created.') }
        format.xml  { render :xml => @shoppint_cart, :status => :created, :location => @shoppint_cart }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shoppint_cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shoppint_carts/1
  # PUT /shoppint_carts/1.xml
  def update
    @shoppint_cart = ShoppintCart.find(params[:id])

    respond_to do |format|
      if @shoppint_cart.update_attributes(params[:shoppint_cart])
        format.html { redirect_to(@shoppint_cart, :notice => 'ShoppintCart was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shoppint_cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shoppint_carts/1
  # DELETE /shoppint_carts/1.xml
  def destroy
    @shoppint_cart = ShoppintCart.find(params[:id])
    @shoppint_cart.destroy

    respond_to do |format|
      format.html { redirect_to(shoppint_carts_url) }
      format.xml  { head :ok }
    end
  end
end

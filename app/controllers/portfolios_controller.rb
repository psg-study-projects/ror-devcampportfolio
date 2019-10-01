class PortfoliosController < ApplicationController

  def index
    @portfolio_items = Portfolio.all
    #@portfolio_items = Portfolio.angular
    #@portfolio_items = Portfolio.ruby_on_rails
  end

  def angular
    @portfolio_items = Portfolio.angular
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def new
    @portfolio_item = Portfolio.new
    # hardcode for now
    # build => create 3 types of the technologies & make available to the form 
    3.times { @portfolio_item.technologies.build }
  end

  def create
    # whitelisted set of params...(aka 'strong' params ??)
    @portfolio_item = Portfolio.new( params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name]) )

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.'}
      else 
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update( params.require(:portfolio).permit(:title, :subtitle, :body) )
        format.html { redirect_to portfolios_path, notice: 'Portfolio successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @portfolio_item = Portfolio.find(params[:id])

    @portfolio_item.destroy

    respond_to do |format|
        format.html { redirect_to portfolios_path, notice: 'Record was removed.'}
    end
  end

end

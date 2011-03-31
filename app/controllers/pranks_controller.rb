class PranksController < ApplicationController

  def create
    @prank = Prank.build params[:prank]

    respond_to do |format|
      if @prank.save
        format.html { redirect_to :back, :notice => "Prank created" }
        format.json { render :json => @prank, :status => :created }
      else
        format.html { render :new }
        format.json { render :json => @prank.errors, :status => :unprocessable_entity }
      end
    end
  end
end

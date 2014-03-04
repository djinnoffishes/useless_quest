class QuestsController < ApplicationController

  def about
  end

  def index
    # at some point introduce :notice
  end

  def create
    @quest = Quest.new(quest_params)

    respond_to do |format|
      if @quest.save
        format.html { redirect_to @quest, notice: 'Hero created.' }
        format.json { render action: 'show', status: :created, location: @quest }
      else
        format.html { render action: 'new' }
        format.json { render json: @quest.errors, status: :unprocessable_entity }
      end
    end
  end

end
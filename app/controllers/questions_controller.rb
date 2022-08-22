class QuestionsController < ApplicationController
  def about
    @hallo = "";
  end

  def aks

  end

  def contact

    @members = ["thanh", "dimitri", "germain", "damien", "julien"]

    if params[:member]

      @members = @members.select { |member| member.start_with?(params[:member]);
        @hallo = params[:member];}
    end

  end

  def answer
    @my_str = ""

    @my_str = params[:answer]

    # @the_answer = "get up and go to school!"
    if @my_str != nil
      if @my_str == "I am going to work"
        @the_answer = "Great!"
      elsif @my_str.include? "?"
        @the_answer = "Silly question, get dressed and go to work!"
      else
        @the_answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end

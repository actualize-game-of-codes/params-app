class ParamsExamplesController < ApplicationController
  def query_params_method
    @message1 = params["purple_hippo"]
    @message2 = params["x"]
    render "query_params.html.erb"
  end

  def url_segment_params_method
    @message = params["this_is_a_variable"]
    render "url_segment_params.html.erb"
  end

  def form_params_method
    render "form_params.html.erb"
  end

  def form_result_method
    @message = params["form_message"]
    render "form_result.html.erb"
  end

  def name_method
    @name = params["input_name"].upcase
    if @name.start_with?("A")
      @extra_message = "Hey your name starts with A!"
    end
    render "name.html.erb"
  end

  def guess_query_method
    correct_answer = 17
    @guess = params["input_guess"].to_i
    if @guess > correct_answer
      @message = "WRONG! Guess lower"
    elsif @guess < correct_answer
      @message = "WRONG! Guess higher"
    else
      @message = "RIGHT! ...that's all..."
    end
    render "guess_query.html.erb"
  end

  def guess_form_method
    render "guess_form.html.erb"
  end

  def guess_form_result_method
    correct_answer = 17
    @guess = params["input_guess"].to_i
    if @guess > correct_answer
      @message = "WRONG! Guess lower"
    elsif @guess < correct_answer
      @message = "WRONG! Guess higher"
    else
      @message = "RIGHT! ...that's all..."
    end
    render "guess_form_result.html.erb"
  end
end

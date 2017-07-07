class ParamsExamplesController < ApplicationController
  def query_params_method
    @message1 = params["purple_hippo"]
    @message2 = params["x"]
    render "query_params.html.erb"
  end

  def name_method
    @name = params["input_name"].upcase
    if @name.start_with?("A")
      @extra_message = "Hey your name starts with A!"
    end
    render "name.html.erb"
  end
end

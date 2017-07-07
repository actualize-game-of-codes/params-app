class ParamsExamplesController < ApplicationController
  def query_params_method
    @message1 = params["purple_hippo"]
    @message2 = params["x"]
    render "query_params.html.erb"
  end

  def name_method
    @name = params["input_name"].upcase
    render "name.html.erb"
  end
end

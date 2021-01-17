class Api::ParamsController < ApplicationController

  def query_action
    @query_message = "Your query search returns a value of: #{params[:key]}"
    render "query.json.jb"
  end

  def segment_action
    @segment_message = "Your segment search returns the value of: #{params[:key]} "
    render "segment.json.jb"
  end

  def body_action
    @body_message = "Your body search returns the value of: #{params[:key]}"
    render "body.json.jb"
  end

end

# NOTE: to dry up this code, rather than having 3 different action functions you could simply have one. you will still need to create three different paths as query, segment, and body parameters require different requests. you would just point each parameter path to the same controler and use the params[:key] to draw the desired value to the json.jb file 
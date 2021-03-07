module FlightsHelper
  def available_flights?
    !params[:flight].nil? && !@results.nil?
  end

  def no_results?
    params[:flight] && @results.nil?
  end
end

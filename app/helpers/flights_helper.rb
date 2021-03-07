module FlightsHelper
  def available_flights?
    !params[:flight].nil?
  end

  def no_results?
    params[:flights] && !@results.any?
  end
end

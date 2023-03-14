require 'net/http'

class InterviewController < ApplicationController
  def index
    url = 'https://api.omens.com.br/single-item/open'
    response = Net::HTTP.get(URI(url))
    programs = JSON.parse(response)

    programs = programs.select { |program| program['type'] == program_type } if program_type.present?

    output = programs.map do |program|
      program.slice('name', 'price', 'variantId', 'type')
    end

    render json: output
  end

  def filter_view; end

  private

  def program_type
    params[:type]
  end

  def filter_type
    params[:filter_type]
  end
end

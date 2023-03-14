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

  def filter
    url = 'https://api.omens.com.br/single-item/open'
    response = Net::HTTP.get(URI(url))
    programs = JSON.parse(response)

    programs = programs.select { |program| program['type'] == program_type } if program_type.present?

    render json: programs
  end

  private

  def program_type
    params[:type]
  end

  def filter_type
    params[:filter_type]
  end
end



# iterate over an array of hashes
# each hash has keys name, price, variantId, type. Some have presentation
# my concern is type
# type has values course and phyto

# return an array with key type and phyto value
# build object output = { type: phyto }

# obs
# return filtered hashto return phyto
# remove course and psycho and return full hash with phyto, not just the type, bring 4 key-values but only the ones where type: phyto
# .map is not best solution, find more optimal one
# push to new repo on GH, make public
# Plus: put filter on query, such as a param for the query. End point is interview/index?type=phyto. Do this in router

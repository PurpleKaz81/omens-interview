class InterviewController < ApplicationController
  def index
    url = 'https://api.omens.com.br/single-item/open'
    response = Net::HTTP.get(URI(url))

    programs = JSON.parse(response).select { |program| program['type'] == params[:type] }

    output = programs.map do |program|
      program.slice('name', 'price', 'variantId', 'type')
    end.compact

    render json: output
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

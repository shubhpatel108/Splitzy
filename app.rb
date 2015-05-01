# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'


class Word < ActiveRecord::Base
end

get "/" do
	@word = Word.where("syllabified IS ?", nil).first
  erb :"split.html"
end

post "/syllabified" do
 	word_to_change = Word.where(id: params[:id].to_i).first
 	word_to_change.update_attributes(syllabified: params[:syllabified_word])

	@word = Word.where("syllabified IS ?", nil).first
 	erb :"word.html"
end
class IndexController < ApplicationController

  require 'rest-client'
  require 'json'

  BASE_URL = "http://localhost:3000"

  def index;
  end

  def questions


    begin
      cpf = params[:cpf]

      if cpf != nil
        # Usada pra saber se já submeteu o formulário
        $issues_submitted = false

        value = RestClient.get "#{BASE_URL}/pessoas/#{cpf}"

        user = JSON.parse(value, :symbolize_names => true)

        user_request = UserRequest.create(cpf: cpf, value: false, json_result: 'Dado do Json da Receita Federal', return_web_service: true, jsonb_result: user)

        $questions = Array.new
        $questions = user_request.request_questions
      end
    rescue => error
      flash[:notice] = error.message
      redirect_to index_path
    end

  end

  def result
    $issues_submitted = nil
  end

end

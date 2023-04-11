class CurrenciesController < ApplicationController
  
  def first_currency
    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")

    @array_of_symbols = @symbols_hash.keys
    render({ :template => "currency_templates/step_one.html.erb" })
  end

  def second_currency
    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")

    @array_of_symbols = @symbols_hash.keys

    #params are
    # parameters : {from _currrency => "ARS"}
    @form_symbol = params.fetch("from_currency")
    render({ :template => "currency_templates/step_two.html.erb" })
  end

  def conversion
    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")
    @array_of_symbols = @symbols_hash.keys

    @from_currency = params.fetch("from_currency")
    @currency_symbol = params.fetch("currency_symbol")


    @currency_conversion_url = open("https://api.exchangerate.host/convert?from=#{@from_currency}&to=#{@currency_symbol}").read
    @parsed_currency_data = JSON.parse(@currency_conversion_url)

    @info = @parsed_currency_data.fetch("info")
    @rate = @info.fetch("rate")



    render({ :template => "currency_templates/conversion.html.erb" })
  end


end

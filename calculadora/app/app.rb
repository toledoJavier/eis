#require_relative 'algunmodelo?'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    get 'hola' do
      'hey! hola'
    end
    
    get 'saludo' do
      render 'saludo'
    end

    post 'saludo' do
      session[:nombre] = params[:nombre]
      @nombre = session[:nombre]
      render 'saludo'
    end
    
    get 'calculadora' do
      render 'calculadora'
    end

    post 'calculadora' do
      session[:operando1] = params[:operando1]
      session[:operando2] = params[:operando2]
      session[:accion] = params[:accion]
      @resultado= Calculadora.new.send(session[:accion].to_sym, session[:operando1].to_i, session[:operando2].to_i)
      render 'calculadora'
    end
  end
end
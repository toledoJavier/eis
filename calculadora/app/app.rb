#require_relative 'algunmodelo?'
require_relative 'models/calculadora'
module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions
    
    @@calculadora= Calculadora.new
    
    get 'calculadora' do
      guardar_cantidad_operaciones
      render 'calculadora'
    end

    post 'calculadora' do
      session[:operando1] = params[:operando1]
      session[:operando2] = params[:operando2]
      session[:accion] = params[:accion]
      guardar_resultado_operacion
      guardar_cantidad_operaciones
      render 'calculadora'
    end

    post 'resetear_memoria' do
      @@calculadora.resetear_memoria
      redirect_to 'calculadora'
    end

    private
    #Pide a calculadora que realize la operacion que correspona y lo guarda en la variable resultado
    def guardar_resultado_operacion
      @resultado= @@calculadora.send(session[:accion].to_sym, session[:operando1].to_i, session[:operando2].to_i)
    end
    
    #Pide a calculdora el numero de operaciones realizadas y lo guarda en la variable cantidad_de_operaciones
    def guardar_cantidad_operaciones
      @cantidad_de_operaciones= @@calculadora.cantidad_de_operaciones
    end
  end
end
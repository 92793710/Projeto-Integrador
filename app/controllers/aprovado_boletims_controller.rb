class AprovadoBoletimsController < ApplicationController
    def index
        @aprovado_boletims = Boletim.where(aprovado: true)
    end
end

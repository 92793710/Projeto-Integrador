class ReprovadoBoletimsController < ApplicationController
    def index
        @reprovado_boletims = Boletim.where(reprovado: true)
    end
end

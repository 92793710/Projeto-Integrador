class Boletim < ActiveRecord::Base

    def self.search(nome)
        if nome.present?
            where(nome: nome)
        else
            all
        end
    end
end
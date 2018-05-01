json.extract! boletim, :id, :nome, :idade, :masculino, :feminino, :email, :faltas, :turma, :turno, :aprovado, :reprovado, :created_at, :updated_at
json.url boletim_url(boletim, format: :json)

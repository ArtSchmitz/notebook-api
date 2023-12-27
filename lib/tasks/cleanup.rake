namespace :dev do
  desc "Limpar ambiente de desenvolvimento"
  task cleanup: :environment do
    p "Removendo usuários..."

    Contact.destroy_all

    p "Usuários removidos com sucesso!"
  end
end

namespace :dev do
  desc "Config ambiente de desenvolvimento"
  task setup: :environment do
    p "Cadastrando usuários..."

    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthday: Faker::Date.birthday(min_age: 18, max_age: 65)
      )
    end

    p "Usuários cadastrados com sucesso!"
  end
end

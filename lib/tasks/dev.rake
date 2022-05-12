namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      puts %x(rails db:drop db:create db:migrate dev:add_coins dev:add_mini_types)
    else
      puts "Out development ambient"
    end
  end

  desc "Adiciona moedas"
  task add_coins: :environment do
    coins = [
      {
          description: "Bitcoin",
          acronym: "BTC",
          url_image: "https://logos-world.net/wp-content/uploads/2020/08/Bitcoin-Emblem.png"
      },
      {
          description: "Ethereum",
          acronym: "ETH",
          url_image: "https://w7.pngwing.com/pngs/368/176/png-transparent-ethereum-cryptocurrency-blockchain-bitcoin-logo-bitcoin-angle-triangle-logo.png"
      },
      {
          description: "Dash",
          acronym: "DASH",
          url_image: "https://w7.pngwing.com/pngs/37/123/png-transparent-dash-bitcoin-cryptocurrency-digital-currency-logo-bitcoin-blue-angle-text.png"
      },
      {
          description: "Iota",
          acronym: "IOT",
          url_image: "https://img2.gratispng.com/20180712/tkc/kisspng-iota-cryptocurrency-logo-internet-of-things-tether-aren-5b481f06b57ae1.5360095415314531907434.jpg"
      },
      {
          description: "ZCash",
          acronym: "ZEC",
          url_image: "https://img2.gratispng.com/20180524/rbc/kisspng-zcash-logo-cryptocurrency-cash-coupons-5b06a838ea8466.5309779315271629369606.jpg"
      },
      
    ]
  
    coins.each do |coin|
        Coin.find_or_create_by!(coin)
    end

    puts ("Cadastro de moedas feitos!")
    
  end

  desc "Cadastra do tipo de mineração"
  task add_mini_types: :environment do
    mining_types = [
      {description: "Proof of Work", acronym: "PoW"},
      {description: "Proof of Stack", acronym: "PoS"},
      {description: "Proof of Capacity", acronym: "PoC"},
    ]

    mining_types.each do |coin|
      MiniType.find_or_create_by!(coin)
    end
  end

end

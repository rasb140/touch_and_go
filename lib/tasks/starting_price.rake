namespace :touch_and_go do
  desc "updating starting price"
  task :update_starting_price do
    Airplane.all.each do |airplane|
      airplane.update(starting_price: rand(1920..267200))
    end
  end
end

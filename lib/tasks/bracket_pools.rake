# to run in development: rake bracket_pools:generate

namespace :bracket_pools do
  desc "any description"
  task :generate => :environment do
    begin
      Time.zone = "Eastern Time (US & Canada)"
      Chronic.time_class = Time.zone
      ActiveRecord::Base.transaction do
        activation_time = Chronic.parse("today at 7:00 pm")
        end_time = Chronic.parse("tomorrow at 7:00 pm")
        if (["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].include? Date.current.strftime("%A"))
          Bracket.all.each do |x|
            BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'Nightly Free' ", title: "Nightly Free", bracket_id: x.id, end_time: end_time, active: false, activation_time: activation_time, nightly: true)
            BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'Nightly 10' ", title: "Nightly 10", bracket_id: x.id, end_time: end_time, active: false, activation_time: activation_time, nightly: true)
            BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'Nightly 25' ", title: "Nightly 25", bracket_id: x.id, end_time: end_time, active: false, activation_time: activation_time, nightly: true)
            BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'Nighlty 100' ", title: "Nightly 100", bracket_id: x.id, end_time: end_time, active: false, activation_time: activation_time, nightly: true)
          end
        end

      end
    rescue => e
      puts e.message
    end
  end
end

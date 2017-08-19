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
        if (["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"].include? Date.current.strftime("%A"))
          Bracket.all.each do |x|
            BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'nightly_free' ", title: "nightly_free", bracket_id: x.id, end_time: end_time, active: false, activation_time: activation_time)
            BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'nightly_10' ", title: "nightly_10", bracket_id: x.id, end_time: end_time, active: false, activation_time: activation_time)
            BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'nightly_25' ", title: "nightly_25", bracket_id: x.id, end_time: end_time, active: false, activation_time: activation_time)
            BracketPool.create(name: "#{x.title}_#{x.game.short_title}_'nightly_100' ", title: "nightly_100", bracket_id: x.id, end_time: end_time, active: false, activation_time: activation_time)
          end
        end

      end
    rescue => e
      puts e.message
    end
  end
end

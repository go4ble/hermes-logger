# TODO configurable host/port

namespace :mqtt_subscription do
  task :run do
    MQTT::Client.connect('docker1.lan', 12183) do |mqtt|
      puts 'Starting MQTT subscription'
      mqtt.get('#') do |topic, payload|
        puts "> #{topic}"
      end
    end
  end
end

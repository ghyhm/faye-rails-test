class RealtimeChatController < FayeRails::Controller
  channel '/chat' do
    monitor :subscribe do
      puts "Client #{client_id} subscribed to #{channel}."
    end
  end
end
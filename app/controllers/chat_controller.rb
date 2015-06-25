class ChatController < ApplicationController
    def index
        @chat_messages = ChatMessage.recent
    end
end

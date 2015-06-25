client = new Faye.Client('/faye')

client.subscribe '/chat', (payload)->
  time = moment(payload.created_at).format('D/M/YYYY H:mm:ss')
  # You probably want to think seriously about XSS here:
  $('#chat').append("<li>#{time} : #{payload.message}</li>")

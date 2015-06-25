client = new Faye.Client('/faye')

$(document).ready ->
  client.publish '/chat',
    message: 'message'
    created_at: new Date()

  event.preventDefault()
  false

# in case anyone wants to play with the inspector.
window.client = client

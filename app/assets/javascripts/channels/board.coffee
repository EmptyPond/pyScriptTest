App.board = App.cable.subscriptions.create "BoardChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log '**************'
    console.log data
    console.log '*************'

    $('#_' + parseInt(data['update'].id) + " .count").text(data['update'].count)
    $('#_' + parseInt(data['update'].id) + " .processing").text(data['update'].processing)
    $('#_' + parseInt(data['update'].id) + " .updated_at").text(data['update'].updated_at)


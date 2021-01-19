submitFeedback = (data) ->
  $('#feedback-table tbody').append """
  <tr>
      <td>#{data.toilet}</td>
      <td><a href="/polls/#{data.id}">Show</a></td>
      <td><a href="/polls/#{data.id}/edit">Edit</a></td>
      <td><a data-confirm="Are you sure?" rel="nofollow" data-method="delete" href="/polls/#{data.id}">Destroy</a></td>
  </tr>
  """
  return

$ ->
  $('#add_feedback').on 'ajax:success', (data) ->
    $('#add_feedback')[0].reset()
    submitFeedback data.detail[0]
    return
  return

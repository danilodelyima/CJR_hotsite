$('.new-candidate-modal').modal 'hide'
$('#new-candidate-form')[0].reset()
$('.ui.dropdown').dropdown 'clear'
$('#new-candidate-form').removeClass 'loading'
$('#candidate_created_alert').dimmer 'show'
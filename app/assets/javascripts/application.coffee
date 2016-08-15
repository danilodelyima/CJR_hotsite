#= require jquery
#= require jquery.turbolinks
#= require jquery_ujs
#= require semantic/dist/semantic
#= require assets/js/skel.min
#= require assets/js/util
#= require assets/js/main
#= require animatescroll/animatescroll
#= require mask.min
#= require turbolinks
#= require_tree .

$(document).ready ->

  $('#cell_phone').mask('(99) 99999-9999')

  $('#candidate_created_alert').on 'click', ->
    $(this).dimmer 'hide'
    return

  $('.ui.dropdown').dropdown()

  $('.new-candidate-button').on 'click', ->
    $('.new-candidate-modal').modal(
      closable: false
    ).modal 'show'
    return

  $('#new-candidate-form').form(

    fields:

      name:
        identifier: 'candidate[name]'
        rules: [
          type: 'empty'
          prompt: 'Por favor, preencha seu nome'
        ]

      email:
        identifier: 'candidate[email]'
        rules: [
          {
            type: 'email'
            prompt: 'Por favor, insira um email válido'
          }
          {
            type: 'empty'
            prompt: 'Por favor, preencha seu email'
          }
        ]

      cell_phone:
        identifier: 'candidate[cell_phone]'
        rules: [
          type: 'empty'
          prompt: 'Por favor, preencha seu telefone'
        ]

      course:
        identifier: 'candidate[course]'
        rules: [
          type: 'empty'
          prompt: 'Por favor, selecione seu curso'
        ]

      semester:
        identifier: 'candidate[semester]'
        rules: [
          type: 'empty'
          prompt: 'Por favor, selecione seu semestre'
        ]

    on: 'blur'
    inline: true

    onSuccess: ->
      $(this).addClass 'loading'
      return

  )

  return
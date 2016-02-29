$(->
  
  console.log 'DOM loaded, forms coffeescript loading'
  
  inputs =  $('.input-field input, .input-field textarea')
  for field in inputs
    if $(field).val().length > 0
      $(field).siblings('label').addClass('active')

  $('.input-field input, .input-field textarea, .js-basic-select').on('focus', (e) ->
    $(@).closest('.input-field').find('label').addClass('active')
  )

  $('.input-field input, .input-field textarea').on('blur', (e) ->
    if $(@).val() == ""
      $(@).closest('.input-field').find('label').removeClass('active')
  )

)



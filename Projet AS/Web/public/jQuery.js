$(document).ready(function () {
  $('#home,#imgself').mouseenter(function () {
    $('#home').css('background-color', 'aliceblue')
    $('#home').css('color', 'black')
  })
  $('#home,#imgself').mouseleave(function () {
    $('#home').css('background-color', 'transparent')
    $('#home').css('color', 'aliceblue')
  })
  $('#Courses,.Courses').mouseenter(function () {
    $('#Courses').css('background-color', 'aliceblue')
    $('#Courses').css('color', 'black')
  })
  $('#Courses,.Courses').mouseleave(function () {
    $('#Courses').css('background-color', 'transparent')
    $('#Courses').css('color', 'aliceblue')
  })
  $('#communitybtn,#community').mouseenter(function () {
    $('#communitybtn').css('background-color', 'aliceblue')
    $('#communitybtn').css('color', 'black')
  })
  $('#communitybtn,#community').mouseleave(function () {
    $('#communitybtn').css('background-color', 'transparent')
    $('#communitybtn').css('color', 'aliceblue')
  })
  $('#feedbac,#feedBack').mouseenter(function () {
    $('#feedbac').css('background-color', 'aliceblue')
    $('#feedbac').css('color', 'black')
  })
  $('#feedbac,#feedBack').mouseleave(function () {
    $('#feedbac').css('background-color', 'transparent')
    $('#feedbac').css('color', 'aliceblue')
  })
  $('#home,#join').mouseenter(function () {
    $('#home').css('background-color', 'aliceblue')
    $('#home').css('color', 'black')
  })
  $('#home,#join').mouseleave(function () {
    $('#home').css('background-color', 'transparent')
    $('#home').css('color', 'aliceblue')
  })
  $('.mob-cod ').fadeIn()
  $('.for-web ').hide()
  $('.for-app ').hide()
  $('.for-prog').hide()
  $('.mobcod-main').show()
  $('.norm').hide()
  $('.mobcod').css('background-color', 'white')
  $('.mobcod').css('color', 'black')
  $('.mobcod').css('border-radius', '10px')

  $('.mobcod').click(function () {
    $('.mob-cod ').fadeIn()
    $('.for-web ').hide()
    $('.for-app ').hide()
    $('.for-prog').hide()
    $('.mobcod-main').show()
    $('.norm').hide()
    
    $('.mobcod').css('background-color', 'white')
    $('.mobcod').css('color', 'black')
    $('.mobcod').css('border-radius', '10px')

    $('.web').css('background-color', 'black')
    $('.web').css('color', 'white')
    $('.App').css('background-color', 'black')
    $('.App').css('color', 'white')
    $('.Prog').css('background-color', 'black')
    $('.Prog').css('color', 'white')
  })
  $('.web').click(function () {
    $('.mob-cod ').hide()
    $('.for-web ').fadeIn()
    $('.for-app ').hide()
    $('.for-prog').hide()
    $('.mobcod-main').hide()
    $('.norm').show()

    $('.web').css('background-color', 'white')
    $('.web').css('color', 'black')
    $('.web').css('border-radius', '10px')

    $('.mobcod').css('background-color', 'black')
    $('.mobcod').css('color', 'white')
    $('.App').css('background-color', 'black')
    $('.App').css('color', 'white')
    $('.Prog').css('background-color', 'black')
    $('.Prog').css('color', 'white')
  })
  $('.App').click(function () {
    $('.mob-cod ').hide()
    $('.for-web ').hide()
    $('.for-app ').fadeIn()
    $('.for-prog').hide()
    $('.mobcod-main').hide()
    $('.norm').show()

    $('.App').css('background-color', 'white')
    $('.App').css('color', 'black')
    $('.App').css('border-radius', '10px')

    $('.mobcod').css('background-color', 'black')
    $('.mobcod').css('color', 'white')
    $('.web').css('background-color', 'black')
    $('.web').css('color', 'white')
    $('.Prog').css('background-color', 'black')
    $('.Prog').css('color', 'white')
  })
  $('.Prog').click(function () {
    $('.mob-cod ').hide()
    $('.for-web ').hide()
    $('.for-app ').hide()
    $('.for-prog').fadeIn()
    $('.mobcod-main').hide()
    $('.norm').show()

    $('.Prog').css('background-color', 'white')
    $('.Prog').css('color', 'black')
    $('.Prog').css('border-radius', '10px')

    $('.mobcod').css('background-color', 'black')
    $('.mobcod').css('color', 'white')
    $('.web').css('background-color', 'black')
    $('.web').css('color', 'white')
    $('.App').css('background-color', 'black')
    $('.App').css('color', 'white')
  })
})

describe 'Salutations', ->

  it 'says hello', ->
    expect(hello()).toEqual 'Hello'

  it 'says that you suck, dude', ->
    expect(youSuck()).toEqual 'You suck'

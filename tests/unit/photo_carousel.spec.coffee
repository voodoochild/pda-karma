###
Photo carousel unit tests.

@author Kriss Watt <cwatt@expedia.com>
###

markup = """
  <div id="hotel-photos">
    <div id="hotel-photo" class="">
      <div class="hotel-photo-inner">
        <img src="" alt="" />
      </div>
    </div>
    <ul class="thumbnails">
      <li><a href="" data-image-size="" target="_blank"><img src="" alt="" /></a></li>
    </ul>
  </div>
  """

describe 'Photo carousel', ->

  module = null

  beforeEach ->
    module = $.getModule('hcom.property_details.modules.photo_carousel').impl()

  it 'has loaded the module correctly', ->
    expect(typeof module.initPhotoCarousel).toEqual 'function'
    expect(typeof module.loadPhoto).toEqual 'function'

  it 'initialises the carousel', ->
    $container = $ markup
    module.initPhotoCarousel $container
    expect($container.html()).toContain '<button class="cta-pan cta-left">Left</button>'
    expect($container.html()).toContain '<button class="cta-pan cta-right">Right</button></div>'

  it 'correctly applies a class to #hotel-photo when loading a photo', ->
    $container = $ markup
    $photo = $container.find '#hotel-photo'
    module.initPhotoCarousel $container
    module.loadPhoto '', 'full'
    expect($photo.hasClass 'full').toBe true
    module.loadPhoto '', 'framed'
    expect($photo.hasClass 'framed').toBe true

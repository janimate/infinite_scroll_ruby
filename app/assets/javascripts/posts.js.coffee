# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#$ ->
#(document).on 'ready, page:change', ->
$(document).on 'ready page:load', ->
  loading_posts = false
  $('a.load-more-posts').on 'inview', (e, visible) ->
    return if loading_posts or not visible
    loading_posts = true

    $.getScript $(this).attr('href'), ->
      loading_posts = false



#http://christianvarga.com/simple-infinite-scroll-with-rails-and-jquery/

#If you don't want to use Turbolinks with your Rails 4 application, it's easy! Just do this:

#Remove the gem 'turbolinks' line from your Gemfile.
#Remove the //= require turbolinks from your app/assets/javascripts/application.js.
#Remove the two "data-turbolinks-track" => true hash key/value pairs from your app/views/layouts/application.html.erb.
#Done!
#https://gist.github.com/qbraksa/5606187
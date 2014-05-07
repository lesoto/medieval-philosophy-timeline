== README

This file explains how to install and operate Medieval Philosophy Timeline. 

Live demo could be accessed here - http://medieval-philosophy-timeline.herokuapp.com/

Based on the https://github.com/NUKnightLab/TimelineJS (for json format and other options)

Here are the steps necessary to get everything running on the production.

(0) Set up your development and hosting environment and establish deployment procedure. Everyone has his own preferences, use whatever works for you. It's recommended to develop locally in the same environment as you have on your production, including database system and the same version of Ruby. We are going to be using Heroku as a hosting platform. As of May of 2014 Heroku uses Ruby version 2.0.0 and PostgreSQL.

(1) Download Medieval Philosophy Timeline application from GitHub - 
  
    $ git clone git@heroku.com:medieval-philosophy-timeline.git
 
(2) Run bundle to install all gems and "rake db:migrate" to set up database.

(3) Add this to Add this to application.rb file to allow deployment to Heroku. No local or Heroku "rake:assets:precompile" is necessary 

    config.serve_static_assets = true
    config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'
    config.assets.compile = true

(4) Add this to application.rb file to allow localization
  
    I18n.default_locale = :en
    I18n.available_locales = [:en, :ru, :he]
    I18n.load_path = Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    I18n.enforce_available_locales = false

(5) Create new Git repository for the project

    $ git init
    $ git add .
    $ git commit -m "init"
  
    $ git push --set-upstream https://github.com/lesoto/medieval-philosophy-timeline.git master
  
    $ git remote add origin https://github.com/lesoto/medieval-philosophy-timeline.git
    $ git push -u origin master

(6) Create Heroku application

    $ heroku create
    $ heroku apps:rename newname
    $ git push heroku master

(7) Database creation and upload
    $ heroku config | grep HEROKU_POSTGRESQL
    $ heroku pg:push whitecrow HEROKU_POSTGRESQL_GRAY_URL
    $ heroku run rake db:migrate

(8) Monitor status of the application by running 
    $ heroku logs

(9) Using JSON to store data to display:
    <script>
        $(document).ready(function() {
          createStoryJS({
            type:       'timeline',
            width:      '800',
            height:     '600',
            source:     '<%= @histories %>',
            embed_id:   'my-timeline'
          });
        });
      </script>
      <div id="timeline-embed"></div>

      Histories controller :

        def index
          @histories = History.all

          respond_to do |format|
            format.html # show.html.erb
            format.json { render json: json_out = {
              "timeline"=>
              {
                "headline"=>"Medieval Philosophy Timeline",
                "type"=>"default",
                "text"=>"<p>Intro text</p>",
                "asset"=> {
                "media"=>"http://www.exglam.com/wp-content/uploads/2013/02/Kajal-agarwal-in-Blue-and-white-Fade-Short-with-white-Top-and-a-Blue-bow-in-hair.jpg",
                "credit"=>"Credit Name Goes Here",
                "caption"=>"Caption text goes here"
              },

                "date"=> @histories.map { |timeline| {"startDate" => timeline.startdate.strftime("%Y,%m,%d"),"endDate" => timeline.enddate.strftime("%Y,%m,%d"),"headline" => timeline.headline,"text" => timeline.content, "asset" => {"media" => timeline.media}}},


                "era"=> [
                  {
                "startDate"=>"2011,12,10",
                "endDate"=>"2011,12,11",
                "headline"=>"Headline Goes Here",
                "text"=>"<p>Body text goes here, some HTML is OK</p>",
                "tag"=>"This is Optional"
              }

              ]
              }
            } }
          end


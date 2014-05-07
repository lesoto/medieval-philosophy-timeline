Live app a: http://timelinejs-rails-example.herokuapp.com


Based on the TimelineJsrails gem - https://github.com/NanJingBoy/timelineJS-rails
https://github.com/NUKnightLab/TimelineJS (for json format and other options)

Uncaught TypeError: Cannot call method 'appendChild' of null 

script loaded bbut div/id is not loaded

Mismatched id caused the problem, changing the div id and embed_id to same solved problem


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


What will be in @histories, json output

Histories controller :


  def index
    @histories = History.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: json_out = {
        "timeline"=>
        {
          "headline"=>"The Main Timeline Headline Goes here",
          "type"=>"default",
          "text"=>"<p>Intro body text goes here, some HTML is ok</p>",
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


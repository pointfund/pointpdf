# helper clip file in order to clean up 
# if(hold_add == 1)
            #     # @record_page_set = 
            #     # @record_page_set.push(1) 
            #     puts @record_page_set.to_s + "1" + ", "
            #     @record_page_set = @record_page_set.to_s + "1" + ", "
            #     # puts @record_page_set
            #     puts "one"     
            # end

            # if(hold_add == 2)
            #     @record_page_set = @record_page_set.to_s + "2" + ", "
            #     puts @record_page_set
            #     puts "two"
            # end
            # if(hold_add == 3)
            #     @record_page_set = @record_page_set.to_s + "3" + ", "
            #     puts @record_page_set
            #     puts "three"
            # end
            # @record_page_set = [10,12,35]
            # @member = FormBuild.find(params[:id])
            # @data = get_file_as_string("app/lib/textinput.rb")
            # header = "#{ @form_build.name} 
            #   #{ @form_build.l_street}
            #   #{ @form_build.l_city} 
            #   #{ @form_build.l_state}"
            # sample = BuildPdf.new(intro)

            # name = @member
            # method_name(format)
            # respond_to do |format|
            #     format.html
            #     format.pdf do 
            #       pdf = Prawn::Document.new
            #       pdf.font "#{Prawn::DATADIR}/fonts/Spirax-Regular.ttf"

            #       # height = pdf.height_of
            #       # pdf.pad(20) {pdf.text intro, :color => "ff0000", :size => 16, :width => 100} #, :font => "BioRhymeExpanded" 
            #       # label_head = pdf.text header, :size => 14#, :at => [ 0, 700], :font => "Courier", :color => "00ff00" #, 
            #       #label_head.fill_color  "ff0000" #, :position => :right  #, :font => "BioRhymeExpanded" 
            #       # pdf.text_box = label_head :at => [0,700]

            #       # pdf.fill_color "0000ff" 
            #       # pdf.text "Hello World (in blue)", :at => [200,720], :size => 32 
                 
            #        # pigs =  pdf.image open("app/assets/images/point_logo.png"), :fit => [200, 200], :at => [200, 550]#, 
            #       pdf.transparent(1.0, 1.0) do 
            #         # pigs =  pdf.image open("app/assets/images/point_logo.png"), :fit => [200, 200], :at => [200, 200]#, 
            #       end
            #       pigs.transparent(1.0, 1.0)




            #         pigs =  pdf.image open("app/assets/images/logo.png"), :fit => [100, 100], :position => :center  
            #        #, :transparentcy#, :position => :center #, :margin_top => 200  
            #      # pdf.image.transparent(0.5){ stroke_bounds }
            #       # pigs.transparent(0.0) # = 0.5 #(0.5){ stroke_bounds }
            #       y_position = 750  - 50
            #       pdf.bounding_box([0, y_position], :width => 550, :height => 150) do
            #           logo =  pdf.image open("app/assets/images/logo.png"), :fit => [50, 50], :margin => 10 #, :at => [0, 700]
            #           pdf.move_down 10
            #           # pdf.text @data
            #           # setLogo = pdf.logo, :at => [ 0, 700]
            #       end
            #       pdf.bounding_box([450, 650], :width => 550, :height => 450) do
            #         pdf.text header, :color => "00ff00"
            #       end
            #       pdf.bounding_box([0, 550], :width => 550, :height => 450) do
            #         pdf.text "This text will flow along this bounding box we created for it. " * 5, :color => "ff0000"
            #       end

            #       pdf.bounding_box([0, 450], :width => 550, :height => 450) do
            #         pdf.text "This text will flow along this bounding box we created for it. " * 15, :color => "00ff00"
            #       end

            #       pdf.bounding_box([0, 300], :width => 550, :height => 450) do
            #         pdf.text "The more information in this space is to share more data with the user about the terms or requirements. " * 15,
            #          :color => "0000ff"
            #       end

            #       pdf.bounding_box([0, 700], :width => 550, :height => 450) do
            #         pdf.start_new_page
            #         pdf.text "Page header ", :size => 16, :style => :bold
            #         pdf.text "This text will flow along this bounding box we created for it. " * 5, :color => "000000"
            #       end


            #    # pdf.grid.show_all(color = "CCCCCC")
            #     # pdf.image pigs, :at => [50,450], :width => 450
            #     send_data pdf.render, filename: 'point_funding_doc.pdf', type: 'application/pdf', disposition: "inline"
            #     end

            #   end










# if(job_ids.length > 0)
#   job_ids.each do |hold_add|
#     case hold_add
#     when 1
#       @record_page_set = @record_page_set.to_s + "#{hold_add}" + ", "
#     when 2
#       @record_page_set = @record_page_set.to_s + "#{hold_add}" + ", "
#     when 3
#       @record_page_set = @record_page_set.to_s + "#{hold_add}" + ", "
#     when 4..100
#       @record_page_set = @record_page_set.to_s + "#{hold_add}" + ", "
#     else
#       "Error: capacity has an invalid value (#{@job_ids})"
#     end
#   end
# end





  # pigs =  pdf.image open("app/assets/images/logo.png"), :fit => [100, 100],
       # :position => :center  
              # pdf.text_box "#{item_array[0]} ", :color => "ff0000", :size => 12, :at => [place_array[0][0], place_array[0][1]] 
            # pdf.text_box "#{item_array[0]} ", :color => "ff0000", :size => 12, :at => [place_array[0][0], place_array[0][1]] 
            
      # pdf.font "#{Prawn::DATADIR}/fonts/Spirax-Regular.ttf"

      # pdf.bounding_box([-20, 720], :width => 100, :height => 100) do
      #    # pdf.font("app/assets/font/Spirax-Regular.ttf")
      #    # pdf.font "Arial", size: 11
      #     pdf.image open("app/assets/images/logo.png"), :fit => [100, 100]

      # end

      # pdf.bounding_box([90, 600], :width => 100, :height => 100) do
      #   # pdf.font "/app/assets/fonts/Spirax-Regular.ttf"
      #   pdf.text item_array[0], :color => "00ff00"
      # end
      
      # pdf.bounding_box([90, 580], :width => 200, :height => 150) do
      #   pdf.text item_array[1]
      # end

      # pdf.bounding_box([90, 550], :width => 200, :height => 150) do
      #   pdf.text item_array[2]
      # end
      
      # pdf.bounding_box([90, 450], :width => 200, :height => 150) do

      # pdf.font "OpenSans"
      #   pdf.text item_array[3]
      # end




            # puts "get my page"
            # if(params["records"] != nil)
            #    record_page_set = params["records"]
            #    puts "of collection : " + record_page_set.to_s
            #    if(page != nil)
            #         record_page_set = page + record_page_set
            #         puts "of page : #{record_page_set}" + record_page_set.to_s
            #    else

            #    end 
            #    # record_set = ""
            # else
            #     pass_string = ""
            #     @record_page_set = ""
            #     puts "new record #{record_page_set}<check *>"
            # end

            # if(params["book_c"] != nil)
            #     books = params["book_c"]
            #     record_set = new_book.getBookPages(books, record_set)
            #     puts "set records from params #{record_set}<check *>"
            #     # return record_set
            # else
            #     record_set = ""
            #     puts "set records from params <check *>"
            # end

            # if(params["page"])
            #     page = params["page"].to_s
            #     page_set = record_set + params["page"] + ", "
            # end 

            # @record_page_set = @record_page_set.to_s + record_set
            # @record_page_set = @record_page_set.to_s + params["records"] #  + params["page"]
            # @record_page_set = params[:records]
            
     

                # log = ""
                # @job_ids.each do |job|
                #     log = log + job + ", "
                # end
                # @record_page_set =  log
            # puts "update jobs list #{@job_ids} and #{@record_page_set} or log <check *>"

            # # check for record params
            # if(params[:records] != nil)
            #     # @job_ids = params[:records].split(', ')
            #     # @record_page_set = @job_ids
            # end
            # if(@job_ids == nil)
            #     @job_ids = ""
            #     puts "create jobs list <check *>"
            # end






      
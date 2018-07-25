class PdfPagesController < ApplicationController
	#include pdf helper methods
	include PdfPagesHelper, PdfFontsHelper, ChooserPagesPdf
    def index
        @next = 0
        
        if(params[:add])
            @next = params[:add].to_i
            @my_record = params[:rec_id] +  @next
            @record = Record.find(@my_record.to_i)

        end
        
        if(params[:rec_id])
            @my_record = params[:rec_id]
            @record = Record.find(@my_record.to_i)

        else
            @record = Record.find(params[:id])        
        end
        
        @records = Record.all
        total_records =  @records.length
        @last_record = total_records - 1
        record = @record
        #    @image_tag = Array.new
        # @images = Dir.glob("app/assets/images/pf_base_btn_set/*.jpg")
        #  @form_pages = "<div class='page_samp'>#{@images[0]}</div>"
        #  @img_lib = @images.length

        show

    	 # @book_all = Book.all
    end 

    def show
        # tracking book pages  
        new_book = Chooser.new
        @contracts = Contract.all
        # @books = Book.where({id: 2})
        @books = Book.all
        # @books = Book.find(1)  
        # pageQue = Chooser.new 
        if(params[:records])
            @record_page_set = params[:records]
        else 
            @record_page_set = ""    
        end
        # @record_page_set = ""
        holdpage_add = params["page"].to_i
        
        # @record_page_set = new_book.addSinglePage(params["page"].to_i, @record_page_set)
        # if()

        puts @record_page_set.to_s + "before set "
        @record_page_set = getParams(params, new_book, @record_page_set)
       
        # puts @page + " new"
        # @record_page_set = new_book.addSinglePage(@page, @record_page_set)
        puts @record_page_set.to_s + "after book set"
        # # check if each page added 
        # if(params["records"] != nil) 
        #     @record_page_set = params["records"]
        #     # @record_page_set = params[:records]
        #     puts "set records from params"
        # else
        #     pass_string = ""
        #     @record_page_set = ""
        #     puts "new record"
        # end

        # book_list = ""
        # if(book_list == nil)
        #   book_list = ""
        # end    
        # # if(params["book_call"] != nil)
        # #   # @book_list =  @book_list.push(params["book_call"])
        # # end
        # @book_list = "no"
        # if(params["book_c"] != nil)
        #   if(@book_list)
        #         @book_list = "" + @book_list + ", "+  params["book_c"]
        #          puts @book_list
        #          puts "set list"
        #     @book_list
        #   else
        #     @book_list = ""
        #     puts @book_list
        #     puts "sample set"
        #   end
        # end

        # break string into array
        # if(params[:records] != nil)
        #     @job_ids = params[:records].split(', ')
        # end
        # if(@job_ids == nil)
        #     @job_ids = ""
        # end 
         


        # if(@record_page_set != nil) 

        # new_book.getBookPages(2, count)
        # else 
            # new_book.getBookPages(2, nil)
        # end

        count = 0
        # size of pdf lib 
        @book_page_set = @books.length
        
        # last selection 
        
        # puts holdpage_add.to_s + " last items added to current page var list"
        
        # Contract.where({"book_id" => 1})
        puts @record_page_set + "hello"

    end

    def create
    	@contracts = Contract.all
        @records = Record.find(params[:rec_id])
        # get_pages = params[:records]
    
        if(params[:records] != nil)
          @job_ids = params[:records].split(', ')
            @job_ids.each do |var| 
                var
                puts var
            end
          puts "done"  
        end
        get_cont = []

        @job_ids.each do |x|
            get_cont.push(Contract.where({id: x}))
            puts get_cont.length
        end

        # @contracts = Contract.find()
        @contracts.each do |pick_id|
            pick_id.id
        end

        # check for page id 
        if(params[:id])
           @parts = PagePart.where({contract_id: params[:id]})
           # @parts[0].id
        else
           @parts = PagePart.where({contract_id: 1})   
        end
        
        @layouts = PageLayout.where({contract_id: 1})
    	
        # @layouts = PageLayout.all
      	# @layouts[0].posx
        item_array = []
            @parts.each do |x|
            item_array.push(x.content) 
        end

        place_array = [] 
            @layouts.each do |z|
            place_array.push([z.posx, z.posy]) 
        end

        records_array = []
        # @records.each do |d|
              # d.each do |e|
              # puts d
              # end
              # records_array.push(d) 
              # end
        # puts @record_page_set + "hello2"
      	puts place_array.length
          # if format is pdf
            respond_to do |format|
                format.html
                format.pdf do 
                pdf = Prawn::Document.new
                AddFontsPdf.new(pdf)
                @record_page_set = params["records"]
                # @moof = contract.id
                # file from assets 
                if(@records != nil)
                    get_cont.each do |contract| 
                        sample = SendLetter.new(pdf, item_array, place_array, @records)
                        pdf.start_new_page
                    end
                end
                send_data pdf.render, filename: 'point_funding_doc.pdf', type: 'application/pdf', disposition: "inline"
            end
        end
    end


    private 
    def getParams(params, new_book, record_page_set)
        if(params != nil)
            puts "passed in some vars in url <check *>"
            # check if each page added 
            if(record_page_set != nil)
                puts "show record" + record_page_set
            end

            if(params[:book_c] != nil)
                books = params[:book_c]
                add_books = new_book.getBookPages(books, record_page_set)
                # @record_page_set = record_page_set.to_s + add_books.to_s
                puts "Collection " + add_books + " - |  " + record_page_set
            end
            
            # record_page_set = ""
            if(params["page"])
                page = params["page"].to_s + ", "
                # record_page_set = new_book.addSinglePage(1, "")
                # record_page_set = record_page_set + page
                puts " get page " + page + " no : "
                # @page = page
            else
                page = ""
            end
                # @page = page
                puts page + " current page"
            # end
            
            
            if(params[:records] != nil)
                # if(page != nil)
                    record_col = params[:records].to_s
                    # record_page_set = record_col + page.to_s
                    # puts record_page_set + " page and records"
                # else
                    # record_page_set = params[:records].to_s
                    # puts record_page_set + " only records"
                # end
               
                # @record_page_set = record_page_set 
                # puts record_page_set + " nil page"
            else
                

            end
           
            record_page_set = record_page_set.to_s + add_books.to_s + page   

            if(params[:remove])
              record_page_set = splitRemove(record_page_set)
              puts "send removeable " + record_page_set.to_s
            end



            # uniwue check 
            record_page_set = record_page_set.to_s
            if(params)
                record_page_set = split(record_page_set)
            end


            puts record_page_set.to_s + " why "
            @record_page_set = record_page_set   
            # @record_page_set = record_page_set.to_s + add_books.to_s + page   


                # @record_page_set = record_page_set + page  
                # puts @record_page_set + " add all"  
            # @record_page_set = record_page_set
            # @record_page_set = new_book.addSinglePage(page, record_page_set)
            # @record_page_set = new_book.addSinglePage(page, record_page_set)
            return @record_page_set


        end
        # puts @record_page_set
        # return @record_page_set

    end
    # check array of string 
    def split(record_page_set)
        job_ids = ""
        if(record_page_set != nil)
            job_ids = record_page_set.split(', ')
             puts job_ids.to_s + " after split "
            job_ids = job_ids.uniq
             puts job_ids.to_s + " after uniq "
            job_ids = job_ids.join(', ')
            
            if(job_ids == ", " || job_ids[job_ids.length - 1] == ",")
                job_ids =  ""
            else
                job_ids = job_ids + ", "
            end
            
            
            # puts @job_ids.join(', ')
            puts job_ids.to_s + " after join check for "

            if(job_ids[0] == ",")
                job_ids = ""
            end
            return job_ids
        end
    end


    def splitRemove(record_page_set)
        if(params["remove"] != nil)
            remove = params[:remove]
            puts remove + " choosen to remove " + record_page_set + " from"
            rem_job_ids = ""

            if(record_page_set != nil)
                rem_job_ids = record_page_set.split(', ')
                puts rem_job_ids.to_s + " remove to array "
                if (rem_job_ids.find_index(remove))
                    puts rem_job_ids.to_s + " found it " + remove.to_s

                    index_A = rem_job_ids.find_index(remove)
                    puts  " index : " + index_A.to_s

                    if(rem_job_ids != nil)
                        rem_job_ids.delete_at(index_A)
                        rem_job_ids = rem_job_ids
                        puts remove + " after remove " + rem_job_ids.to_s + " -- " +  rem_job_ids[0].to_s


                        rem_job_ids = rem_job_ids.join(', ')
                        rem_job_ids = rem_job_ids + ", "

                        record_page_set = rem_job_ids
                    end
                    return record_page_set
                else

               
                    # rem_job_ids 
                    return record_page_set
                end
            end
        end
    end
                
    # def setBook(new_book, record_set)
    #     if(params["book_c"] != nil)
    #         books = params["book_c"]
    #         record_set = new_book.getBookPages(books, record_set)
    #         return record_set
    #     end
    # end
end


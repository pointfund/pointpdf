module FindContracts
	# class ShowContracts
		def get_contracts
			 if (params["contract_id"] != nil)
		        @contracts = Contract.where({id: params["contract_id"]})
		        puts @contracts.length

		        # @contracts = Contract.where({id: @page_parts[0].book_id})
		    else
		        @contracts = Contract.all
		    end
		    return @contracts
		end
	# end


		# @contracts = Contract.where({ book_id: @book.id })


end

# module DisplayBookContracts
# 	class ShowBookContracts  
# 		def this_method
# 			puts "hello"
# 		end
# 	end
# 	def this_method
# 		puts "hello  but No"
# 	end
# end
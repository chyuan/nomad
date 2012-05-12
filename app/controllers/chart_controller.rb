class ChartController < ApplicationController
require 'googlecharts'

before_filter :bar_chart

#def show_data
#   @platforms = params[:platforms] || []
#end


#def make_graph 
#	@test = Gchart.line_xy(:size => '500x600', 
#             :title => "example title",
#              :bg => 'efefef',
#              :legend => ['first data set label', 'second data set label'],
#              :data => [[10, 20, 30, 40, 50], [10, 30, 120, 45, 72]])
#  end
  
def bar_chart
  @uid = 'eDBqNUx1lc'
  @TruckData = Trucks.where(:UserObjectID => @uid).all[0].SalesData
  @products = @TruckData.first #For initialization purposes only
  @prodName = {} #The keys are the products ID, the values are the product names
  @location = [] 
  @prod = params[:products] || [] #Whats been checked for products
  @loc = params[:Locations] || [] #Whats been checked for location
  @prodNum = {} #The keys are the product IDs, the values are the number of items sold 
  
  
  #Make location array BANDAID
  @TruckData.each do |stop|
    if !(@location.include? stop[1])
      @location.append(stop[1])
    end
  end
  #This chunk will automatically check all the check boxes if it defaults to zero
  if @prod == []  
    @products.each_with_index do |product, index|
      if (index > 1)
        @prod.append(product[1])
      end
    end
  end
  #This chunk will automatically check all the check boxes if it defaults to zero
  if @loc == []
    @TruckData.each do |stop|
      @loc.append(stop[1])
    end
  end
  
   # This makes the prodName dictionary (ID => Name)
   @products.each_with_index do |product, index|
      if (index > 1)
        @prodName[product[1]] = product[0]
      end
    end
   

   #This makes the prodNum dictionary (ID => Items Sold)
   @TruckData.last(7).each do |stop|
     if (@loc.include? stop[1])
       stop.each_with_index do |product, index|
         if (index > 1)
           if @prodNum.has_key?(product[1])
             @prodNum[product[1]] = @prodNum[product[1]] + product[2]
           else
             @prodNum[product[1]] = product[2]
           end
         end
       end
     end
   end

#Makes the table elements
  recent_table = GoogleVisualr::DataTable.new
  recent_table.new_column('string', 'Date')
  #recent_table.new_column('string', 'Location')
  # Make these read from check boxes for each product, then loop and create columns
  productArray = []
  for i in @prod
    productArray.append('number') #Number dictates what type of data is being added to the table
    productArray.append(@prodName[i]) #This adds the ID to the table
  end
  for i in 0..(productArray.length - 1)
    if i % 2 == 1 then
      next
    end
    recent_table.new_column(productArray[i], productArray[i + 1]) # add column for sale count for each product
  end
  
  insertArray = []  
  for key in @prodNum.keys
    if @prod.include? key
    end
  end
 # @TruckData.each do |stop|
  #  insertArray = []
#    insertArray.append(stop[0])
  #  if @loc.include? stop[1]
  #    insertArray.append(stop[1])
   #   for i in 2..@prod.length+1 #@prod.length+1 because go from 2 to length - 1 but @prod doesnt include the first two values (index>1)
    #      if (@prod.include? stop[i][1]) then # Compares product ID from @prod and the truckdata
     #      insertArray.append(stop[i][2])
      #   else
       #    insertArray.append(0)
        #  end
    #  end
     # recent_table.add_row(insertArray)
    #end
 #  @location.append(insertArray[0])
 #end
  opts = { :width => 800, :height => 400, :title => 'Company Performance', vAxis: {title: 'Year', titleTextStyle: {color: 'red'}} }
  @chart = GoogleVisualr::Interactive::BarChart.new(recent_table, opts)

  @line = GoogleVisualr::Interactive::LineChart.new(recent_table, opts)

  table_opts   = { :showRowNumber => true }
  @table = GoogleVisualr::Interactive::Table.new(recent_table, table_opts)


end
end

#Code repository SO GHETTO
#This makes the prodNum dictionary (ID => Items Sold)
=begin
@TruckData.each do |stop|
  if (@loc.include? stop[1])
    stop.each_with_index do |product, index|
      if (index > 1)
        if @prodNum.has_key?(product[1])
          @prodNum[product[1]] = @prodNum[product[1]] + product[2]
        else
          @prodNum[product[1]] = product[2]
        end
      end
    end
  end
end
=end
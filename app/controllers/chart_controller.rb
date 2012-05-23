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
    session[:userID] = 'yzpkFMqj4A'

  @uid = session[:userID]
  @TruckData = Trucks.where(:UserObjectID => @uid).all[0].SalesData
  @products = @TruckData.first #For initialization purposes only
  @prodName = {} #The keys are the products ID, the values are the product names
  @location = [] #An array of all the locations
  @prod = params[:products] || [] #Whats been checked for products
  @loc = params[:Locations] || [] #Whats been checked for location
  @prodNum = {} #The keys are the product IDs, the values are the number of items sold 
  @weeklytotal = {} #The keys are product IDs, values are weekly total sales
  
  #Make location array BANDAID
  @TruckData.each do |stop|
    if !(@location.include? stop[1])
      @location.append(stop[1])
    end
  end
  #This chunk will automatically check all the product check boxes if it defaults to zero
  if @prod == []  
    @products.each_with_index do |product, index|
      if (index > 1)
        @prod.append(product[1])
      end
    end
  end
  #This chunk will automatically check all the location check boxes if it defaults to zero
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
   
timeparse = Regexp.new(/\d*-\d*-\d*/) #Regular expression that pulls out the string datetime
#@test = timeparse.match(Trucks.where(:UserObjectID => 'eDBqNUx1lc').all[0].SalesData[0][0].values[1])

#Makes the table elements
  recent_table = GoogleVisualr::DataTable.new
  recent_table.new_column('string', 'Date')
  avg_table2 = GoogleVisualr::DataTable.new
  avg_table2.new_column('string', 'Item') # used to generate the daily average graph
  avg_table2.new_column('number', 'Daily Avg')
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
    temp = []
    temp.append(productArray[i+1])
    temp.append(0)
    avg_table2.add_row(temp)  # add each item as a row
  end
  
  #This makes the prodNum dictionary (ID => Items Sold)
  date = ""
  previousdate = ""
  @TruckData.each do |stop|
    insertArray = []
    @prodNum = {}
    date = timeparse.match(stop[0].values[1]).to_s()
    if previousdate != date
      @TruckData.each do |stop2| #lol N^2
        ndate = timeparse.match(stop2[0].values[1]).to_s()
        if date == ndate
          if (@loc.include? stop2[1])
            stop2.each_with_index do |product, index|
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
      end
    if @prodNum != {}
      datetext = Date.parse(date)    
      insertArray.append(datetext.strftime("%A %m/%d"))
      for key in @prod
        insertArray.append(@prodNum[key])
        @test = @prodNum
      end
      recent_table.add_row(insertArray)
    end
    end
    previousdate = date
  end

  # calculating the product averages from the recent table
  @TruckData.each do |stop|
   if (@loc.include? stop[1])
     stop.each_with_index do |product, index|
        if (@prod.include? product[1])
         if (index > 1)
           if @weeklytotal.has_key?(product[1])
             @weeklytotal[product[1]] = @weeklytotal[product[1]] + product[2]
           else
             @weeklytotal[product[1]] = product[2]
          end
        end
       end
     end
   end
 end

@weeklytotal.each_with_index do |item, i|
  temp = (item[1].to_f/7*100).round/100.0
  avg_table2.set_cell(i,1,temp)
end


  opts = { :width => 800, :height => 400, :title => 'Recent Sales Trends', :legend => 'right', vAxis: {title: 'Items Sold', titleTextStyle: {color: '#0c7ac4'}}, hAxis: {title: 'Date', titleTextStyle: {color: '0c7ac4'}} }
#  @chart = GoogleVisualr::Interactive::BarChart.new(recent_table, opts)
#  @line = GoogleVisualr::Interactive::LineChart.new(recent_table, opts)
  @area = GoogleVisualr::Interactive::AreaChart.new(recent_table, opts)

  opts2 = { :width => 800, :height => 400, :title => 'Daily Averages', :legend => 'none', vAxis: {title: 'Daily Avg', titleTextStyle: {color: '#0c7ac4'}}, hAxis: {title: 'Item', titleTextStyle: {color: '0c7ac4'}} }
  @table2 = GoogleVisualr::Interactive::ColumnChart.new(avg_table2, opts2)

  table_opts   = { :showRowNumber => false}
  @avgtable = GoogleVisualr::Interactive::Table.new(avg_table2, table_opts)
#  @table = GoogleVisualr::Interactive::Table.new(recent_table, table_opts)
  
  


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

=begin
  #add elements to our dictionary
  if (@loc.include? stop[1])
    stop.each_with_index do |product, index|
      if (index > 1)
        @prodNum[product[1]] = @prodNum[product[1]] + product[2] 
      end
    end
  end
else
  previousdate = date
  #remake dictionary
  if (@loc.include? stop[1])
    stop.each_with_index do |product, index|
      if (index > 1)
          @prodNum[product[1]] = product[2]
      end
    end
  end
=end #might be off by an end

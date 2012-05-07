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

   @prod = params[:products] || ["C"]
	 #  ["C", "Chicken Empanadas", "Chicken Empanadas", "Chicken Empanadas", "Chicken Empanadas", "Chicken Empanadas", "Chicken Empanadas", "Chicken Empanadas", "Chicken Empanadas", "Chicken Empanadas", "Chicken Empanadas", "Chicken Empanadas", "Chicken Empanadas", "Chicken Empanadas", "Chicken Empanadas"]
  @loc = params[:Locations] || []

  recent_table = GoogleVisualr::DataTable.new
 # recent_table.new_column('string', 'Date')
  recent_table.new_column('string', 'Location')
  # Make these read from check boxes for each product, then loop and create columns
  productArray = []
  for i in @prod # temporary until products are selectable in chart
    productArray.append('number')
    productArray.append(i)
  end
  for i in 0..(productArray.length - 1)
    if i % 2 == 1 then
      next
    end
    recent_table.new_column(productArray[i], productArray[i + 1]) # add column for sale count for each product
  end
    

  # Last 7 stops
  @products = Trucks.where(:UserObjectID => 'eDBqNUx1lc').all[0].SalesData.first
  @location = []
  

  Trucks.where(:UserObjectID => 'eDBqNUx1lc').all[0].SalesData.last(7).each do |stop|
    insertArray = []
#    insertArray.append(stop[0])
    insertArray.append(stop[1])
    for i in 2..16
       if (@prod.include? stop[i][1]) then # same reference as above, temporary until selectable
        insertArray.append(stop[i][2])
      end
    end
   recent_table.add_row(insertArray)
   @location.append(insertArray[0])
  end
  opts = { :width => 800, :height => 400, :title => 'Company Performance', vAxis: {title: 'Year', titleTextStyle: {color: 'red'}} }
  @chart = GoogleVisualr::Interactive::BarChart.new(recent_table, opts)

  @line = GoogleVisualr::Interactive::LineChart.new(recent_table, opts)

  table_opts   = { :showRowNumber => true }
  @table = GoogleVisualr::Interactive::Table.new(recent_table, table_opts)


end
end

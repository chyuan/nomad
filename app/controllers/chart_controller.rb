class ChartController < ApplicationController
require 'googlecharts'

before_filter :bar_chart
  def index
  end

  def make_graph 
	@test = Gchart.line_xy(:size => '500x600', 
              :title => "example title",
              :bg => 'efefef',
              :legend => ['first data set label', 'second data set label'],
              :data => [[10, 20, 30, 40, 50], [10, 30, 120, 45, 72]])
  end
  
def bar_chart
  data_table = GoogleVisualr::DataTable.new
  data_table.new_column('string', 'Day')
  data_table.new_column('number', 'Sales')
  Sales.all.each do |sale|
    data_table.add_row([sale.Day, sale.Sales])
  end
  opts = { :width => 800, :height => 400, :title => 'Company Performance', vAxis: {title: 'Year', titleTextStyle: {color: 'red'}} }
  @chart = GoogleVisualr::Interactive::BarChart.new(data_table, opts)

  @line = GoogleVisualr::Interactive::LineChart.new(data_table, opts)


end
end

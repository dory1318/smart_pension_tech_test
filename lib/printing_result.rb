class PrintingResult

  def print_views(view, uniq)
    view.each do |k, v|
      print "The '#{k}' page had #{v} views.\n"
    end
    print "\n"
    uniq.each do |k, v|
      print "The '#{k}' page had #{v} unique views.\n"
    end
  end

end

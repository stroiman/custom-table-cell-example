class MainViewController < UIViewController
  layout do
    @table_view = UITableView.alloc.initWithFrame(self.view.bounds, style: UITableViewStylePlain)
    @table_view.dataSource = self
    @table_view.delegate = self
    subview(@table_view)
  end

  def layoutDidLoad
    @cells = [
      CustomCell.create("Alpha"),
      CustomCell.create("Beta"),
      CustomCell.create("Gamma") ]
  end

  def noOfSectionsInTableView(tableView)
    1
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @cells.length
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    # Normally, you should query the table for reusable cells
    # but this has been simplified in this example.
    index = indexPath[1]
    @cells[index]
  end

  def tableView(tableView, heightForRowAtIndexPath: indexPath)
    index = indexPath[1]
    @cells[index].frame.size.height
  end
end

class MainViewController < UIViewController
  layout do
    @table_view = UITableView.alloc.initWithFrame(self.view.bounds, style: UITableViewStylePlain)
    @table_view.dataSource = self
    @table_view.delegate = self
    subview(@table_view)
  end

  def noOfSectionsInTableView(tableView)
    1
  end

  def tableView(tableView, numberOfRowsInSection: section)
    0
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    nil
  end
end

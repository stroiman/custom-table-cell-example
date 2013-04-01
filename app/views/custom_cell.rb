class CustomCell < UITableViewCell
  def self.create(title)
    cell = CustomCell.alloc.init
    cell.title=(title)
    cell
  end

  def title=(title)
    @label.text = title
  end

  def init
    self.stylesheet = Teacup::Stylesheet[:custom_cell]
    initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: "reuseId") 
    layout(self, :dummy) do
      @label = subview(UILabel, :dummy) # Currently, the UILabel style is not applied if no style name specified
    end
  end
end

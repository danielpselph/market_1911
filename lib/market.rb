class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    vendors << vendor
  end

  def vendor_names
    vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    vendor_items = []
    @vendors.each do |vendor|
      if vendor.inventory.include?(item)
        vendor_items << vendor
      end
    end
    vendor_items
  end

  # vendor.inventory.find_all {|item| item == item}
  # # require "pry"; binding.pry
  # vendor_items << vendor
  # require "pry"; binding.pry

    #find_all {|item| item == item}


end

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

  def sorted_item_list
    sorted_items = []
    @vendors.each do |vendor|
      vendor.inventory.each do |item|
        sorted_items << item[0].name
      end
    end
    sorted_items.uniq.sort
  end

  def total_inventory
    all_inventory = {}
    @vendors.each do |vendor|
      vendor.inventory.each do |ven|
        # require "pry"; binding.pry
      all_inventory[ven[0]] = ven[1]
      # require "pry"; binding.pry
    end
    end
    all_inventory
  end

  # def total_inventory
  #   @vendors.reduce(Hash.new) do |result, vendor|
  #     vendor.each do |item|
  #       require "pry"; binding.pry
  #     end
  #   end
  # end

end

# inventory[:item] =
# require "pry"; binding.pry
# vendor.inventory.each do |item|
# require "pry"; binding.pry
# vendor.inventory.find_all {|item| item == item}
# # require "pry"; binding.pry
# vendor_items << vendor
# require "pry"; binding.pry

#find_all {|item| item == item}

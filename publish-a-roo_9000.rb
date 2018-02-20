require 'launchy'
require './methods.rb'


def publish(array, locale)
  array.each do |bid|
    if bid['/']
      new_str = bid.slice(0..(bid.index('/'))).tr('/', '')
      puts "bid => #{new_str} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{new_str};productState=Draft;productFamily=Devices;productType=Physical/publish")
    else
      puts "bid => #{bid} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{bid};productState=Draft;productFamily=Devices;productType=Physical/publish")
    end
  end
end

def market(array, locale)
  array.each do |bid|
    if bid['/']
      new_str = bid.slice(0..(bid.index('/'))).tr('/', '')
      puts "bid => #{new_str} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{new_str};productState=Draft;productFamily=Devices;productType=Physical/market")
    else
      puts "bid => #{bid} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{bid};productState=Draft;productFamily=Devices;productType=Physical/market")
    end
  end
end

def bundle(array, locale)
  array.each do |bid|
    if bid['/']
      new_str = bid.slice(0..(bid.index('/'))).tr('/', '')
      puts "bid => #{new_str} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{new_str};productState=Draft;productFamily=Devices;productType=Physical/storytelling")
    else
      puts "bid => #{bid} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{bid};productState=Draft;productFamily=Devices;productType=Physical/storytelling")
    end
  end
end

def product_s(array, locale)
  array.each do |bid|
    if bid['/']
      new_str = bid.slice(0..(bid.index('/'))).tr('/', '')
      puts "bid => #{new_str} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{new_str};productType=Physical/details")
    else
      puts "bid => #{bid} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{bid};productType=Physical/details")
    end
  end
end

def pdp_s(array, locale)
  array.each do |bid|
    if bid['/']
      new_str = bid.slice(0..(bid.index('/'))).tr('/', '')
      puts "bid => #{new_str} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{new_str};productState=Draft;productFamily=Devices;productType=Physical/storytelling")
    else
      puts "bid => #{bid} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{bid};productState=Draft;productFamily=Devices;productType=Physical/storytelling")
    end
  end
end

def ppdp_s(array, locale)
  array.each do |bid|
    if bid['/']
      new_str = bid.slice(0..(bid.index('/'))).tr('/', '')
      puts "bid => #{new_str} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}published-products/#{new_str};productState=Publish;productFamily=Passes;productType=Digital/storytelling")
    else
      puts "bid => #{bid} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/published-products/#{bid};productState=Publish;productFamily=Passes;productType=Digital/storytelling")
    end
  end
end

def live_site(array, locale)
  array.each do |bid|
    if bid['/']
      new_str = bid.slice(0..(bid.index('/'))).tr('/', '')
      puts "bid => #{new_str} for locale: #{locale}"

      Launchy.open("https://www.microsoft.com/#{locale}/store/d/generic_url_filler/#{new_str}")
    else
      puts "bid => #{bid} for locale: #{locale}"
      Launchy.open("https://www.microsoft.com/#{locale}/store/d/generic_url_filler/#{bid}")
    end
  end
end

def eol(array, locale)
  locale.each do |area_code|
    if bid['/']
      new_str = bid.slice(0..(bid.index('/'))).tr('/', '')
      puts "bid => #{new_str} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{new_str};productState=Draft;productFamily=Devices;productType=Physical/publish")
    else
      puts "bid => #{bid} for locale: #{locale}"
      Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{bid};productState=Draft;productFamily=Devices;productType=Physical/publish")
    end
  end
end


# work in progress
# def live_site(array, locale)
#   array.each do |bid|
#     if bid['/']
#       new_str = bid.slice(0..(bid.index('/'))).tr('/', '')
#       puts "bid => #{new_str} for locale: #{locale}"
#       https://www.microsoft.com/en-gb/store/d/xbox-one-s-1tb-console-minecraft-limited-edition-bundle/8ngxsgcqr2vr?activetab=pivot:overviewtab
#       Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{new_str};productState=Draft;productFamily=Devices;productType=Physical/storytelling")
#     else
#       puts "bid => #{bid} for locale: #{locale}"
#       Launchy.open("https://sftools.trafficmanager.net/store/#{locale}/products/#{bid};productState=Draft;productFamily=Devices;productType=Physical/storytelling")
#     end
#   end
# end


# print "Please enter the locale: e.g IE: "
#   locale = gets.chomp
# print "your locale is #{locale} \n"
#
# print "paste in your BIDS \n"
#   $/ = "end"
#   lines = STDIN.gets
#   bids = lines.gsub(/\s+/, ' ').strip
#   bid_arr = bids.split(' ')
#
# string = "market"
#
# # publish(bid_arr, locale)
# # product_s(bid_arr, locale)
#  pdp_s(bid_arr, locale)

loop do
  print "Please enter the country: "
    locale = gets.chomp()
  print "your locale is #{locale}\n"
  print "paste in your BIDS\n"
    lines = gets("end").chomp()
    bids = lines.gsub(/\s+/, ' ').strip
    bid_arr = bids.split(' ')


  loop do
    print "where do you want to go:"
      answer_string = gets.chomp()
    if answer_string == "publish"
      publish(bid_arr, locale)
        break
    elsif answer_string == "pdp story"
      pdp_s(bid_arr, locale)
        break
    elsif answer_string == "product story"
      product_s(bid_arr, locale)
        break
    elsif answer_string == "live site"
      live_site(bid_arr, locale)
        break
    elsif answer_string == "market"
      market(bid_arr, locale)
        break
    elsif answer_string == "published pdp"
      ppdp_s(bid_arr, locale)
        break
    else
      print "The options are: 'publish' 'pdp story' 'product story' 'live site' 'market' 'published pdp' \n"
    end
  end
end

nokogiri = Nokogiri.HTML(content)
listings = nokogiri.css('#searchProductResult li')

count = 0
listings.each do |listing|
  # initialize an empty hash
  movie = {}
  count += 1
  puts count

  puts listing.at_css('a.product-title-link').text.strip


=begin
  # extract the information into the product hash
  product['title'] = listing.at_css('h3.s-item__title')&.text

  # extract the price
  product['price'] = listing.at_css('.s-item__price')&.text

  # extract the listing URL
  item_link = listing.at_css('a.s-item__link')
  product['url'] = item_link['href'] unless item_link.nil?

  # specify the collection where this record will be stored
  product['_collection'] = "listings"

  # save the product to the job’s outputs
  outputs << product
=end
end

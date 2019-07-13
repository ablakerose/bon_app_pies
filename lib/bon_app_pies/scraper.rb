class Scraper
  def self.scrape_bon_app_pies
    html = open('https://www.bonappetit.com/recipes/desserts/slideshow/pie-recipes')
    
    doc = Nokogiri::HTML(html)
    
    doc.css(".gallery-slide-caption__hed").each do |pie_doc|
      binding.pry
      title = pie_doc.text
      Pie.new(title)
      
    end
  end
end
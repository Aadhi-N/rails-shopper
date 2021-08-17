class CategoriesController < ApplicationController
    def index
        # Single query to get product count for each category; group it under category ids, sort by ascending titles
        @categories = Category.joins(:products).select('categories.*, count(products.id) as products_count').group('categories.id').order(:title)  
    end
end

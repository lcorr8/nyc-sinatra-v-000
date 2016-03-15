class Figure <ActiveRecord::Base
  has_many :titles, through: :figure_titles
  has_many :figure_titles
  has_many :landmarks

  def self.slug
    self.name.downcase.gsub!(" ", "-")
  end

  def find_by_slug(figure_slug)
    Figure.all.find{|figure| figure.slug == figure_slug}
  end

end
class SitemapsController < ApplicationController

	def show
    # Redirect to CloudFront and S3
    redirect_to "http://dwhc7flw8q66q.cloudfront.net/sitemaps/sitemap.xml.gz"
  end

end

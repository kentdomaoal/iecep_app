module ApplicationHelper

	def render_header(link, sublinks)
		render partial: "layouts/header_links", 
            	locals: {:link_name => link, :sub_links => sublinks.split(",")}
	end

end

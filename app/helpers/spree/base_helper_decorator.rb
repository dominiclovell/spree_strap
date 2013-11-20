Spree::BaseHelper.module_eval do
    
    def breadcrumbs(taxon)
      return "" if current_page?("/") || taxon.nil?
      
      crumbs = [content_tag(:li, link_to(Spree.t(:home), spree.root_path))]
      if taxon
        crumbs << content_tag(:li, link_to(Spree.t(:products), products_path))
        crumbs << taxon.ancestors.collect { |ancestor| content_tag(:li, link_to(ancestor.name , seo_url(ancestor))) } unless taxon.ancestors.empty?
        crumbs << content_tag(:li, content_tag(:span, link_to(taxon.name , seo_url(taxon))))
      else
        crumbs << content_tag(:li, content_tag(:span, Spree.t(:products)))
      end
      content_tag(:ol, raw(crumbs.flatten.map{|li| li.mb_chars}.join), id: 'breadcrumbs', class: 'breadcrumb')
    end

    def logo(options = {})
      image_path = options[:image_path] || Spree::Config[:logo]
      classes = options[:classes] || nil

      unless classes.nil?
        link_to image_tag(image_path), spree.root_path, :class => classes
      else
        link_to image_tag(image_path), spree.root_path
      end
    end

    def taxons_tree(root_taxon, current_taxon, max_level = 1)
      return '' if max_level < 1 || root_taxon.children.empty?
      content_tag :ul, class: 'nav nav-pills nav-stacked' do
        root_taxon.children.map do |taxon|
          css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'active' : nil
          content_tag :li, class: css_class do
           link_to(taxon.name, seo_url(taxon)) +
           taxons_tree(taxon, current_taxon, max_level - 1)
          end
        end.join("\n").html_safe
      end
    end


end
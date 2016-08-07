class GeojsonController < ApplicationController
  def get_tenders
    result = []

    tenders = Module::CustomerManage::Tender.all.entries
    tenders.each do |tender|
      unless tender[:coordinates].blank? || tender[:coordinates][0].nil? || tender[:coordinates][1].nil?
        result << {
            type: 'Feature',
            properties: {
                title: tender.title,
                category: tender.category.to_s,
                id: tender.id.to_s
            },
            geometry:{
                type: 'Point',
                coordinates: tender.coordinates.reverse!
            }
        }
      end
    end

    geo_json = {
        'type' => 'Feature Collection',
        'features' => result
    }
    respond_to do |format|
      format.json { render json: geo_json }
    end
  end
end

class GeojsonController < ApplicationController
  def get_tenders
    result = []
    tenders = Module::CustomerManage::Tender.all.entries
    tenders.each do |tender|
      result << {
          type: 'Feature',
          properties: {
              title: tender.title

          }

      }
    end
    # result = {
    #     "type": "Feature",
    #     "properties": {
    #         "name": "Coors Field",
    #         "amenity": "Baseball Stadium",
    #         "popupContent": "This is where the Rockies play!"
    #     },
    #     "geometry": {
    #         "type": "Point",
    #         "coordinates": [31.2,48.5]
    #     }
    # }.to_json

    respond_to do |format|
      format.json { render json: result }
    end
  end
end

json.array!(@tender_comments) do |module_performer_manage_tender_comment|
  json.extract! module_performer_manage_tender_comment, :id
  json.url module_performer_manage_tender_comment_url(module_performer_manage_tender_comment, format: :json)
end

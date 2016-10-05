namespace :add_contact_data do
  task add: :environment do
    Module::CustomerManage::Tender.all.each do |tender|
      tender.contact_data = rand(36**10).to_s(36)
      unless tender.valid?
        tender.destroy
      else
        tender.save!
      end

    end
  end
end

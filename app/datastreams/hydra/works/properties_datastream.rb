# properties datastream: catch-all for info that didn't have another home.
class Hydra::Works::PropertiesDatastream < ActiveFedora::OmDatastream
  set_terminology do |t|
    t.root path: "fields"
    # This is where we put the user id of the object depositor
    t.depositor index_as: :stored_searchable
    t.owner
    #This attribute should hold the selected file which represent the work.
    t.representative
  end

  def self.xml_template
    builder = Nokogiri::XML::Builder.new do |xml|
      xml.fields
    end
    builder.doc
  end

  def prefix
    'properties_'
  end
end

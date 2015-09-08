module Hydra::Works
  # Namespace for Modules with functionality specific to GenericFiles
  module GenericFile
    extend ActiveSupport::Concern

    autoload :Derivatives,            'hydra/works/models/concerns/generic_file/derivatives'
    autoload :MimeTypes,              'hydra/works/models/concerns/generic_file/mime_types'
    autoload :ContainedFiles,         'hydra/works/models/concerns/generic_file/contained_files'
    autoload :VersionedContent,       'hydra/works/models/concerns/generic_file/versioned_content'
    autoload :VirusCheck,             'hydra/works/models/concerns/generic_file/virus_check'
    autoload :Characterization,       'hydra/works/models/concerns/generic_file/characterization'

    # Base class for creating objects that behave like Hydra::Works::GenericFiles
    class Base < ActiveFedora::Base
      include Hydra::Works::GenericFileBehavior
    end
  end
end

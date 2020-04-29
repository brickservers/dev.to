module ActsAsTaggableOn
  class Tag
    after_commit on: %i[create update] do
      ::Tag.find(id).index
    end

    after_commit on: :update do
      DataSync::Elasticsearch::Tag.new(self).call
    end
  end
end

module DataUpdateScripts
  class IndexTagsToElasticsearch
    def run
      # Choose to do inline so development envs are ready
      # immediately after this is run
      # Tag.find_each(&:index_inline)
    end
  end
end

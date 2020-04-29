module DataUpdateScripts
  class IndexChatChannelMembershipsToElasticsearch
    def run
      ChatChannelMembership.find_each(&:index_inline)
    end
  end
end

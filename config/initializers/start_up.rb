# frozen_string_literal: true

elastic_config = YAML.load_file("#{Rails.root}/config/elastic_search.yml")

ENV['ELASTICSEARCH_URL'] =
    (elastic_config[Rails.env].map { |e| "http://#{e["host"]}:#{e["port"]}" }).join(',')
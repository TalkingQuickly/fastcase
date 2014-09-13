# encoding: UTF-8

require 'curl'
require 'json'

module Fastcase
  class Client
    def initialize(api_token)
      @api_token = api_token
    end

    attr_accessor :api_token

    def public_link(options={volume: nil, reporter: nil, page: nil})
      if params = citation_hash(options)
        Curl::Easy.http_post("https://services.fastcase.com/REST/ResearchServices.svc/GetPublicLink", params.to_json) do |curl|
          curl.headers["Content-Type"] = "application/json"
        end.body_str
      else
        {}
      end
    end

    private

    def citation_hash(options={volume: nil, reporter: nil, page: nil})
      if options[:volume] && options[:reporter] && options[:page]
        {
          "Context"=> {
            "ServiceAccountContext" => api_token
          },
          "Request"=> {
            "Citations"=> [
              {
                "Volume"=> options[:volume].to_i,
                "Reporter"=> options[:reporter],
                "Page"=> options[:page].to_i
              }
            ]
          }
        }
      else
        nil
      end
    end
  end
end

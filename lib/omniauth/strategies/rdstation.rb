require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class RDStation < OmniAuth::Strategies::OAuth2
      option :name, 'rdstation'

      args %i[client_id client_secret]

      option :client_options,
             site: 'https://api.rd.services',
             authorize_url: 'https://api.rd.services/auth/dialog',
             token_url: 'auth/token'

      def request_phase
        auth_url = { redirect_url: callback_url }.merge(authorize_params)
        redirect client.auth_code.authorize_url(auth_url)
      end
    end
  end
end

OmniAuth.config.add_camelization 'rdstation', 'RDStation'

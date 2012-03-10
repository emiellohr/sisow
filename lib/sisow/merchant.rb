module Sisow
  class Merchant

    def self.payment_methods
      payments = Sisow::CheckMerchantRequest.perform
      [payments].flatten.map(&:payment)
    end

  end
end

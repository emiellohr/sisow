module Sisow
  class BanktransferPayment < Sisow::Payment

    def payment_method
      'overboeking'
    end

    def validity_string(response)
      [ response.transactionrequest.transaction.trxid,
        response.transactionrequest.transaction.documentid,
        merchant_id,
        merchant_key
      ].join
    end

  end
end

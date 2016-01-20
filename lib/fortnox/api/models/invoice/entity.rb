require "fortnox/api/models/entity/base"

module Fortnox
  module API
    module Enteties
      module Invoice < Fortnox::API::Entities::Base

        include Fortnox::API::Entities::Invoice::EDIInformation
        include Fortnox::API::Entities::Invoice::EmailInformation
        include Fortnox::API::Entities::Row

        #Url Direct url to the record.
        attribute :url, String, writer: :private

        #UrlTaxReductionList Direct url to the tax reduction for the invoice.
        attribute :url_tax_reduction_list, String, writer: :private

        #AccountingMethod Accounting Method.
        attribute :accounting_method, String

        #AdministrationFee The invoice administration fee. 12 digits (incl. decimals)
        attribute :administration_fee, Float

        #AdministrationFeeVAT VAT of the invoice administration fee.
        attribute :administration_fee_vat, Float, writer: :private

        #Address1 Invoice address 1. 1024 characters
        attribute :address1, String

        #Address2 Invoice address 2. 1024 characters
        attribute :address2, String

        #Balance Balance of the invoice.
        attribute :balance, Float, writer: :private

        #BasisTaxReduction Basis of tax reduction.
        attribute :basis_tax_reduction, Float, writer: :private

        #Booked If the invoice is bookkept.
        attribute :booked, Boolean, writer: :private

        #Cancelled If the invoice is cancelled.
        attribute :cancelled, Boolean, writer: :private

        #Credit If the invoice is a credit invoice.
        attribute :credit, Boolean, writer: :private

        #CreditInvoiceReference Reference to the credit invoice, if one exits.
        attribute :credit_invoice_reference, Integer

        #City City for the invoice address.
        attribute :city, String

        #Comments Comments of the invoice
        attribute :comments, String

        #ContractReference Reference to the contract, if one exists.
        attribute :contract_reference, Integer, writer: :private

        #ContributionPercent Invoice contribution in percent.
        attribute :contribution_percent, Float, writer: :private

        #ContributionValue Invoice contribution in amount.
        attribute :contribution_value, Float, writer: :private

        #Country Country for the invoice address.
        attribute :country, String

        # CostCenter Code of the cost center.
        attribute :cost_center, String

        #Currency Code of the currency.
        attribute :currency, String

        #CurrencyRate Currency rate used for the invoice. 16 digits
        attribute :currency_rate, Float

        #CurrencyUnit Currency unit used for the invoice. 16 digits
        attribute :currency_unit, Float

        #CustomerName Name of the customer. 1024 characters
        attribute :customer_name, String

        #CustomerNumber Customer number of the customer. Required
        attribute :customer_number, String

        #DeliveryAddress1 Invoice delivery address 1.
        attribute :delivery_address1, String

        #DeliveryAddress2 Invoice delivery address 2.
        attribute :delivery_address2, String

        #DeliveryCity City for the invoice delivery address.
        attribute :delivery_city, String

        #DeliveryCountry Country for the invoice delivery address.
        attribute :delivery_country, String

        #DeliveryDate Date of delivery.
        attribute :delivery_date, Date

        #DeliveryName  Name of the recipient of the delivery
        attribute :delivery_name, String

        #DeliveryZipCode ZipCode for the invoice delivery address.
        attribute :delivery_zip_code, String

        #DocumentNumber The invoice number.
        attribute :document_number, Integer

        #DueDate Due date of the invoice.
        attribute :due_date, Date

        #EDIInformation Separate EDIInformation object
        attribute :edi_information, EDIInformation

        #EmailInformation Separete EmailInformation object
        attribute :email_information, EmailInformation

        #EUQuarterlyReport EU Quarterly Report On / Off
        attribute :eu_quarterly_report, Boolean

        #ExternalInvoiceReference1 External invoice reference 1. 80 characters
        attribute :external_invoice_reference1, String

        #ExternalInvoiceReference  External invoice reference 2. 80 characters
        attribute :external_invoice_reference, String

        #Freight Freight cost of the invoice. 12 digits (incl. decimals)
        attribute :freight, Float

        #FreightVAT VAT of the freight cost.
        attribute :freight_vat, Float, writer: :private

        #Gross Gross value of the invoice
        attribute :gross, Float, writer: :private

        #HouseWork If there is any row of the invoice marked “house work”.
        attribute :house_work, Boolean, writer: :private

        #InvoiceDate Invoice date.
        attribute :invoice_date, Date

        #InvoicePeriodStart Start date of the invoice period.
        attribute :invoice_period_start, Date, writer: :private

        #InvoicePeriodEnd End date of the invoice period.
        attribute :invoice_period_end, Date, writer: :private

        #InvoiceRows Separate Row object
        attribute :invoice_rows Array[Row]

        #InvoiceType The type of invoice.
        attribute :invoice_type, String

        #Language Language code.
        attribute :language, String

        #LastRemindDate Date of last reminder.
        attribute :last_remind_date, Date, writer: :private

        #Net Net amount
        attribute :net, Float, writer: :private

        #NotCompleted If the invoice is set as not completed.
        attribute :not_completed, Boolean

        #NoxFinans If the invoice is managed by NoxFinans
        attribute :nox_finans, Boolean, writer: :private

        #OCR OCR number of the invoice.
        attribute :ocr, String

        #OfferReference Reference to the offer, if one exists.
        attribute :offer_reference, Integer, writer: :private

        #OrderReference Reference to the order, if one exists.
        attribute :order_reference, Integer, writer: :private

        #OrganisationNumber Organisation number of the customer for the invoice.
        attribute :organisation_number, String, writer: :private

        #OurReference Our reference. 50 characters
        attribute :our_reference, String

        #Phone1 Phone number 1 of the customer for the invoice. 1024 characters
        attribute :phone1, String

        #Phone2 Phone number 2 of the customer for the invoice. 1024 characters
        attribute :phone2, String

        #PriceList Code of the price list.
        attribute :price_list, String

        #PrintTemplate Print template of the invoice.
        attribute :print_template, String

        #Project Code of the project.
        attribute :project, String

        #Remarks Remarks of the invoice. 1024 characters
        attribute :remarks, String

        #Reminders Number of reminders sent to the customer.
        attribute :reminders, Integer, writer: :private

        #RoundOff Round off amount for the invoice.
        attribute :round_off, Float, writer: :private

        #Sent If the document is printed or sent in any way.
        attribute :sent, Boolean, writer: :private

        #TaxReduction The amount of tax reduction.
        attribute :tax_reduction, Integer, writer: :private

        #TermsOfDelivery Code of the terms of delivery.
        attribute :terms_of_delivery, String

        #TermsOfPayment Code of the terms of payment.
        attribute :terms_of_payment, String

        #Total The total amount of the invoice.
        attribute :total, Float, writer: :private

        #TotalVAT The total VAT amount of the invoice.
        attribute :total_vat, Float, writer: :private

        #VATIncluded If the price of the invoice is including VAT.
        attribute :vat_included, Boolean

        #VoucherNumber Voucher number for the invoice.
        attribute :voucher_number, Integer, writer: :private

        #VoucherSeries Voucher series for the invoice.
        attribute :voucher_series, String, writer: :private

        #VoucherYear Voucher year for the invoice.
        attribute :voucher_year, Integer, writer: :private

        #WayOfDelivery Code of the way of delivery.
        attribute :way_of_delivery, String

        #YourOrderNumber Your order number. 30 characters
        attribute :your_order_number, String

        #YourReference Your reference. 50 characters
        attribute :your_reference, String

        #ZipCode Zip code of the invoice. 1024 characters
        attribute :zip_code, String
      end
    end
  end
end
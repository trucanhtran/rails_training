class XmlFileController < ApplicationController
  def create
  end

  def update
    document = Nokogiri::XML(File.open(params[:xml_file]))
    customer = {
      service_type: document.at_css("serviceType").text,
      trial_order: document.at_css("trialOrder").text,
      customer_commercial_website: document.at_css("customerCommercialWebsite").text,
      customer_name: document.at_css("customerName").text,
      customer_time_zone: document.at_css("customerTimeZone").text,
      existing_account: document.at_css("existingAccount").text,
      new_account: document.at_css("newAccount").text,
      tech_contact_name: document.at_css("techContactName").text,
      tech_contact_email: document.at_css("techContactEmail").text,
      tech_contact_telephone: document.at_css("techContactTelephone").text
    }
    session[:customer] = customer
    redirect_to show_details_path
  end

  def show
    @customer = session[:customer]
  end
end

class CustomerMailerPreview < ActionMailer::Preview
  def confirmation
    customer = Customer.first
    CustomerMailer.confirmation(customer)
  end
end

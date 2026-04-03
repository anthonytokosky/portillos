class Message < ActiveRecord::Base

  scope :from_other_numbers, -> { where.not(from_number: ENV["twilio_number"]) }

  def self.outbound(to)
    portillos_image = PortillosPicker.new.options.sample
    begin
      TwilioClient.client.messages.create(
        to: to,
        from: ENV["twilio_number"],
        media_url: portillos_image
      )
      Message.create(from_number: ENV["twilio_number"], to_number: to, body: 'testing', media_url: portillos_image)
    rescue => e
    end
  end

end

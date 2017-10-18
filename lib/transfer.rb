class Transfer

  attr_accessor :sender, :receiver, :status, :amount


  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true :false
  end

  def execute_transaction
    if  @status == "pending" && @sender.balance < @amount
        "Transaction rejected. Please check your account balance."
        @status == "rejected"
    else
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
  
      end
    end

  #   def reverse_transfer
  #
  #   end
  # end
end

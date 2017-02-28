class BankAccount
  attr_accessor :balance, :pin

  @@totalBalance = 1000000

  def initialize(balance, pin)
    @balance = balance
    @pin = pin
  end

  def get_balance
    p "Account balance is: #{@balance}"
  end

  def welcome
    p "Hello there, welcome, enter name: "
    customer = gets.chomp
    p "Enter pin: "
    given_pin = gets.chomp

    if authorize(given_pin)
      p "Hello #{customer}, with pin #{given_pin}" if authorize(given_pin)
      @customer = customer
      @@authorized = true
      doTransaction()
    else
      p "Access denied, re-enter pin"
      given_pin = gets.chomp
      welcome()
    end
  end

  def withdraw
      if @@authorized
      p "Hello #{@customer}, how much do u want to withdraw"
      amount = gets.chomp
      @balance -= amount.to_i
      p "balance is #{@balance}"
      else
        p "Cannot withdraw"
      end

  end

  def deposit
    if @@authorized
      p "Hello #{@customer}, how much to deposit?"
      amount = gets.chomp
      @balance += amount.to_i
      p "balance is #{@balance}"
    else
      p "cannot deposit"
    end
  end

def doTransaction
  p "What would you like to do? (deposit, withdraw, check_balance)"
  @transaction = gets.chomp

  case @transaction
  when "deposit"
    deposit
  when "withdraw"
    withdraw
  when "check_balance"
    get_balance
  else

  end

end


  # every after this is private methods
  private

  def authorize(give_pin)
    @pin == give_pin.to_i
  end
end


john_accn = BankAccount.new(1000, 1234)

john_accn.welcome

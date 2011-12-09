require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_welcome_email
    user = users(:some_user_in_your_fixtures)
 
    # Send the email, then test that it got queued
    email = UserMailer.welcome_email(user).deliver
    assert !ActionMailer::Base.deliveries.empty?
 
    # Test the body of the sent email contains what we expect it to
    assert_equal [user.email], email.to
    assert_equal "Bienbenido a TDEW-Estacionamientos", email.subject
    assert_match(/<h1>Bienbenido a tdew-estacionamientos.heroku.com, #{user.name}<\/h1>/, email.encoded)
    assert_match(/Bienbenido a TDEW-Estacionamientos, #{user.name}/, email.encoded)
  end
end

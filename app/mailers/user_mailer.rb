class UserMailer < ApplicationMailer
  default from: 'dummy@gmail.com'  #edited

  def welcome_email(user)
    @user = user
    begin
      mail(to: @user.email, subject: 'A Heartfelt Message to Brighten Your Day! 🌈🌼',
      body: "Hey Naba,

      I hope this email finds you well and feeling the warmth of positivity around you! 🌞✨

      I wanted to take a moment to share some thoughts that I believe can bring a smile to your face:

      Life has a way of presenting us with challenges, but remember that with each challenge comes an opportunity for growth. Just like a tiny seed finds its way through the cracks in concrete to reach for the sun, you too can find strength within yourself to overcome obstacles.

      Surround yourself with people who believe in your dreams and encourage you to reach for the stars. Their support can be the wind beneath your wings as you soar toward your goals.

      It's the little things that often bring the most joy. A warm hug, a kind word, or the wag of a dog's tail can light up your day in ways you might not expect.

      Keep moving forward, step by step, even on days when the path seems steep. Progress is progress, no matter the pace, and every effort you make brings you closer to your aspirations.

      Remember, your light shines brightest when you remain positive in the face of challenges. Just like stars that illuminate the night sky, your perseverance and determination illuminate your journey.

      Take a deep breath, embrace the present moment, and know that you have the strength and resilience to overcome anything that comes your way. Your journey is uniquely yours, and every experience is a stepping stone toward the person you are becoming.

      Sending you a virtual hug and a bundle of good vibes to carry with you throughout the day. Stay inspired, stay motivated, and keep shining your amazing light!

      With heartfelt warmth and encouragement,
      Your admirer")
    rescue => e
      Rails.logger.error "Error sending email: #{e.message}"
    end
  end
end

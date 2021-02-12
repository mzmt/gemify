def create_user
  names = %w[tanaka satou sakurai honda nakai]
  names.each do |n|
    t = SecureRandom.alphanumeric(5)
    User.create!(name: n, email: "#{n}_#{t}@example.com", twitter_id: n + '_' + t, icon_url: 'https://example.com')
  end
end

def create_plan
  names = ['シャドバ', 'Minecraft', 'DBD', 'Among us', 'COD']
  User.all.each do |u|
    names.each do |n|
      Plan.create!(
        name: n,
        user_id: u.id,
        start_date: Time.now + 10.minutes + rand(1..1000).second,
        end_date: Time.now + 1.hour + rand(1..1000).second,
        emoji: '🎮'
      )
    end
  end
end

# def create_appointment
#   Hospital.all.sample(3).each do |h|
#     Appointment.create!(user_id: User.all.sample(1).first.id, hospital_id: h.id, visit_date: Time.now.since(7.days))
#   end
# end

if Rails.env == 'development'
  create_user
  create_plan
end

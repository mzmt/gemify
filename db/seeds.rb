def create_user
  names = %w[tanaka satou sakurai honda nakai]
  names.each do |n|
    t = SecureRandom.alphanumeric(5)
    User.create!(name: n, email: "#{n}_#{t}@example.com", twitter_id: n + '_' + t)
  end
end

def create_plan
  names = ['シャドバ', 'minecraft', 'DBD']
  names.each do |n|
    Plan.create!(
      name: n,
      user_id: User.all.sample.id,
      start_date: Time.now + rand(1..100000).seconds,
      end_date: Time.now.since(2.days) + rand(1..100000).seconds,
      emoji: '🎮'
    )
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

# config/initializers/solid_queue.rb

if Rails.env.production?
  SolidQueue.enabled = false
end

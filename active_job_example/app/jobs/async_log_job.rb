class AsyncLogJob < ApplicationJob
  queue_as :default

  def perform(message: "hello")
    AsyncLog.create!(message: message)   # DB に保存する
  end
end

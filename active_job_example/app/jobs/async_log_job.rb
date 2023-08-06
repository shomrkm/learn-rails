class AsyncLogJob < ApplicationJob
  queue_as :async_log
  # ジョブのリトライ設定　
  retry_on StandardError, wait: 5.seconds, attempts: 3
  # ジョブの破棄設定
  discard_on StandardError

  def perform(message: "hello")
    AsyncLog.create!(message: message)   # DB に保存する
  end
end

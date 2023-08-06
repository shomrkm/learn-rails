require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "welcome" do
    email = UserMailer.with(to: "shomrkm@example.com", name: "shomrkm").welcome

    # メールが送信キューに追加されるかどうかテスト
    assert_emails(1){ email.deliver_now }
    # 送信されたメールを確認するテスト
    assert_equal ["perfect_rails@example.com"], email.from
    assert_equal ["shomrkm@example.com"], email.to
    assert_equal "登録完了", email.subject
    assert_includes email.text_part.decoded, "shomrkm"
    assert_includes email.html_part.decoded, "shomrkm"
  end
end

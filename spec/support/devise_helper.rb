module DeviseHelper
  def test_admin
    @test_admin ||= create(:admin,  email: 'cc@gg.c', password: 'gggggg')
  end

  def auth_me_please
    test_admin
    post admin_session_path, :params => {'admin[email]' => 'cc@gg.c', 'admin[password]' => 'gggggg'}
  end
end

RSpec.define_context "authenticated" do
=begin
  it "fails without auth" do
    subject
    expect(response).to be_unauthorized
  end

  context "with a auth admin" do
=end
    before { auth_me_please }

    execute_tests
  end

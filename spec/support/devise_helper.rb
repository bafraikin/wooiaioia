module DeviseHelper
  def test_admin
    @test_admin ||= create(:admin)
  end

  def auth_me_please
    request.headers.merge! test_admin.create_new_auth_token
  end
end

RSpec.define_context "authenticated" do
  it "fails without auth" do
    subject
    expect(response).to be_unauthorized
  end

  context "with a auth admin" do
    before { auth_me_please }

    execute_tests
  end
end

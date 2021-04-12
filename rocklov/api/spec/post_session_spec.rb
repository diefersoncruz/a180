require_relative "routes/sessions"

describe "POST /sessions" do
  context "Login com sucesso" do
    before(:all) do
      @result = Sessions.new.login("dieff.cruz@gmail.com", "1234")
    end

    it "valida status code" do
      expect(@result.code).to eql 200
    end

    it "valida id do usuário" do
      expect(@result.parsed_response["_id"].length).to eql 24
    end
  end

  context "Senha invalida" do
    before(:all) do
      @result = Sessions.new.login("dieff.cruz@gmail.com", "abcde")
    end

    it "valida status code" do
      expect(@result.code).to eql 401
    end

    it "valida id do usuário" do
      expect(@result.parsed_response["error"]).to eql "Unauthorized"
    end
  end
end

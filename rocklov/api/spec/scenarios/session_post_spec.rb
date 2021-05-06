describe "POST /sessions" do
  context "Login com sucesso" do
    before(:all) do
      payload = { email: "dieffsilva@outlook.com", password: "1234" }
      @result = Sessions.new.login(payload)
    end

    it "valida status code" do
      expect(@result.code).to eql 200
    end

    it "valida id do usuário" do
      expect(@result.parsed_response["_id"].length).to eql 25
    end
  end

  # examples = [
  #   {
  #     title: "email invalido",
  #     payload: { email: "dieff.cruz@bol.com", password: "1234" },
  #     code: 401,
  #     error: "Unauthorized",
  #   },
  #   {
  #     title: "email em branco",
  #     payload: { email: "", password: "abcde" },
  #     code: 412,
  #     error: "required email",
  #   },
  #   {
  #     title: "sem o campo email",
  #     payload: { password: "abcde" },
  #     code: 412,
  #     error: "required email",
  #   },
  #   {
  #     title: "senha invalida",
  #     payload: { email: "dieff.cruz@gmail.com", password: "abcde" },
  #     code: 401,
  #     error: "Unauthorized",
  #   },
  #   {
  #     title: "senha em branco",
  #     payload: { email: "dieff.cruz@gmail.com", password: "" },
  #     code: 412,
  #     error: "required password",
  #   },
  #   {
  #     title: "sem o campo senha",
  #     payload: { email: "dieff.cruz@gmail.com" },
  #     code: 412,
  #     error: "required password",
  #   },
  # ]

  examples = Helpers::get_fixture("login")
  examples.each do |e|
    context "#{e[:title]}" do
      before(:all) do
        @result = Sessions.new.login(e[:payload])
      end

      it "valida status code #{e[:code]}" do
        expect(@result.code).to eql e[:code]
      end

      it "valida id do usuário" do
        expect(@result.parsed_response["error"]).to eql e[:error]
      end
    end
  end
end

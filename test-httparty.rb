require 'httparty'

class TestParty
  include HTTParty
  base_uri 'https://graph.facebook.com/v2.12/1269182809849975'
end

headers = {
  "Content-Type" => 'application/json',
  "authorization" => 'Bearer EAACcllC7sEQBADYJOeWmAZAGOjkynRySoACFOdBZAZC65Fq
  fX5RnLbonGKZCionTcUtwq0n067eKEZANx0ql9mYzG5xIpqVi5YVa5v0H7ocLEmXcHnkE6Q9Bye
  E8QnG8HxAZCXqHqzTSeEEzJMVZAp6WQoNqnZAZCgvZAdbhyyRtaZB3QZDZD'
}

RSpec.describe 'Testando APIs do Facabook =)' do
  it 'Realizando Post no mural' do
    begin
      response = TestParty.get('/feed?message=This+is+a+test+message', :headers => headers)
      expect(response.code).to eql(200)
      puts response.code
    end
  end

  it 'Alterando Post no mural' do
    begin
      response = TestParty.get('_1269230413178548?message=This+is+vai+curinthia', :headers => headers)
      expect(response.code).to eql(200)
      puts response.code
    end
  end

  it 'Ver todos os posts da minha Timeline' do
    begin
      response = TestParty.get('/posts', :headers => headers)
      expect(response.code).to eql(200)
      puts response.code
    end
  end
end

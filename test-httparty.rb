require 'httparty'

class TestParty
  include HTTParty
  base_uri 'https://jsonplaceholder.typicode.com'
end

RSpec.describe 'API TEST - POST' do
  it 'Should not create a contact without name' do
    @body = {
      "postId": 501,
      "id": 501,
      "name": "Pedro Ailals",
      "email": "Pedo2s.com",
      "body": "Aklsdu jdfhu dfj fdjfh fduuepçaalk fgji asdas"
    }.to_json

    begin
      response = TestParty.post('/comments', body: @body, :headers => {"Content-Type" => 'application/json'})
      expect(response.code).to eql(201)
      puts response.body
      puts response.message
    end
  end
end

  RSpec.describe 'API TEST - GET' do
    it 'Should not create a contact without name' do
      begin
        response = TestParty.get('/posts', body: @body)
        puts "Quantidade de posts: " +response.size.to_s
        expect(response.code).to eql(200)
        puts response.message
        puts response.code
      end
    end
end
#   it 'Should not create a contact without mobilephone' do
#     data = {
#       'name' => 'FRED',
#       'homephone' => '553133221144'
#     }
#
#     begin
#       response = TestParty.post('/contacts', body: data)
#       expect(response.code).to eql(400)
#       expect(response.body).to eql('Missing required property: mobilephone')
#     end
#   end
#   it 'Should create a contact' do
#     data = {
#       'name' => 'FREDRUBY',
#       'mobilephone' => '5531986116979',
#       'homephone' => '553133221144'
#     }
#     begin
#       response = TestParty.post('/contacts', body: data)
#       expect(response.code).to eql(201)
#       expect(response.parsed_response).to eql(data)
#     end
#   end
# end
#
# RSpec.describe 'API TEST - GET' do
#   it 'Should return a contact' do
#     begin
#       response = TestParty.get('/contacts?name=FREDRUBY')
#       expect(response.code).to eql(200)
#       expect(response[0]['name']).to eql('FREDRUBY')
#       expect(response[0]['mobilephone']).to eql('5531986116979')
#       expect(response[0]['homephone']).to eql('553133221144')
#     end
#   end
#
#   it 'Should return httpStatus 404 not found' do
#     begin
#       response = TestParty.get('/contacts?name=NAOEXISTE')
#       expect(response.code).to eql(404)
#       expect(response.body).to eql('Not Found')
#     end
#   end
# end
#
# RSpec.describe 'API TEST - PUT' do
#   it 'Should update a contact' do
#     newContact = {
#       'name' => 'FRED',
#       'mobilephone' => '55319999999999',
#       'homephone' => '553133334444'
#     }
#     begin
#       response = TestParty.put('/contacts/56d5efa8c82593800291c02b', body: newContact)
#       expect(response.code).to eql(204)
#     end
#   end
# end
#
# RSpec.describe 'API TEST - DELETE' do
#   it 'Should delete a contact' do
#     begin
#       response = TestParty.delete('/contacts/56d5efa8c82593800291c02b')
#       expect(response.code).to eql(204)
#     end
#   end
#   it 'Should not delete a contact' do
#     begin
#       response = TestParty.delete('/contacts/56d5efa8c82593800291c11a')
#       expect(response.code).to eql(404)
#     end
#   end
# end

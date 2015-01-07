json.array!(@members) do |member|
  json.extract! member, :id, :name, :uname, :dob, :gender, :contact, :email, :mpass, :cmpass
  json.url member_url(member, format: :json)
end

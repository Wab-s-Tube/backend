# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")


videos_first = [
    {
        file_name: "First Steps",
        size: 250,
        duration: 60,
        mime_type: "mpa"
    },
       {
        file_name: "My bike",
        size: 365,
        duration: 123,
        mime_type: "mpa"
    },
]

videos_second = [
    {
        file_name: "How to Drive",
        size: 2764,
        duration: 195,
        mime_type: "mpa"
    },
       {
        file_name: "Jackson Industry",
        size: 3489,
        duration: 486,
        mime_type: "mpa"
    },

    {
        file_name: "Little John",
        size: 31849,
        duration: 42746,
        mime_type: "mpa"
    },
]

videos_first.each do |video|
    user1.videos.create(video)
    p "creating video #{video}"
end

videos_second.each do |video|
    user2.videos.create(video)
    p "creating video #{video}"
end
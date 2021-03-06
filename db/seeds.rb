# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"


CSV.foreach('db/worship_places') do |row|
    WorshipPlace.create(:place_id      => row[0],
                        :name          => row[1],
                        :official_name => row[2],
                        :is_temple     => row[3],
                        :address       => row[4],
                        :latitude      => row[5],
                        :longitude     => row[6])
end
CSV.foreach('db/shrines') do |row|
    Shrine.create(:place_id => row[0],
                  :rank     => row[1],
                  :object   => row[2])
end

# 日枝神社
#place_id = 1
#WorshipPlace.create(:place_id       => place_id,
#                    :name           => '日枝神社',
#                    :official_name  => '日枝神社',
#                    :is_temple      => false,
#                    :address        => '東京都千代田区永田町2丁目10番5号',
#                    :latitude       => 35.674722,
#                    :longitude      => 139.739583)
#Shrine.create(:place_id => place_id,
#              :rank     => '官幣大社',
#              :object   => '大山咋神')
Service.create(:place_id      => 1,
               :start_time    => '09:00',
               :end_time      => '17:00',
               :is_book_sold  =>  true)


CSV.foreach('db/temples') do |row|
    Temple.create(:place_id => row[0],
                  :sect     => row[1],
                  :rank     => row[2],
                  :object   => row[3])
end

# 浅草寺
#WorshipPlace.create(:place_id       => place_id,
#                    :name           => '浅草寺',
#                    :official_name  => '浅草寺',
#                    :is_temple      => true,
#                    :address        => '東京都台東区浅草2丁目3番1号',
#                    :latitude       => 35.714722,
#                    :longitude      => 139.79675)
#Temple.create(:place_id => place_id,
#              :sect     => '聖観音宗',
#              :rank     => '総本山',
#              :object   => '聖観音菩薩')
Service.create(:place_id      => 700,
               :start_time    => '09:00',
               :end_time      => '17:00',
               :is_book_sold  =>  true)

ActiveRecord::Schema[7.1].define(version: 2016_04_23_214504) do

  create_table "messages", force: :cascade do |t|
    t.string "from_number"
    t.string "body"
    t.string "to_number"
    t.string "media_url"
  end

end

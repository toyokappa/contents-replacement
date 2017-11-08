class Theme < ApplicationRecord
  TOP_CONTENTS = {
    content1: "コンテンツ1",
    content2: "コンテンツ2",
    content3: "コンテンツ3"
  }
  TOP_CONTENTS_DEFAULT_ORDER = TOP_CONTENTS.keys

  serialize :contents_order, Hash
  validates :name, presence: true
end

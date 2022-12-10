class OrderItem < ApplicationRecord

    enum production_status: {
        製造不可: 0,
        製作待ち: 1,
        製作中: 2,
        製作済み: 3
    }

end

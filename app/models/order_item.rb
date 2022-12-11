class OrderItem < ApplicationRecord

    enum production_status: {
        impossible: 0,  #製造不可
        wait: 1,  #製作待ち
        producting: 2,  #製作中
        complete: 3  #製作済み
    }

end

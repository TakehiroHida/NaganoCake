class Order < ApplicationRecord
    
    enum payment_method: {
        credit: 0,  #クレジットカード決済
        bank: 1  #銀行振込
    }

    enum ordered_status: {
        wait: 0,  #入金待ち
        check: 1,  #入金確認
        producting: 2,  #製作中
        ready: 3,  #発送準備中
        complete: 4  #発送済み
    }
        
end

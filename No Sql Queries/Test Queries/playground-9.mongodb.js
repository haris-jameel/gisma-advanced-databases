use("monge")

// db.orders.find()


db.orders.aggregate{[
    {
        group: { 
             {_id:
                 { 
                    $dateToString
                    { 
                        format: "%Y-%M", date:"$order_date.date"
                    }
                }
            },
             perMonthSale: { $sum: "$total_price"},
        }
    },
        {
            $sort: {
               "dateToString": 1,
               }
       }
]};

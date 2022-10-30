order_data = [

  {customer_id: 12,
   customer_name: 'Emma Lopez',
   order_id: 351,
   order_date: '12/04/16',
   order_fulfilled: true,
   order_value: 135.99},

  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]

# total value of orders for each customer
# total value of fullfilled orders for each customer

customer_orders = {}

# incorrect
order_data.each do |row|
  # if our new hash contains the customer id
  if customer_orders.key?(row[:customer_id])
    ### ERROR HERE ORDER FULFILLED AND VALUE ARE SUPPOSED TO BE HASHES, NOT ARRAYS
    # true: enter hash with customer_id key, push new ARRAY with order fulfilled boolean and value into :orders
    customer_orders[row[:customer_id]][:orders] << [
      row[:order_fulfilled],
      row[:order_value]
    ]
  # if our new hash doesn't contain the customer id key
  else
    # set customer_id value as key, with hash with new structure as value
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        [
          row[:order_fulfilled],
          row[:order_value]
        ]
      ]
    }
  end
end

customer_orders = customer_orders.values

### NEW ### second selection
# incorrect
temp_orders = {}

order_data.each do |row|
  temp_orders[row[:customer_id]] = {
      customer_name: row[:customer_name],
      customer_id: row[:customer_id],
      orders: [
        {
          # we would only end up with one row for each customer, good,
          # but the values never get added together
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
end

customer_orders = temp_orders.values

### NEW ### third selection
# correct
customer_orders = {}

order_data.each do |row|
  # if our new hash has the customer id as a key
  if customer_orders.key?(row[:customer_id])
    # true: new_hash[customer_id][orders] push hash with order fulfilled and order value
    customer_orders[row[:customer_id]][:orders] << {
      order_fulfilled: row[:order_fulfilled],
      order_value: row[:order_value]
    }
  else
    # doesn't contain customer id key
    # use id as key and add new hash with new structure
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
  end
end

customer_orders = customer_orders.values

### NEW ### fourth selection

customer_orders = order_data.map do |row|
  {
    customer_id: row[:customer_id],
    customer_name: row[:customer_name],
    orders: [
      {
        order_fulfilled: row[:order_fulfilled],
        order_value: row[:order_value]
      }
    ]
  }
end

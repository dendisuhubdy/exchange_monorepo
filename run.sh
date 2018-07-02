# Point of start 

# spawn the database server 
./database-server/build/restdbserver

# spawn the clearing server (wallet fiat and crypto)
./clearning/build/clearning

# spawn quickfix server 
./quickfix/build/quickfix-server 

# spawn quickfast broadcasting server 
./quickfast/build/quickfast-server 

# spawn RabbitMQ server for queues from quickfix 
,/order_management_system/build/oms

# spawn matching-engine-server
./matching-engine-server/build/matching-engine-server

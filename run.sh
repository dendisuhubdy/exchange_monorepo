# Point of start 

# spawn the database server 
./database_server/build/database_server

# spawn the clearing server (wallet fiat and crypto)
clearing

# spawn RabbitMQ server for queues from quickfix 
,/order_management_system/build/oms

# spawn matching-engine-server
./matching-engine-server/build/matching-engine-server

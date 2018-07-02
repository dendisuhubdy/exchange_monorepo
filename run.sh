# Point of start 

# spawn the database server 
./database_server/build/database_server

# spawn the clearing server (wallet fiat and crypto)
# --all allows connectors to all wallets
clearing --all

# spawn order management system
,/order_management_system/build/oms

# spawn matching-engine-server
./matching-engine-server/build/matching-engine-server

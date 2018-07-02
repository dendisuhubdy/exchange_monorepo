# Build all repositories

# Build dependencies
./build_dependencies.sh

# Build clearning server 
python3 setup.py install --user

# Build database server 
./database_server/build_all.sh

# Build order management server 
./order_management_system/build_all.sh

# Build matching engine server 
./matching_engine_server/build_all.sh

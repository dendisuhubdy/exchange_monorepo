# Build all repositories

# Build clearning server 
mkdir -p clearing/build
cd clearning/build 
cmake ..
make -j16 
cd ../../

# Build database server 
mkdir -p database-server/build
cd database-server/build 
cmake ..
make -j16
cd ../../ 

# Build quickfix message server
mkdir -p quickfast/build
cd quickfast/build 
cmake ..
make -j16
cd ../../ 

# Build quickfast broadcast server 
mkdir -p quickfast/build
cd quickfast/build 
cmake ..
make -j16
cd ../../ 

# Build order management server 
mkdir -p order_management_system/build
cd order_management_system/build 
cmake ..
make -j16
cd ../../ 

# Build matching engine server 
mkdir -p matching-engine-server/build
cd matching-engine-server/build 
cmake ..
make -j16
cd ../../ 

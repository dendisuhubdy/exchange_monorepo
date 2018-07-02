# build mongo-c-driver
mkdir -p ./mongo-c-driver/cmake-build
cd ./mongo-c-driver/cmake-build
# for some reason the 1.11.0 has errored on the ICU specifically
# libmongoc by default tries to include and link against a system 
# installed libicu for a very specific use case 
# [described here|http://mongoc.org/libmongoc/current/authentication.html#basic-authentication-scram-sha-256]. 
# It's only necessary if you're authenticating with user passwords 
# that have non-ascii characters on the SCRAM-SHA-256 auth mechanism.
cmake -DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF -DENABLE_ICU=OFF ..
make -j16

# make mongo_cxx_driver 
mkdir -p ./mongo-cxx-driver/cmake-build
cd ./mongo-cxx-driver/cmake-build
cmake .. 
make -j16

# build mFast
mkdir -p ./mFast/build 
cd ./mFast/build 
cmake ..
make -j16
cd ..

# build quickfix
mkdir -p quickfix/build 
cd quickfix/build 
cmake ..
make -j16
cd ..

# build rabbitmq-server
cd rabbitmq-server
make

# build mongo-c-driver
mkdir -p ./build/mongo-c-driver/
cd ./build/mongo-c-driver/
# for some reason the 1.11.0 has errored on the ICU specifically
# libmongoc by default tries to include and link against a system 
# installed libicu for a very specific use case 
# [described here|http://mongoc.org/libmongoc/current/authentication.html#basic-authentication-scram-sha-256]. 
# It's only necessary if you're authenticating with user passwords 
# that have non-ascii characters on the SCRAM-SHA-256 auth mechanism.
cmake -DENABLE_AUTOMATIC_INIT_AND_CLEANUP=OFF -DENABLE_ICU=OFF ../../mongo-c-driver/
make -j16

# make mongo_cxx_driver 
mkdir -p ./build/mongo-cxx-driver/
cd ./build/mongo-cxx-driver/
cmake ../../mongo-cxx-driver 
make -j16

# build mFast
mkdir -p ./build/mFast/
cd ./build/mFast 
cmake ../../mFast
make -j16
cd ..

# build quickfix
mkdir -p ./build/quickfix/
cd ./build/quickfix
cmake ../../quickfix
make -j16
cd ..

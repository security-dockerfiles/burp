BurpSuite dockerized
--------------------

## Usage

Firstly, you should place your BurpSuite jar file to the root of the cloned repo and change `BURP_VERSION` in Dockerfile accordingly.

Then do:
```
sudo docker-compose up -d
```

By default Burp proxy will listen on the local interface only, preventing docker from exposing ports to host properly. So you should change it in Burp settings during first start to _all interfaces_. After that the local port `:8080` on your host should work as expected.

### Warning

You will definitely be messed up if you work as root on your host, and probably will lose your BurpSuite activation license, so use carefully.

BurpSuite dockerized
--------------------

## Usage

Firstly, you should place your BurpSuite jar file to the root of the cloned repo and change `BURP_VERSION` in Dockerfile accordingly.

The folders `share` and `.java` must be owned by a non-root user before you start container, otherwise you may lose your license activation, so use carefully.

If you already have an activated license, just copy it to `.java` or specify volume from your `$HOME/.java` to `/home/burp/.java` in `docker-compose.yml` and you will probably be fine (NOT TESTED!).

Run Burp:
```
sudo docker-compose up -d
```

By default Burp proxy will listen on the local interface only, preventing docker from exposing ports to host properly. So you should change it in Burp settings during first start to _all interfaces_. After that the local port `:8080` on your host should work as expected.

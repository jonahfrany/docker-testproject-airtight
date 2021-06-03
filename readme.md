 docker run --rm -it -v ${PWD}:/tmp testproject2 /tmp/Login-XsiQgluMakqSx-7ggyywMA.zip
 
docker run --add-host=pfs-proxy-psslai-pfs-dev.apps.ocp-dev.psslai.com:10.92.99.13 --add-host=sit2-proxy-psslai-pfs-dev.apps.ocp-dev.psslai.com:10.92.99.13 --add-host=pfs-proxy-psslai-pfs-dev.apps.ocp-dev.psslai.com:10.92.99.13 --rm -it -v ${PWD}:/tmp registry.sxi.com.ph/sxi-testproject2:2.3.4 /tmp/Login-XsiQgluMakqSx-7ggyywMA.zip

docker run -u root --add-host=pfs-proxy-psslai-pfs-dev.apps.ocp-dev.psslai.com:10.92.99.13 --rm -it -v ${PWD}:/tmp registry.sxi.com.ph/sxi-testproject2:2.3.4 bash

testproject-agent run /tmp/Login-XsiQgluMakqSx-7ggyywMA.zip -o /tmp/reports

docker run -u root --add-host=pfs-proxy-psslai-pfs-dev.apps.ocp-dev.psslai.com:10.92.99.13 --rm -it -v ${PWD}:/tmp registry.sxi.com.ph/sxi-testproject2:2.3.4 /tmp/Login-XsiQgluMakqSx-7ggyywMA.zip

 docker run --rm -it -v ${PWD}:/tmp registry.sxi.com.ph/sxi-testproject2:2.3.4 debug
 
docker run -u 989 --add-host=pfs-proxy-psslai-pfs-dev.apps.ocp-dev.psslai.com:10.92.99.13 --add-host=sit2-proxy-psslai-pfs-dev.apps.ocp-dev.psslai.com:10.92.99.13 --add-host=pfs-proxy-psslai-pfs-dev.apps.ocp-dev.psslai.com:10.92.99.13 --rm -it -v ${PWD}:/tmp registry.sxi.com.ph/sxi-testproject2:2.4 testjar/Membership_End-to-End_Test_-_Regular_Member-vi9emtcynUO_a2IjsiAkCQ.zip

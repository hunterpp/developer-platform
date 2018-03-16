KALTURA_SESSION=`curl -X POST https://www.kaltura.com/api_v3/service/session/action/start \
    -d "secret=YOUR_KALTURA_SECRET" \
    -d "userId=YOUR_USER_ID" \
    -d "type=0" \
    -d "partnerId=YOUR_PARTNER_ID" \
    -d "expiry=86400" \
    -d "format=3"`
KALTURA_SESSION=`echo $KALTURA_SESSION | sed -e "s/^.*\"\(.*\)\".*$/\1/"`
curl -X POST https://www.kaltura.com/api_v3/service/accesscontrolprofile/action/add \
    -d "ks=$KALTURA_SESSION" \
    -d "accessControlProfile[name]=foo" \
    -d "accessControlProfile[rules][0][code]=thiscode" \
    -d "accessControlProfile[rules][0][contexts][0][type]=1" \
    -d "accessControlProfile[rules][0][conditions][0][description]=cond%201" \
    -d "accessControlProfile[rules][0][conditions][1][description]=cond%202" \
    -d "accessControlProfile[rules][1][code]=second%20code" \
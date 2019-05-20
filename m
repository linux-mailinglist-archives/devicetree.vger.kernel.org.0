Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4384423037
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 11:23:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732039AbfETJXc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 05:23:32 -0400
Received: from mailgate1.rohmeurope.com ([178.15.145.194]:57678 "EHLO
        mailgate1.rohmeurope.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729598AbfETJXb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 05:23:31 -0400
X-AuditID: c0a8fbf4-519ff700000014c1-db-5ce2721175f3
Received: from smtp.reu.rohmeu.com (will-cas001.reu.rohmeu.com [192.168.251.177])
        by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id 0D.F3.05313.11272EC5; Mon, 20 May 2019 11:23:29 +0200 (CEST)
Received: from WILL-MAIL001.REu.RohmEu.com ([fe80::2915:304f:d22c:c6ba]) by
 WILL-CAS001.REu.RohmEu.com ([fe80::d57e:33d0:7a5d:f0a6%16]) with mapi id
 14.03.0439.000; Mon, 20 May 2019 11:23:18 +0200
From:   "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To:     "leonard.crestez@nxp.com" <leonard.crestez@nxp.com>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "lee.jones@linaro.org" <lee.jones@linaro.org>
CC:     "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
        "linux-imx@nxp.com" <linux-imx@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "angus@akkea.ca" <angus@akkea.ca>,
        "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "yibin.gong@nxp.com" <yibin.gong@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: Re: [PATCH 3/3] mfd: bd718x7: Make power button press duration
 configurable
Thread-Topic: [PATCH 3/3] mfd: bd718x7: Make power button press duration
 configurable
Thread-Index: AQHVDunSFj6MPiSb0EipgvofK8FLX6Zzm/sA
Date:   Mon, 20 May 2019 09:23:17 +0000
Message-ID: <0c254b96e72605deee4d19bcab96e160187ebb4a.camel@fi.rohmeurope.com>
References: <cover.1558341613.git.leonard.crestez@nxp.com>
         <3ffd7b9d0b9cc45ac0fd671a701f857be4cfde46.1558341613.git.leonard.crestez@nxp.com>
In-Reply-To: <3ffd7b9d0b9cc45ac0fd671a701f857be4cfde46.1558341613.git.leonard.crestez@nxp.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.255.186.46]
Content-Type: text/plain; charset="utf-8"
Content-ID: <70E01FF649E1384FA8BCE343059391EB@de.rohmeurope.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02TaUwTQRiGM91tWaBLhoJ0rGLCRiWYyOWRjRJD4p8alZhovFLFBVYWpVvc
        FhSNUrAelB+oWBM3URQxQSRBihJA8WjwJEqMpqiotVI8UAgqBhE8dlsU/sy8M+8+3/tN8i2B
        ae6qdEQOb2EFnsmlVCH4zZrRhrnhwltDYmVTND3kaMXoHk83oB1en4qubH+kpBsau3G61tGC
        057vtwFd8+qLknb2uJW0/ecFjD7f9VhBH2hrD6I/XNbSZZcegtQwvcNeA/R1p+uA3llbqtK/
        dF9T6Ruri/QNA80KffmvRP0354xVxMbQlAzGUrA6J5tPWLIllHvvtSnyaqld9S+KVVbQHGMH
        wQSC89Fox+8gOwghNNANUNfPwSDZ0MB7AD0a22AHBKGCKcj+3P9NJKwAyHexB8gHDF7A0TGb
        iMtABFyLrhwq8etIuA559p9QBHQy+vTjqlLWOJyFxKdufwAJ05DPVYUHwsoBOizOk3Uw3IyG
        mx6oZA1gNCq1DvjrYFCLnO+GlYGuIaq+1okF9BT0sef3+D2F2ka8uNw0BuNQfWtCAE1F1VVj
        IKBj0PEy73gL4ej+SR9+BESJkxLECVqcRIuTaHESfQYoawEyMjm52YyFTYoX2Px4wcQZpS3T
        ZHSCwBAMNYM/rmUuAAlAqUn19rcGjZIpMBcaXWAqoaCmkMMVXoMmLMOUVcgxZi5dyM9lzS6A
        CIyKJOfFegwaMosp3M0Kpn/WNAKntORo6y2DBsrJ21k2jxX+udMJgkKkcoeUEy6w2eyurTm5
        lglbQQTLxUN0kWaWz2IFJt/CpcvTkm6WxkW21FLumzwJJ815jFG6DaAPQBJxs8p7CiNe33ov
        rf3yqsF5E8/qtKRNBqAMcPn8/7g+oJVeHUGul7tRS3/H/2p9UpBCClqyxh9kYSYsnRW0Fuve
        HCoyHI217sBf9ZetMY4srZhZcm7oDpnalJb8NcwKEjf9mN3SEJE1vG7PohUz5rZ/bGwrWF04
        MJi+0/OtV1CnXV94rjeCW2Dpre8c1EY9UXN7Fu/z3Yj7vHLbyKzMZ7En+9yhbeKfveW2FDcs
        sR1csZzt7OB5Jrijxpp51kHhZo5JmoMJZuYvI0nkf9oDAAA=
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VGhhbmtzIGZvciBpbXBsZW1lbnRpbmcgdGhpcyBMZW9uYXJkLiBUaGlzIGlzIGhvdyBpdCBzaG91
bGQgaGF2ZSBiZWVuDQpkb25lIHJpZ2h0IGF3YXkuIEp1c3Qgb25lIGxpdHRsZSB0aGluZy4NCg0K
T24gTW9uLCAyMDE5LTA1LTIwIGF0IDA4OjU1ICswMDAwLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6
DQo+IEFsbG93IG92ZXJ3cml0aW5nIHRoZSB2YWx1ZXMgaW4gQkQ3MThYWF9SRUdfUFdST05DT05G
SUcwIGFuZA0KPiBCRDcxOFhYX1JFR19QV1JPTkNPTkZJRzEgdmlhIGRldmljZXRyZWUuDQo+IA0K
PiBLZWVwIGV4aXN0aW5nIHZhbHVlcyAoZnJvbSBib290bG9hZGVyIG9yIE9UUCkgaWYgcHJvcGVy
dHkgaXMgbm90DQo+IHByZXNlbnQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBMZW9uYXJkIENyZXN0
ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvbWZkL3JvaG0t
YmQ3MTh4Ny5jIHwgNDINCj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysN
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZmQvcm9obS1iZDcxOHg3LmMgYi9kcml2ZXJzL21mZC9yb2htLWJkNzE4eDcuYw0K
PiBpbmRleCBjZGJlZjgzODg0ZjAuLmRmZmEzZjRiZmZhZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9tZmQvcm9obS1iZDcxOHg3LmMNCj4gKysrIGIvZHJpdmVycy9tZmQvcm9obS1iZDcxOHg3LmMN
Cj4gQEAgLTc5LDEwICs3OSw0OCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ21hcF9jb25maWcN
Cj4gYmQ3MTh4eF9yZWdtYXBfY29uZmlnID0gew0KPiAgCS52b2xhdGlsZV90YWJsZSA9ICZ2b2xh
dGlsZV9yZWdzLA0KPiAgCS5tYXhfcmVnaXN0ZXIgPSBCRDcxOFhYX01BWF9SRUdJU1RFUiAtIDEs
DQo+ICAJLmNhY2hlX3R5cGUgPSBSRUdDQUNIRV9SQlRSRUUsDQo+ICB9Ow0KPiAgDQo+ICtzdGF0
aWMgaW50IGJkNzE4eHhfaW5pdF9wcmVzc19kdXJhdGlvbihzdHJ1Y3QgYmQ3MTh4eCAqYmQ3MTh4
eCkNCj4gK3sNCj4gKwlzdHJ1Y3QgZGV2aWNlKiBkZXYgPSBiZDcxOHh4LT5kZXY7DQo+ICsJdTMy
IHNob3J0X3ByZXNzX21zLCBsb25nX3ByZXNzX21zOw0KPiArCXUzMiBzaG9ydF9wcmVzc192YWx1
ZSwgbG9uZ19wcmVzc192YWx1ZTsNCj4gKwlpbnQgcmV0Ow0KPiArDQo+ICsJcmV0ID0gb2ZfcHJv
cGVydHlfcmVhZF91MzIoZGV2LT5vZl9ub2RlLCAicm9obSxzaG9ydC1wcmVzcy1tcyIsDQo+ICsJ
CQkJICAgJnNob3J0X3ByZXNzX21zKTsNCj4gKwlpZiAoIXJldCkgew0KPiArCQlzaG9ydF9wcmVz
c192YWx1ZSA9IG1pbigxNXUsIHNob3J0X3ByZXNzX21zIC8gNTAwKTsNCg0KVGhpcyBzaG91bGQg
cmF0aGVyIGJlIGltcGxlbWVudGVkIGFzIHJvdW5kaW5nIG5vdCBmbG9vcmluZy4gR2l2aW5nIGZv
cg0KZXhhbXBsZSAxNDAwbXMgZnJvbSBEVCBzaG91bGQgcmF0aGVyIHlpZWxkIHRpbWVvdXQgMTUw
MG1zIHRoYW4gMTAwMG1zLg0KSSdkIHNheSBpdCBtYWtlcyB0aGUgZGlmZmVyZW5jZSBhdCBsZWFz
dCBmb3IgbG9uZyBwcmVzcyB0bW8uDQoNCj4gKwkJcmV0ID0gcmVnbWFwX3VwZGF0ZV9iaXRzKGJk
NzE4eHgtPnJlZ21hcCwNCj4gKwkJCQkJIEJENzE4WFhfUkVHX1BXUk9OQ09ORklHMCwNCj4gKwkJ
CQkJIEJENzE4WFhfUFdSQlROX1BSRVNTX0RVUkFUSU9OXw0KPiBNQVNLLA0KPiArCQkJCQkgc2hv
cnRfcHJlc3NfdmFsdWUpOw0KPiArCQlpZiAocmV0KSB7DQo+ICsJCQlkZXZfZXJyKGRldiwgIkZh
aWxlZCB0byBpbml0IHB3cm9uIHNob3J0DQo+IHByZXNzXG4iKTsNCj4gKwkJCXJldHVybiByZXQ7
DQo+ICsJCX0NCj4gKwl9DQo+ICsNCj4gKwlyZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3UzMihkZXYt
Pm9mX25vZGUsICJyb2htLGxvbmctcHJlc3MtbXMiLA0KPiArCQkJCSAgICZsb25nX3ByZXNzX21z
KTsNCj4gKwlpZiAoIXJldCkgew0KPiArCQlsb25nX3ByZXNzX3ZhbHVlID0gbWluKDE1dSwgbG9u
Z19wcmVzc19tcyAvIDEwMDApOw0KDQpBbHNvIGhlcmUgd2Ugc2hvdWxkIGRvIHJvdW5kaW5nLiA5
MDBtcyBmcm9tIERUIHNob3VsZCByYXRoZXIgYmUgMXMgdGhhbg0KMTBtcy4gRXNwZWNpYWxseSB3
aGVuIHRoZSBsb25nIHByZXNzIGNhdXNlcyBmb3JjZWQgcG93ZXIgZG93biBhbmQgc2hvcnQNCnBy
ZXNzIG1heSBiZSAxMCBtcy4uLg0KDQo+ICsJCXJldCA9IHJlZ21hcF91cGRhdGVfYml0cyhiZDcx
OHh4LT5yZWdtYXAsDQo+ICsJCQkJCSBCRDcxOFhYX1JFR19QV1JPTkNPTkZJRzEsDQo+ICsJCQkJ
CSBCRDcxOFhYX1BXUkJUTl9QUkVTU19EVVJBVElPTl8NCj4gTUFTSywNCj4gKwkJCQkJIGxvbmdf
cHJlc3NfdmFsdWUpOw0KPiArCQlpZiAocmV0KSB7DQo+ICsJCQlkZXZfZXJyKGRldiwgIkZhaWxl
ZCB0byBpbml0IHB3cm9uIGxvbmcNCj4gcHJlc3NcbiIpOw0KPiArCQkJcmV0dXJuIHJldDsNCj4g
KwkJfQ0KPiArCX0NCj4gKw0KPiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgaW50
IGJkNzE4eHhfaTJjX3Byb2JlKHN0cnVjdCBpMmNfY2xpZW50ICppMmMsDQo+ICAJCQkgICAgY29u
c3Qgc3RydWN0IGkyY19kZXZpY2VfaWQgKmlkKQ0KPiAgew0KPiAgCXN0cnVjdCBiZDcxOHh4ICpi
ZDcxOHh4Ow0KPiAgCWludCByZXQ7DQo+IEBAIC0xMTUsMTAgKzE1MywxNCBAQCBzdGF0aWMgaW50
IGJkNzE4eHhfaTJjX3Byb2JlKHN0cnVjdCBpMmNfY2xpZW50DQo+ICppMmMsDQo+ICAJaWYgKHJl
dCkgew0KPiAgCQlkZXZfZXJyKCZpMmMtPmRldiwgIkZhaWxlZCB0byBhZGQgaXJxX2NoaXBcbiIp
Ow0KPiAgCQlyZXR1cm4gcmV0Ow0KPiAgCX0NCj4gIA0KPiArCXJldCA9IGJkNzE4eHhfaW5pdF9w
cmVzc19kdXJhdGlvbihiZDcxOHh4KTsNCj4gKwlpZiAocmV0KQ0KPiArCQlyZXR1cm4gcmV0Ow0K
PiArDQo+ICAJcmV0ID0gcmVnbWFwX2lycV9nZXRfdmlycShiZDcxOHh4LT5pcnFfZGF0YSwNCj4g
QkQ3MThYWF9JTlRfUFdSQlROX1MpOw0KPiAgDQo+ICAJaWYgKHJldCA8IDApIHsNCj4gIAkJZGV2
X2VycigmaTJjLT5kZXYsICJGYWlsZWQgdG8gZ2V0IHRoZSBJUlFcbiIpOw0KPiAgCQlyZXR1cm4g
cmV0Ow0KDQpPdGhlciB0aGFuIHRoYXQ6DQpSZXZpZXdlZC1CeTogTWF0dGkgVmFpdHRpbmVuIDxt
YXR0aS52YWl0dGluZW5AZmkucm9obWV1cm9wZS5jb20+DQoNCg0KQmVzdCBSZWdhcmRzDQoJTWF0
dGkgVmFpdHRpbmVuDQoNCg==

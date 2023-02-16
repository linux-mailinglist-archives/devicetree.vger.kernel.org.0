Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF1E4698DFC
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 08:44:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229657AbjBPHos (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 02:44:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbjBPHor (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 02:44:47 -0500
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10B773D92B
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 23:44:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1676533481; x=1679125481;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=qTYJkGFbI12BzFk6b3wkPkNLj2BIxad8QbyBxdQIB7o=;
        b=Iyy5yc6FUu2E/RzNBEyfkw/Z4bUr3hyNXYHpKUilYTMOpfIGnlLMjUZOnbzMO8xk
        rK51LG1E7d39iUlL5QH/mEyTt3TmliYKrK7IKzm+9clZBRs2sWcTpaYgm464moUr
        IPj77xqTMQEfkm5kftHGolU1GDrHFuVWqltytiNAFYc=;
X-AuditID: ac14000a-917fe70000007ecb-7c-63eddee913bc
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
        (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (Client did not present a certificate)
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 69.CB.32459.9EEDDE36; Thu, 16 Feb 2023 08:44:41 +0100 (CET)
Received: from Berlix.phytec.de (172.25.0.12) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Thu, 16 Feb
 2023 08:44:41 +0100
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::197e:d26b:2ca:c7b4%4]) with mapi id 15.01.2375.018;
 Thu, 16 Feb 2023 08:44:41 +0100
From:   Teresa Remmet <T.Remmet@phytec.de>
To:     "laurent.pinchart@ideasonboard.com" 
        <laurent.pinchart@ideasonboard.com>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux-imx@nxp.com" <linux-imx@nxp.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: freescale: imx8mm-phyboard: Add I2C4
 pinmuxing
Thread-Topic: [PATCH] arm64: dts: freescale: imx8mm-phyboard: Add I2C4
 pinmuxing
Thread-Index: AQHZNANcQU4bYDlsNkCp1jw5+OB7S662mOkAgBoYzYCAAIqOgA==
Date:   Thu, 16 Feb 2023 07:44:41 +0000
Message-ID: <f35250e9eb01f930f0d87d2762882d7556cdde2c.camel@phytec.de>
References: <20230129170136.14506-1-laurent.pinchart@ideasonboard.com>
         <c5019bcb019ff85722773fc5fb9f2a6d3ecfb771.camel@phytec.de>
         <Y+1qr7LWjwnyxuNd@pendragon.ideasonboard.com>
In-Reply-To: <Y+1qr7LWjwnyxuNd@pendragon.ideasonboard.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <4869F226EBB0EA4E89E6A74F8634C22B@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIIsWRmVeSWpSXmKPExsWyRpKBR/flvbfJBo3fNC3mHznHarFq6k4W
        i74XD5ktOicuYbfY9Pgaq0XXr5XMFq17j7BbvNgi7sDhMbtjJqvHplWdbB53ru1h89i8pN5j
        47sdTB79fw08Pm+SC2CP4rJJSc3JLEst0rdL4MqYf/4rU8EdqYo1P3azNzC2SHUxcnBICJhI
        TDpX0MXIxSEksJhJ4vzWk8wQzgNGiYkbrzF1MXICORsZJZ5fsgKx2QQ0JF6e6GYCaRYR8Jb4
        OccJpJ5ZYDKzROu09+wgNcICgRLX3jSygtgiAkEShxZ/ZIKwnST23d7FCGKzCKhK7PjXywZi
        8wq4SVzt/MkKsXgro8T0h5PAGjgFrCRWTFvKDGIzCshKbNhwHsxmFhCX2PTsO9gCCQEBiSV7
        IOISAqISLx//g4rLS5y4NQ3sUGYBTYn1u/QhWi0klu25yAJhK0pM6X7IDnGDoMTJmU9YJjCK
        z0KyYRZC9ywk3bOQdM9C0r2AkXUVo1BuZnJ2alFmtl5BRmVJarJeSuomRlA0izBw7WDsm+Nx
        iJGJg/EQowQHs5II76abb5KFeFMSK6tSi/Lji0pzUosPMUpzsCiJ897vYUoUEkhPLEnNTk0t
        SC2CyTJxcEo1MGa2i19JnnHt1W/hrMhnVxza3QSFg7ZsbfA2a22czxR4kPFr2JL2i8zn21ni
        /4pMTnj51uH3x0WzLRxvHZU88udfxj63or12EYKqqSHmk77YP8rKV1k043z5JuElMWlMqz5+
        05ZR4JtT8boufD5fVcL25XME72z8O+GQ6tp0hletTMbctRuWaCmxFGckGmoxFxUnAgBM5g+9
        1AIAAA==
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGVsbG8gTGF1cmVudCwNCg0KQW0gRG9ubmVyc3RhZywgZGVtIDE2LjAyLjIwMjMgdW0gMDE6Mjgg
KzAyMDAgc2NocmllYiBMYXVyZW50IFBpbmNoYXJ0Og0KPiBIaSBUZXJlc2EsDQo+IA0KPiBPbiBN
b24sIEphbiAzMCwgMjAyMyBhdCAwODo1NzoxNkFNICswMDAwLCBUZXJlc2EgUmVtbWV0IHdyb3Rl
Og0KPiA+IEhlbGxvIExhdXJlbnQsDQo+ID4gDQo+ID4gdGhhbmsgeW91IGZvciB5b3VyIHBhdGNo
Lg0KPiA+IA0KPiA+IEFtIFNvbm50YWcsIGRlbSAyOS4wMS4yMDIzIHVtIDE5OjAxICswMjAwIHNj
aHJpZWIgTGF1cmVudCBQaW5jaGFydDoNCj4gPiA+IFRoZSBJMkM0IGJ1cyBpcyBleHBvc2VkIG9u
IHRoZSBjYW1lcmEgY29ubmVjdG9yLiBBZGQgYW5kIHNlbGVjdA0KPiA+ID4gdGhlDQo+ID4gPiBj
b3JyZXNwb25kaW5nIHBpbm11eCBlbnRyaWVzIGFuZCBzZXQgdGhlIGRlZmF1bHQgZnJlcXVlbmN5
LiBUaGUNCj4gPiA+IGRldmljZQ0KPiA+ID4gaXMgbGVmdCBkaXNhYmxlZCwgdG8gYmUgZW5hYmxl
ZCBmcm9tIGNhbWVyYSBvdmVybGF5cy4NCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogTGF1
cmVudCBQaW5jaGFydCA8DQo+ID4gPiBsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+
DQo+ID4gPiAtLS0NCj4gPiA+ICAuLi4vZHRzL2ZyZWVzY2FsZS9pbXg4bW0tcGh5Ym9hcmQtcG9s
aXMtcmRrLmR0cyAgICAgfCAxMw0KPiA+ID4gKysrKysrKysrKysrKw0KPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0tcGh5Ym9hcmQtcG9saXMtDQo+ID4gPiBy
ZGsuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1tLXBoeWJvYXJkLXBv
bGlzLQ0KPiA+ID4gcmRrLmR0cw0KPiA+ID4gaW5kZXggNGEzZGYyYjc3YjBiLi4xNzUyMWJiOTEx
YzIgMTAwNjQ0DQo+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bW0tcGh5Ym9hcmQtcG9saXMtcmRrLmR0cw0KPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvaW14OG1tLXBoeWJvYXJkLXBvbGlzLXJkay5kdHMNCj4gPiA+IEBAIC0xNjgs
NiArMTY4LDEyIEBAICZncGlvNSB7DQo+ID4gPiAgCQkiIiwgIkVDU1BJMV9TUzAiOw0KPiA+ID4g
IH07DQo+ID4gPiAgDQo+ID4gPiArJmkyYzQgew0KPiA+ID4gKwljbG9jay1mcmVxdWVuY3kgPSA8
NDAwMDAwPjsNCj4gPiA+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsNCj4gPiA+ICsJcGlu
Y3RybC0wID0gPCZwaW5jdHJsX2kyYzQ+Ow0KPiA+ID4gK307DQo+ID4gPiArDQo+ID4gPiAgLyog
UENJZSAqLw0KPiA+ID4gICZwY2llMCB7DQo+ID4gPiAgCWFzc2lnbmVkLWNsb2NrcyA9IDwmY2xr
IElNWDhNTV9DTEtfUENJRTFfQVVYPiwNCj4gPiA+IEBAIC0zMzYsNiArMzQyLDEzIEBAIE1YOE1N
X0lPTVVYQ19TQUkxX1JYRDZfR1BJTzRfSU84CTB4MTYNCj4gPiA+ICAJCT47DQo+ID4gPiAgCX07
DQo+ID4gPiAgDQo+ID4gPiArCXBpbmN0cmxfaTJjNDogaTJjNGdycCB7DQo+ID4gPiArCQlmc2ws
cGlucyA9IDwNCj4gPiA+ICsJCQlNWDhNTV9JT01VWENfSTJDNF9TQ0xfSTJDNF9TQ0wJCTANCj4g
PiA+IHg0MDAwMDFjMw0KPiA+IA0KPiA+IEJpdCAwIG9mIHRoZSBJT01VWENfU1dfUEFEX0NUTF9Q
QUQgcmVnaXN0ZXJzIGlzIHJlc2VydmVkLiBDYW4geW91DQo+ID4gY2hhbmdlIHRoaXMgaW4gbm90
IHNldHRpbmcgdGhlIGJpdD8NCj4gPiANCj4gPiA+ICsJCQlNWDhNTV9JT01VWENfSTJDNF9TREFf
STJDNF9TREEJCTANCj4gPiA+IHg0MDAwMDFjMw0KPiA+IA0KPiA+IFNhbWUgaGVyZS4NCj4gDQo+
IEdvb2QgcG9pbnQuIEkgc2VlIHlvdSd2ZSBmaXhlZCBpdCByZWNlbnRseSBpbiB5b3VyIEJTUCA7
LSkgSSdsbCBmaXgNCj4gdGhpcw0KPiBwYXRjaCBhbmQgcmVzdWJtaXQuIA0KDQpIYSwgeW91IGNh
dGNoZWQgbWUgOikuIFllcywgeW91ciBwYXRjaCB3YXMgdGhlIHJlYXNvbiBJIGZpeGVkIGl0IHRo
ZXJlLg0KDQpUaGFua3MgZm9yIHRoZSB2Mi4NCg0KVGVyZXNhDQoNCj4gDQo+ID4gPiArCQk+Ow0K
PiA+ID4gKwl9Ow0KPiA+ID4gKw0KPiA+ID4gIAlwaW5jdHJsX2xlZHM6IGxlZHMxZ3JwIHsNCj4g
PiA+ICAJCWZzbCxwaW5zID0gPA0KPiA+ID4gIAkJCU1YOE1NX0lPTVVYQ19HUElPMV9JTzAxX0dQ
SU8xX0lPMQkweDE2DQotLSANClBIWVRFQyBNZXNzdGVjaG5payBHbWJIIHwgQmFyY2Vsb25hLUFs
bGVlIDEgfCA1NTEyOSBNYWlueiwgR2VybWFueQ0KDQpHZXNjaMOkZnRzZsO8aHJlcjogRGlwbC4t
SW5nLiBNaWNoYWVsIE1pdGV6a2ksIERpcGwuLUluZy4gQm9kbyBIdWJlciwNCkRpcGwuLUluZy4g
KEZIKSBNYXJrdXMgTGlja2VzIHwgSGFuZGVsc3JlZ2lzdGVyIE1haW56IEhSQiA0NjU2IHwNCkZp
bmFuemFtdCBNYWlueiB8IFN0Lk5yLiAyNjY1MDA2MDgsIERFIDE0OTA1OTg1NQ0K

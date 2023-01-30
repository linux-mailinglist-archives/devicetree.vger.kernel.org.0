Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08CD9680800
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 09:57:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231161AbjA3I5W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 03:57:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233298AbjA3I5V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 03:57:21 -0500
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C331D166E7
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 00:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1675069037; x=1677661037;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=FN2Ub0qXJbdTuQQBXAtEw2W4QQznou4xw4muLvkt6A4=;
        b=bSdMKVqLMGurlICrVrNLVRj/wUaJ6zBX8sDN/lSJ1uo+RYNcZqLe2xnMH37NwkFP
        TiHVKV7eNuiL1Jnz06ikPs9J2a/TzAElCYYKj11smOhUeQ4PffL/9NBQEQ/96bIj
        4D+EE7Kvk4q7JgKuF995OmpJECBSBuUpXb73UOwMkE8=;
X-AuditID: ac14000a-917fe70000007ecb-9b-63d7866d5273
Received: from florix.phytec.de (Unknown_Domain [172.25.0.13])
        (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (Client did not present a certificate)
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id F1.CA.32459.D6687D36; Mon, 30 Jan 2023 09:57:17 +0100 (CET)
Received: from Berlix.phytec.de (172.25.0.12) by Florix.phytec.de
 (172.25.0.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Mon, 30 Jan
 2023 09:57:16 +0100
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::197e:d26b:2ca:c7b4%4]) with mapi id 15.01.2375.018;
 Mon, 30 Jan 2023 09:57:16 +0100
From:   Teresa Remmet <T.Remmet@phytec.de>
To:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "laurent.pinchart@ideasonboard.com" 
        <laurent.pinchart@ideasonboard.com>
CC:     "kernel@pengutronix.de" <kernel@pengutronix.de>,
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
Thread-Index: AQHZNANcQU4bYDlsNkCp1jw5+OB7S662mOkA
Date:   Mon, 30 Jan 2023 08:57:16 +0000
Message-ID: <c5019bcb019ff85722773fc5fb9f2a6d3ecfb771.camel@phytec.de>
References: <20230129170136.14506-1-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20230129170136.14506-1-laurent.pinchart@ideasonboard.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <845C5F6713C06E4B9480CC40DB3A247D@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEIsWRmVeSWpSXmKPExsWyRpKBVze37XqywYtVYhbzj5xjtVg1dSeL
        Rd+Lh8wWnROXsFtsenyN1aLr10pmi9a9R9gtXmwRd+DwmN0xk9Vj06pONo871/aweWxeUu+x
        8d0OJo/+vwYenzfJBbBHcdmkpOZklqUW6dslcGVsv7CHteCRcMW3zwYNjAuEuxg5OSQETCQu
        dXxi72Lk4hASWMwk0bRlDyuE84BRYuKqJcwQzkZGidk7DjKCtLAJaEi8PNHNBJIQEZjHKLH2
        6xWwKmaBA0wSEw8eYQepEhYIlLj2ppEVxBYRCJI4tPgjE4RtJDGrcxqYzSKgKrGzZwMziM0r
        4Cbx6ck2oDgH0Do3if9ttiBhTgF3iYeffrOB2IwCshIbNpwHK2cWEJfY9Ow7K8QPAhJL9kDE
        JQREJV4+/gcVl5c4cWsa2EhmAU2J9bv0IVotJKZP2QE1RlFiSvdDdogLBCVOznzCMoFRfBaS
        DbMQumch6Z6FpHsWku4FjKyrGIVyM5OzU4sys/UKMipLUpP1UlI3MYLiWYSBawdj3xyPQ4xM
        HIyHGCU4mJVEeOPNriUL8aYkVlalFuXHF5XmpBYfYpTmYFES573fw5QoJJCeWJKanZpakFoE
        k2Xi4JRqAKr5feGDoeb5HaEhu04W22+r8LUIOTtl17s5pwyEv6m8f+QrkaIkcHxedo2HdXdc
        362u5wY2W+est+0unVX04q6+tu0ajpB4vu3MDrM2KfyYdyn2jO/WTH3N7JwvOgpS1X+ne6tu
        XnU+kE26j3t2h15SdtA9+V/NdlEtiTcLuaQ8mrLyzvsrsRRnJBpqMRcVJwIAK4v6qdUCAAA=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGVsbG8gTGF1cmVudCwNCg0KdGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLg0KDQpBbSBTb25udGFn
LCBkZW0gMjkuMDEuMjAyMyB1bSAxOTowMSArMDIwMCBzY2hyaWViIExhdXJlbnQgUGluY2hhcnQ6
DQo+IFRoZSBJMkM0IGJ1cyBpcyBleHBvc2VkIG9uIHRoZSBjYW1lcmEgY29ubmVjdG9yLiBBZGQg
YW5kIHNlbGVjdCB0aGUNCj4gY29ycmVzcG9uZGluZyBwaW5tdXggZW50cmllcyBhbmQgc2V0IHRo
ZSBkZWZhdWx0IGZyZXF1ZW5jeS4gVGhlDQo+IGRldmljZQ0KPiBpcyBsZWZ0IGRpc2FibGVkLCB0
byBiZSBlbmFibGVkIGZyb20gY2FtZXJhIG92ZXJsYXlzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
TGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPg0KPiAt
LS0NCj4gIC4uLi9kdHMvZnJlZXNjYWxlL2lteDhtbS1waHlib2FyZC1wb2xpcy1yZGsuZHRzICAg
ICB8IDEzDQo+ICsrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25z
KCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14
OG1tLXBoeWJvYXJkLXBvbGlzLQ0KPiByZGsuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvaW14OG1tLXBoeWJvYXJkLXBvbGlzLXJkay5kdHMNCj4gaW5kZXggNGEzZGYyYjc3YjBi
Li4xNzUyMWJiOTExYzIgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNj
YWxlL2lteDhtbS1waHlib2FyZC1wb2xpcy1yZGsuZHRzDQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2lteDhtbS1waHlib2FyZC1wb2xpcy1yZGsuZHRzDQo+IEBAIC0xNjgs
NiArMTY4LDEyIEBAICZncGlvNSB7DQo+ICAJCSIiLCAiRUNTUEkxX1NTMCI7DQo+ICB9Ow0KPiAg
DQo+ICsmaTJjNCB7DQo+ICsJY2xvY2stZnJlcXVlbmN5ID0gPDQwMDAwMD47DQo+ICsJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsNCj4gKwlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfaTJjND47DQo+
ICt9Ow0KPiArDQo+ICAvKiBQQ0llICovDQo+ICAmcGNpZTAgew0KPiAgCWFzc2lnbmVkLWNsb2Nr
cyA9IDwmY2xrIElNWDhNTV9DTEtfUENJRTFfQVVYPiwNCj4gQEAgLTMzNiw2ICszNDIsMTMgQEAg
TVg4TU1fSU9NVVhDX1NBSTFfUlhENl9HUElPNF9JTzgJMHgxNg0KPiAgCQk+Ow0KPiAgCX07DQo+
ICANCj4gKwlwaW5jdHJsX2kyYzQ6IGkyYzRncnAgew0KPiArCQlmc2wscGlucyA9IDwNCj4gKwkJ
CU1YOE1NX0lPTVVYQ19JMkM0X1NDTF9JMkM0X1NDTAkJMHg0MDANCj4gMDAxYzMNCg0KQml0IDAg
b2YgdGhlIElPTVVYQ19TV19QQURfQ1RMX1BBRCByZWdpc3RlcnMgaXMgcmVzZXJ2ZWQuIENhbiB5
b3UNCmNoYW5nZSB0aGlzIGluIG5vdCBzZXR0aW5nIHRoZSBiaXQ/DQoNCj4gKwkJCU1YOE1NX0lP
TVVYQ19JMkM0X1NEQV9JMkM0X1NEQQkJMHg0MDANCj4gMDAxYzMNCg0KU2FtZSBoZXJlLg0KDQpU
aGFua3MsDQpUZXJlc2ENCg0KPiArCQk+Ow0KPiArCX07DQo+ICsNCj4gIAlwaW5jdHJsX2xlZHM6
IGxlZHMxZ3JwIHsNCj4gIAkJZnNsLHBpbnMgPSA8DQo+ICAJCQlNWDhNTV9JT01VWENfR1BJTzFf
SU8wMV9HUElPMV9JTzEJMHgxNg0KLS0gDQpQSFlURUMgTWVzc3RlY2huaWsgR21iSCB8IEJhcmNl
bG9uYS1BbGxlZSAxIHwgNTUxMjkgTWFpbnosIEdlcm1hbnkNCg0KR2VzY2jDpGZ0c2bDvGhyZXI6
IERpcGwuLUluZy4gTWljaGFlbCBNaXRlemtpLCBEaXBsLi1JbmcuIEJvZG8gSHViZXIgfA0KSGFu
ZGVsc3JlZ2lzdGVyIE1haW56IEhSQiA0NjU2IHwgRmluYW56YW10IE1haW56IHwgU3QuTnIuIDI2
NjUwMDYwOCwgREUNCjE0OTA1OTg1NQ0K

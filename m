Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEFC5698DFE
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 08:46:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbjBPHqR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 02:46:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbjBPHqR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 02:46:17 -0500
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28B4B3B0C8
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 23:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1676533574; x=1679125574;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=cX/aI9rmASBmm/xGYWZoGPWM25fF6gt6bv31Rd4ZuaY=;
        b=BW/No2o081+/ivev0xrQi77a6Jmz8Eiq4jggTmGNCV4ziqMxlw68mnY/O7qtcI8e
        wP7hwhphOi+qr4HlC6nvy8s/Y4cPqmoHeYiqe3H8dAdM4wtZl7DXJtMPjMGadv40
        BY64UI54JpyXdxJNJrl/skgUiQLgTwGdwYoE7fqzfWw=;
X-AuditID: ac14000a-917fe70000007ecb-a7-63eddf4649dd
Received: from florix.phytec.de (Unknown_Domain [172.25.0.13])
        (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (Client did not present a certificate)
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 5F.CB.32459.64FDDE36; Thu, 16 Feb 2023 08:46:14 +0100 (CET)
Received: from Berlix.phytec.de (172.25.0.12) by Florix.phytec.de
 (172.25.0.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Thu, 16 Feb
 2023 08:46:14 +0100
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::197e:d26b:2ca:c7b4%4]) with mapi id 15.01.2375.018;
 Thu, 16 Feb 2023 08:46:14 +0100
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
Subject: Re: [PATCH v2] arm64: dts: freescale: imx8mm-phyboard: Add I2C4
 pinmuxing
Thread-Topic: [PATCH v2] arm64: dts: freescale: imx8mm-phyboard: Add I2C4
 pinmuxing
Thread-Index: AQHZQZXEvziKhXxVJU2M8lz78nRRYK7RIYyA
Date:   Thu, 16 Feb 2023 07:46:14 +0000
Message-ID: <2b0a6bed97c54b3282ce5c2c9f284b231f19d988.camel@phytec.de>
References: <20230215233226.25856-1-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20230215233226.25856-1-laurent.pinchart@ideasonboard.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B10E2BE58B8FC947B0922674216935B9@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMIsWRmVeSWpSXmKPExsWyRpKBV9ft/ttkg9czFS3mHznHarFq6k4W
        i74XD5ktOicuYbfY9Pgaq0XXr5XMFq17j7BbvNgi7sDhMbtjJqvHplWdbB53ru1h89i8pN5j
        47sdTB79fw08Pm+SC2CP4rJJSc3JLEst0rdL4Mo4MnM2S8EW4YrfN9YwNTB+Eepi5OSQEDCR
        OP7gNGMXIxeHkMBiJomVX7axQjgPGCX617ZBZTYySrx+cZINpIVNQEPi5YluJpCEiMA8Rom1
        X68wgzjMAgeYJCYePMIOUiUsECLR9qGfCcQWEQiV2PfrOwuEbSSxdtF7oEkcHCwCqhJvv/GD
        hHkF3CT6Xz0CaxUCslu2PwCzOQXcJeYu3Qc2hlFAVmLDhvPMIDazgLjEpmffWSF+EJBYsgci
        LiEgKvHy8T+ouLzEiVvTmEBWMQtoSqzfpQ/RaiFx/uBqNghbUWJK90N2iBMEJU7OfMIygVF8
        FpINsxC6ZyHpnoWkexaS7gWMrKsYhXIzk7NTizKz9QoyKktSk/VSUjcxgiJahIFrB2PfHI9D
        jEwcjIcYJTiYlUR4N918kyzEm5JYWZValB9fVJqTWnyIUZqDRUmc934PU6KQQHpiSWp2ampB
        ahFMlomDU6qB0Uy0dNXN9HXZH2+6+LUZWnAk/Oa2ZLrm8jXVLeE/z9yT9mszkoWDWpK9qy5X
        y873M1RWsHf1r35qZpdavCrk1u1brsxpv9eqWf6PexwYzitoaOxjEsn+Kn6J8uPet8vSN7G5
        tZ37E7Yg7eDsoi2tPzkXvNvcqcHmfvfq2dLlk2Ns8vrYJvIosRRnJBpqMRcVJwIAMQkfM9YC
        AAA=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QW0gRG9ubmVyc3RhZywgZGVtIDE2LjAyLjIwMjMgdW0gMDE6MzIgKzAyMDAgc2NocmllYiBMYXVy
ZW50IFBpbmNoYXJ0Og0KPiBUaGUgSTJDNCBidXMgaXMgZXhwb3NlZCBvbiB0aGUgY2FtZXJhIGNv
bm5lY3Rvci4gQWRkIGFuZCBzZWxlY3QgdGhlDQo+IGNvcnJlc3BvbmRpbmcgcGlubXV4IGVudHJp
ZXMgYW5kIHNldCB0aGUgZGVmYXVsdCBmcmVxdWVuY3kuIFRoZQ0KPiBkZXZpY2UNCj4gaXMgbGVm
dCBkaXNhYmxlZCwgdG8gYmUgZW5hYmxlZCBmcm9tIGNhbWVyYSBvdmVybGF5cy4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJv
YXJkLmNvbT4NCg0KQWNrZWQtYnk6IFRlcmVzYSBSZW1tZXQgPHQucmVtbWV0QHBoeXRlYy5kZT4N
Cg0KPiAtLS0NCj4gQ2hhbmdlcyBzaW5jZSB2MToNCj4gDQo+IC0gRG9uJ3Qgc2V0IGJpdCAwIGFz
IGl0IGlzIHJlc2VydmVkDQo+IC0tLQ0KPiAgLi4uL2R0cy9mcmVlc2NhbGUvaW14OG1tLXBoeWJv
YXJkLXBvbGlzLXJkay5kdHMgICAgIHwgMTMNCj4gKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNo
YW5nZWQsIDEzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0tcGh5Ym9hcmQtcG9saXMtDQo+IHJkay5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0tcGh5Ym9hcmQtcG9saXMtcmRrLmR0cw0K
PiBpbmRleCA0YTNkZjJiNzdiMGIuLjBiMzg0YWQxZWE4MiAxMDA2NDQNCj4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1tLXBoeWJvYXJkLXBvbGlzLXJkay5kdHMNCj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1tLXBoeWJvYXJkLXBvbGlz
LXJkay5kdHMNCj4gQEAgLTE2OCw2ICsxNjgsMTIgQEAgJmdwaW81IHsNCj4gIAkJIiIsICJFQ1NQ
STFfU1MwIjsNCj4gIH07DQo+ICANCj4gKyZpMmM0IHsNCj4gKwljbG9jay1mcmVxdWVuY3kgPSA8
NDAwMDAwPjsNCj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOw0KPiArCXBpbmN0cmwtMCA9
IDwmcGluY3RybF9pMmM0PjsNCj4gK307DQo+ICsNCj4gIC8qIFBDSWUgKi8NCj4gICZwY2llMCB7
DQo+ICAJYXNzaWduZWQtY2xvY2tzID0gPCZjbGsgSU1YOE1NX0NMS19QQ0lFMV9BVVg+LA0KPiBA
QCAtMzM2LDYgKzM0MiwxMyBAQCBNWDhNTV9JT01VWENfU0FJMV9SWEQ2X0dQSU80X0lPOAkweDE2
DQo+ICAJCT47DQo+ICAJfTsNCj4gIA0KPiArCXBpbmN0cmxfaTJjNDogaTJjNGdycCB7DQo+ICsJ
CWZzbCxwaW5zID0gPA0KPiArCQkJTVg4TU1fSU9NVVhDX0kyQzRfU0NMX0kyQzRfU0NMCQkweDQw
MA0KPiAwMDFjMg0KPiArCQkJTVg4TU1fSU9NVVhDX0kyQzRfU0RBX0kyQzRfU0RBCQkweDQwMA0K
PiAwMDFjMg0KPiArCQk+Ow0KPiArCX07DQo+ICsNCj4gIAlwaW5jdHJsX2xlZHM6IGxlZHMxZ3Jw
IHsNCj4gIAkJZnNsLHBpbnMgPSA8DQo+ICAJCQlNWDhNTV9JT01VWENfR1BJTzFfSU8wMV9HUElP
MV9JTzEJMHgxNg0KLS0gDQpQSFlURUMgTWVzc3RlY2huaWsgR21iSCB8IEJhcmNlbG9uYS1BbGxl
ZSAxIHwgNTUxMjkgTWFpbnosIEdlcm1hbnkNCg0KR2VzY2jDpGZ0c2bDvGhyZXI6IERpcGwuLUlu
Zy4gTWljaGFlbCBNaXRlemtpLCBEaXBsLi1JbmcuIEJvZG8gSHViZXIsDQpEaXBsLi1JbmcuIChG
SCkgTWFya3VzIExpY2tlcyB8IEhhbmRlbHNyZWdpc3RlciBNYWlueiBIUkIgNDY1NiB8DQpGaW5h
bnphbXQgTWFpbnogfCBTdC5Oci4gMjY2NTAwNjA4LCBERSAxNDkwNTk4NTUNCg==

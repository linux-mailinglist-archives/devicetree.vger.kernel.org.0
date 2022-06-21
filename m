Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE1E2552B7B
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 09:10:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345235AbiFUHKK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 03:10:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236786AbiFUHKI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 03:10:08 -0400
Received: from mickerik.phytec.de (mickerik.phytec.de [195.145.39.210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DA61205E1
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 00:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1655795404; x=1658387404;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=7zKyzh74iHuXwQmRVJvwT+JbaT81fWWa80LHZMQ6T0k=;
        b=lv+nVyrzVb9ouO9SLG0z2nu8ly8O3SfdGyoHeOFWykrywbZMkjAluvpv9DRBpH5T
        KTuTXzAZVngIic87qYhrHdXbTufT6KfACBx8a4dgVMls3WLdAXrBzXWbK1dvX7x0
        lLqSKoc2IwycQARskZYx3eaQ2T3xBAttEncZgIeYcT4=;
X-AuditID: c39127d2-b3a2d70000001dbe-7e-62b16ecc7ef5
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
        (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (Client did not present a certificate)
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 4B.57.07614.CCE61B26; Tue, 21 Jun 2022 09:10:04 +0200 (CEST)
Received: from Berlix.phytec.de (172.25.0.12) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Tue, 21 Jun
 2022 09:10:04 +0200
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::61cc:ebf0:7375:8768%3]) with mapi id 15.01.2375.018;
 Tue, 21 Jun 2022 09:10:04 +0200
From:   Teresa Remmet <T.Remmet@phytec.de>
To:     "shawnguo@kernel.org" <shawnguo@kernel.org>
CC:     "linux-imx@nxp.com" <linux-imx@nxp.com>,
        "upstream@phytec.de" <upstream@phytec.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: freescale: Add phyBOARD-Polis-i.MX8MM
 support
Thread-Topic: [PATCH v2 3/3] arm64: dts: freescale: Add phyBOARD-Polis-i.MX8MM
 support
Thread-Index: AQHYg5p6yq/2IDHLC0mudAh1QCVkjq1ZUx6A
Date:   Tue, 21 Jun 2022 07:10:04 +0000
Message-ID: <f172ec7a836d81d1f0c78e0bd2f144454ecd58f6.camel@phytec.de>
References: <20220602132127.95333-1-t.remmet@phytec.de>
         <20220602132127.95333-3-t.remmet@phytec.de>
         <20220619050719.GA254723@dragon>
In-Reply-To: <20220619050719.GA254723@dragon>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <70868EA6F61ADF4ABE5E3D68F0F70054@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIIsWRmVeSWpSXmKPExsWyRpKBR/dM3sYkg8dHJS3mHznHavHwqr9F
        34uHzBabHl9jtej6tZLZonXvEXaLv9s3sVi82CLuwOGxc9Zddo9NqzrZPO5c28PmsXlJvcfG
        dzuYPPr/Gnh83iQXwB7FZZOSmpNZllqkb5fAlfFl4k+WgjeiFbNezGdtYFwi2sXIySEhYCKx
        f/I8xi5GLg4hgSVMEkcObWGBcB4wSizo+MwCUiUksIlR4tucIhCbTUBD4uWJbiYQW0RAX+L9
        lr9gDcwCB5glFkyZxA6SEBYIl3i5fzeQzQFUFCHRdoYXot5IYv3l32AzWQRUJSa3/GYDsXkF
        3CQe3u5kh1jcxSjR/fEs2BxOAV2Jmb+PgNmMArISGzacZwaxmQXEJTY9+84K8YKAxJI9EHEJ
        AVGJl4//QcXlJU7cmsYEcgOzgKbE+l36EK0WEkc7WtggbEWJKd0P2SFuEJQ4OfMJywRG8VlI
        NsxC6J6FpHsWku5ZSLoXMLKuYhTKzUzOTi3KzNYryKgsSU3WS0ndxAiM5sMT1S/tYOyb43GI
        kYmD8RCjBAezkgivDfeGJCHelMTKqtSi/Pii0pzU4kOM0hwsSuK893uYEoUE0hNLUrNTUwtS
        i2CyTBycUg2M7nx8U7jsuTjk323d01P/ITboVY9J9NuKuuDll7/ZMJaFBno+WRPRx2gi/lfM
        ar/JN/m93xTFT/Gdjv50Ru3/FclTZqtnGbE/c438vmHzym2bX5ofjxD0C9B39lIp2uf64cCP
        hh8bNzYkRBs68U7auKzlRHat1rveKUeWynLG9c1KeyLrfXWXEktxRqKhFnNRcSIA+ZFOcNQC
        AAA=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGVsbG8gU2hhd24sIA0KDQpBbSBTb25udGFnLCBkZW0gMTkuMDYuMjAyMiB1bSAxMzowNyArMDgw
MCBzY2hyaWViIFNoYXduIEd1bzoNCj4gDQoNClsuLi5dDQoNCj4gPiArDQo+ID4gKwlyZWdfY2Fu
X2VuOiByZWd1bGF0b3ItY2FuLWVuIHsNCj4gPiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1m
aXhlZCI7DQo+ID4gKwkJZ3BpbyA9IDwmZ3BpbzEgOSBHUElPX0FDVElWRV9MT1c+Ow0KPiA+ICsJ
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7DQo+ID4gKwkJcGluY3RybC0wID0gPCZwaW5jdHJs
X2Nhbl9lbj47DQo+ID4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47DQo+
ID4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47DQo+ID4gKwkJcmVndWxh
dG9yLW5hbWUgPSAiQ0FOX0VOIjsNCj4gPiArCQlzdGFydHVwLWRlbGF5LXVzID0gPDIwPjsNCj4g
PiArCX07DQo+ID4gKw0KPiA+ICsJcmVnX3VzYl9vdGcxX3ZidXM6IHJlZ3VsYXRvci11c2Itb3Rn
MSB7DQo+ID4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOw0KPiA+ICsJCWVuYWJs
ZS1hY3RpdmUtaGlnaDsNCj4gDQo+IENhbiB3ZSBwdXQgJ2VuYWJsZS1hY3RpdmUtaGlnaCcgYWZ0
ZXIgJ2dwaW8nIGxpbmU/DQoNClN1cmUuDQoNClsuLi5dDQoNCj4gPiANCj4gPiArDQo+ID4gKy8q
IEkyQzEgKi8NCj4gPiArJmkyYzEgew0KPiA+ICsJY2xvY2stZnJlcXVlbmN5ID0gPDQwMDAwMD47
DQo+ID4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiLCJncGlvIjsNCj4gPiArCXBpbmN0cmwt
MCA9IDwmcGluY3RybF9pMmMxPjsNCj4gPiArCXBpbmN0cmwtMSA9IDwmcGluY3RybF9pMmMxX2dw
aW8+Ow0KPiA+ICsJc2NsLWdwaW9zID0gPCZncGlvNSAxNCAoR1BJT19BQ1RJVkVfSElHSCB8IEdQ
SU9fT1BFTl9EUkFJTik+Ow0KPiA+ICsJc2RhLWdwaW9zID0gPCZncGlvNSAxNSAoR1BJT19BQ1RJ
VkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+Ow0KPiA+ICsJc3RhdHVzID0gIm9rYXkiOw0KPiA+
ICsNCj4gPiArCXBtaWNAOCB7DQo+ID4gKwkJY29tcGF0aWJsZSA9ICJueHAscGY4MTIxYSI7DQo+
ID4gKwkJcmVnID0gPDB4MDg+Ow0KPiA+ICsNCj4gPiArCQlyZWd1bGF0b3JzIHsNCj4gPiArCQkJ
cmVnX252Y2Nfc2QxOiBsZG8xIHsNCj4gPiArCQkJCXJlZ3VsYXRvci1hbHdheXMtb247DQo+ID4g
KwkJCQlyZWd1bGF0b3ItYm9vdC1vbjsNCj4gPiArCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0
ID0gPDMzMDAwMDA+Ow0KPiA+ICsJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAw
MD47DQo+ID4gKwkJCQlyZWd1bGF0b3ItbmFtZSA9ICJOVkNDX1NEMSAoTERPMSkiOw0KPiANCj4g
SGF2ZSBhIG5ld2xpbmUgYmV0d2VlbiBwcm9wZXJ0aWVzIGFuZCBjaGlsZCBub2RlLg0KDQpJIHdp
bGwgYWRkIHRoZW0uDQoNClsuLi5dDQoNCj4gPiArDQo+ID4gKwllZXByb21ANTEgew0KPiA+ICsJ
CWNvbXBhdGlibGUgPSAiYXRtZWwsMjRjMzIiOw0KPiA+ICsJCXBhZ2VzaXplID0gPDMyPjsNCj4g
PiArCQlyZWcgPSA8MHg1MT47DQo+ID4gKwkJdmNjLXN1cHBseSA9IDwmcmVnX3ZkZF8zdjNfcz47
DQo+ID4gKwl9Ow0KPiA+ICsNCj4gPiArCXNuNjVkc2k4MzogYnJpZGdlQDJkIHsNCj4gDQo+IFNv
cnQgSTJDIGRldmljZXMgaW4gdW5pdC1hZGRyZXNzLg0KDQpPa2F5Lg0KDQpUaGFua3MgZm9yIHlv
dXIgcmV2aWV3LiBJIHdpbGwgc2VuZCBhIHYzIHdpdGggdGhlIHJlcXVlc3RlZCBjaGFuZ2VzLg0K
DQpSZWdhcmRzLA0KVGVyZXNhDQoNCg0KPiANCj4gU2hhd24NCj4gDQotLSANClBIWVRFQyBNZXNz
dGVjaG5payBHbWJIIHwgUm9iZXJ0LUtvY2gtU3RyLiAzOSB8IDU1MTI5IE1haW56LCBHZXJtYW55
DQoNCkdlc2Now6RmdHNmw7xocmVyOiBEaXBsLi1JbmcuIE1pY2hhZWwgTWl0ZXpraSwgRGlwbC4t
SW5nLiBCb2RvIEh1YmVyIHwNCkhhbmRlbHNyZWdpc3RlciBNYWlueiBIUkIgNDY1NiB8IEZpbmFu
emFtdCBNYWlueiB8IFN0Lk5yLiAyNjY1MDA2MDgsIERFDQoxNDkwNTk4NTUNCg==

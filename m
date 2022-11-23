Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 470BA635143
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 08:47:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235464AbiKWHrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 02:47:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235411AbiKWHrR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 02:47:17 -0500
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41340F8866
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 23:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1669189634; x=1671781634;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=6e3O23B968X4qj+qe3Xsxj1pz5ZkUMXlNU1GWJ9aBFM=;
        b=GOY7OVAbceiHyhxbf1crmPh1fqyspTMwU+fD7UtY6Zo9pAWlKeTCDfpGX2pH9Qmc
        x7YBn3RFB1bGlOJRm8HYpL2LQodlqy2pr/eDRTJuB1R2J/x+dO874cwiD1F4xsJs
        813wyq4vxkryUY226XX7Qet4XoNNDrJdXA3XwfB8874=;
X-AuditID: ac14000a-833f270000003940-83-637dd001cd05
Received: from Diagnostix.phytec.de (Diagnostix.phytec.de [172.25.0.14])
        (using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (Client did not present a certificate)
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 23.7E.14656.100DD736; Wed, 23 Nov 2022 08:47:13 +0100 (CET)
Received: from Berlix.phytec.de (172.25.0.12) by Diagnostix.phytec.de
 (172.25.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.18; Wed, 23 Nov
 2022 08:47:13 +0100
Received: from Berlix.phytec.de ([fe80::61cc:ebf0:7375:8768]) by
 berlix.phytec.de ([fe80::197e:d26b:2ca:c7b4%4]) with mapi id 15.01.2375.018;
 Wed, 23 Nov 2022 08:47:13 +0100
From:   Teresa Remmet <T.Remmet@phytec.de>
To:     "festevam@gmail.com" <festevam@gmail.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "festevam@denx.de" <festevam@denx.de>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: imx8mp-phycore-som: Remove invalid PMIC
 property
Thread-Topic: [PATCH] arm64: dts: imx8mp-phycore-som: Remove invalid PMIC
 property
Thread-Index: AQHY/cZufcgebeNSqEyMwESqUVNOva5ME0iA
Date:   Wed, 23 Nov 2022 07:47:13 +0000
Message-ID: <d1c1425fd5fb355205c410baef9ddadfaf9c92d9.camel@phytec.de>
References: <20221121162911.2377556-1-festevam@gmail.com>
In-Reply-To: <20221121162911.2377556-1-festevam@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.0.11]
Content-Type: text/plain; charset="utf-8"
Content-ID: <826F34DEA47B1E4FA16A44EB79D68BE7@phytec.de>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOIsWRmVeSWpSXmKPExsWyRpKBT5fpQm2yQeNTZov5R86xWsxfsJjN
        4uFVf4u+Fw+ZLTY9vsZq0br3CLvFiy3iDuwe82adYPHYOesuu8emVZ1sHneu7WHz2Lyk3uPz
        JrkAtigum5TUnMyy1CJ9uwSujHPLexkLXmlUnF0yn6WB8Yl6FyMnh4SAiUTvqbmMILaQwFom
        iberhbsYuYDsJ4wSz89sZ4VwNjJK/Pw+ixWkik1AQ+LliW6mLkYODhGBGImFWxxBapgF1jNJ
        7FnaxgxSIywQLPG0r50JxBYRCJFo+z+HGcI2kngzv58dxGYRUJWYuf8e2ExeATeJxzch4kIC
        lhKz7s4H6+UUsJK4MHUDWA2jgKzEhg3nweYwC4hLbHr2nRXiAwGJJXsg4hICohIvH/+DistL
        nLg1DexOZgFNifW79CFaLSQOTHvACGErSkzpfsgOcYKgxMmZT1gmMIrPQrJhFkL3LCTds5B0
        z0LSvYCRdRWjUG5mcnZqUWa2XkFGZUlqsl5K6iZGUOSKMHDtYOyb43GIkYmD8RCjBAezkghv
        vWdNshBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHe+z1MiUIC6YklqdmpqQWpRTBZJg5OqQbGHduS
        RO4zzWas4j7Gc6fD4UUth5D7rUs5PU+XTqlZ6vh1ybXgELuXf5uc+ZasrLwcsi4q7NF/25rP
        56esVnlltK45NqM7jPnpQRHJc5aaS+7JfuvV/REiqvd6ilvN3VNXt1eE/ruhOXdaB5e33bPu
        Q4wTGfTN2V7Xd6v80LZw99xz3H/OcXYxJZbijERDLeai4kQAH8FbzsoCAAA=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGVsbG8gRmFiaW8sDQoNCkFtIE1vbnRhZywgZGVtIDIxLjExLjIwMjIgdW0gMTM6MjkgLTAzMDAg
c2NocmllYiBGYWJpbyBFc3RldmFtOg0KPiBGcm9tOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBk
ZW54LmRlPg0KPiANCj4gJ3JlZ3VsYXRvci1jb21wYXRpYmxlJyBpcyBub3QgYSB2YWxpZCBwcm9w
ZXJ0eSBhY2NvcmRpbmcgdG8NCj4gbnhwLHBjYTk0NTAtcmVndWxhdG9yLnlhbWwgYW5kIGNhdXNl
cyB0aGUgZm9sbG93aW5nIHdhcm5pbmc6DQo+IA0KPiAgIERUQ19DSEsgYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvaW14OG1wLWRoY29tLXBkazIuZHRiDQo+IC4uLg0KPiBwbWljQDI1OiBy
ZWd1bGF0b3JzOkxETzE6IFVuZXZhbHVhdGVkIHByb3BlcnRpZXMgYXJlIG5vdCBhbGxvd2VkDQo+
ICgncmVndWxhdG9yLWNvbXBhdGlibGUnIHdhcyB1bmV4cGVjdGVkKQ0KPiANCj4gUmVtb3ZlIHRo
ZSBpbnZhbGlkICdyZWd1bGF0b3ItY29tcGF0aWJsZScgcHJvcGVydHkuDQoNClJldmlld2VkLWJ5
OiBUZXJlc2EgUmVtbWV0IDx0LnJlbW1ldEBwaHl0ZWMuZGU+DQoNCnRoYW5rIHlvdSBmb3IgdGhl
IHBhdGNoLiBJIGhhdmUgbm90aWNlZCB0aGlzIGFscmVhZHksIHRvby4uDQpCdXQgdGhlIHBhdGNo
IHN0YWNrIHRoYXQgaW5jbHVkZXMgdGhpcywgc3RpbGwgd2FpdHMgZm9yIGdldHRpbmcgDQpmaW5p
c2hlZCB1cC4gU28geW91IHdoZXJlIHF1aWNrZXIuDQoNClJlZ2FyZHMsDQpUZXJlc2ENCg0KPiAN
Cj4gQ2M6IFRlcmVzYSBSZW1tZXQgPHQucmVtbWV0QHBoeXRlYy5kZT4NCj4gRml4ZXM6IDg4Zjdm
NmJjY2EzNyAoImFybTY0OiBkdHM6IGZyZWVzY2FsZTogQWRkIHN1cHBvcnQgZm9yDQo+IHBoeUJP
QVJELVBvbGx1eC1pLk1YOE1QIikNCj4gU2lnbmVkLW9mZi1ieTogRmFiaW8gRXN0ZXZhbSA8ZmVz
dGV2YW1AZGVueC5kZT4NCj4gLS0tDQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9p
bXg4bXAtcGh5Y29yZS1zb20uZHRzaSB8IDEwIC0tLS0tLS0NCj4gLS0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMTAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvaW14OG1wLXBoeWNvcmUtc29tLmR0c2kNCj4gYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAtcGh5Y29yZS1zb20uZHRzaQ0KPiBpbmRleCA3OWIyOTBh
MDAyYzEuLmVjYzRiY2U2ZGI5NyAxMDA2NDQNCj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1wLXBoeWNvcmUtc29tLmR0c2kNCj4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvaW14OG1wLXBoeWNvcmUtc29tLmR0c2kNCj4gQEAgLTk5LDcgKzk5LDYg
QEAgcG1pYzogcG1pY0AyNSB7DQo+ICANCj4gIAkJcmVndWxhdG9ycyB7DQo+ICAJCQlidWNrMTog
QlVDSzEgew0KPiAtCQkJCXJlZ3VsYXRvci1jb21wYXRpYmxlID0gIkJVQ0sxIjsNCj4gIAkJCQly
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw2MDAwMDA+Ow0KPiAgCQkJCXJlZ3VsYXRvci1tYXgt
bWljcm92b2x0ID0gPDIxODc1MDA+Ow0KPiAgCQkJCXJlZ3VsYXRvci1ib290LW9uOw0KPiBAQCAt
MTA4LDcgKzEwNyw2IEBAIGJ1Y2sxOiBCVUNLMSB7DQo+ICAJCQl9Ow0KPiAgDQo+ICAJCQlidWNr
MjogQlVDSzIgew0KPiAtCQkJCXJlZ3VsYXRvci1jb21wYXRpYmxlID0gIkJVQ0syIjsNCj4gIAkJ
CQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw2MDAwMDA+Ow0KPiAgCQkJCXJlZ3VsYXRvci1t
YXgtbWljcm92b2x0ID0gPDIxODc1MDA+Ow0KPiAgCQkJCXJlZ3VsYXRvci1ib290LW9uOw0KPiBA
QCAtMTE5LDcgKzExNyw2IEBAIGJ1Y2syOiBCVUNLMiB7DQo+ICAJCQl9Ow0KPiAgDQo+ICAJCQli
dWNrNDogQlVDSzQgew0KPiAtCQkJCXJlZ3VsYXRvci1jb21wYXRpYmxlID0gIkJVQ0s0IjsNCj4g
IAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw2MDAwMDA+Ow0KPiAgCQkJCXJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDM0MDAwMDA+Ow0KPiAgCQkJCXJlZ3VsYXRvci1ib290LW9uOw0K
PiBAQCAtMTI3LDcgKzEyNCw2IEBAIGJ1Y2s0OiBCVUNLNCB7DQo+ICAJCQl9Ow0KPiAgDQo+ICAJ
CQlidWNrNTogQlVDSzUgew0KPiAtCQkJCXJlZ3VsYXRvci1jb21wYXRpYmxlID0gIkJVQ0s1IjsN
Cj4gIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw2MDAwMDA+Ow0KPiAgCQkJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDM0MDAwMDA+Ow0KPiAgCQkJCXJlZ3VsYXRvci1ib290LW9u
Ow0KPiBAQCAtMTM1LDcgKzEzMSw2IEBAIGJ1Y2s1OiBCVUNLNSB7DQo+ICAJCQl9Ow0KPiAgDQo+
ICAJCQlidWNrNjogQlVDSzYgew0KPiAtCQkJCXJlZ3VsYXRvci1jb21wYXRpYmxlID0gIkJVQ0s2
IjsNCj4gIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw2MDAwMDA+Ow0KPiAgCQkJCXJl
Z3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDM0MDAwMDA+Ow0KPiAgCQkJCXJlZ3VsYXRvci1ib290
LW9uOw0KPiBAQCAtMTQzLDcgKzEzOCw2IEBAIGJ1Y2s2OiBCVUNLNiB7DQo+ICAJCQl9Ow0KPiAg
DQo+ICAJCQlsZG8xOiBMRE8xIHsNCj4gLQkJCQlyZWd1bGF0b3ItY29tcGF0aWJsZSA9ICJMRE8x
IjsNCj4gIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxNjAwMDAwPjsNCj4gIAkJCQly
ZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsNCj4gIAkJCQlyZWd1bGF0b3ItYm9v
dC1vbjsNCj4gQEAgLTE1MSw3ICsxNDUsNiBAQCBsZG8xOiBMRE8xIHsNCj4gIAkJCX07DQo+ICAN
Cj4gIAkJCWxkbzI6IExETzIgew0KPiAtCQkJCXJlZ3VsYXRvci1jb21wYXRpYmxlID0gIkxETzIi
Ow0KPiAgCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDgwMDAwMD47DQo+ICAJCQkJcmVn
dWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTE1MDAwMD47DQo+ICAJCQkJcmVndWxhdG9yLWJvb3Qt
b247DQo+IEBAIC0xNTksNyArMTUyLDYgQEAgbGRvMjogTERPMiB7DQo+ICAJCQl9Ow0KPiAgDQo+
ICAJCQlsZG8zOiBMRE8zIHsNCj4gLQkJCQlyZWd1bGF0b3ItY29tcGF0aWJsZSA9ICJMRE8zIjsN
Cj4gIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MDAwMDA+Ow0KPiAgCQkJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Ow0KPiAgCQkJCXJlZ3VsYXRvci1ib290LW9u
Ow0KPiBAQCAtMTY3LDEzICsxNTksMTEgQEAgbGRvMzogTERPMyB7DQo+ICAJCQl9Ow0KPiAgDQo+
ICAJCQlsZG80OiBMRE80IHsNCj4gLQkJCQlyZWd1bGF0b3ItY29tcGF0aWJsZSA9ICJMRE80IjsN
Cj4gIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MDAwMDA+Ow0KPiAgCQkJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Ow0KPiAgCQkJfTsNCj4gIA0KPiAgCQkJbGRv
NTogTERPNSB7DQo+IC0JCQkJcmVndWxhdG9yLWNvbXBhdGlibGUgPSAiTERPNSI7DQo+ICAJCQkJ
cmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47DQo+ICAJCQkJcmVndWxhdG9yLW1h
eC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47DQo+ICAJCQkJcmVndWxhdG9yLWJvb3Qtb247DQotLSAN
ClBIWVRFQyBNZXNzdGVjaG5payBHbWJIIHwgQmFyY2Vsb25hLUFsbGVlIDEgfCA1NTEyOSBNYWlu
eiwgR2VybWFueQ0KDQpHZXNjaMOkZnRzZsO8aHJlcjogRGlwbC4tSW5nLiBNaWNoYWVsIE1pdGV6
a2ksIERpcGwuLUluZy4gQm9kbyBIdWJlciB8DQpIYW5kZWxzcmVnaXN0ZXIgTWFpbnogSFJCIDQ2
NTYgfCBGaW5hbnphbXQgTWFpbnogfCBTdC5Oci4gMjY2NTAwNjA4LCBERQ0KMTQ5MDU5ODU1DQo=

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B40A52B9613
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 16:25:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727193AbgKSPY0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 10:24:26 -0500
Received: from mail-eopbgr20077.outbound.protection.outlook.com ([40.107.2.77]:30126
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727171AbgKSPYZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 10:24:25 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=etafdEyEltOTql+OAOkuBRrVjOP3tz0RRPtRh7ym6o93FhHORORdvuJrg6tBbeQIFnb4acf8i9LUoYTXOQXSQyxGXprh2n0lh8RJrTto5z6JIlV8nUrQ5LtaeFe4inxwKG2D8DWphzehQ1HAS2Zplel39VUioUj3NbHkPk8fXnbJ+aLtMSL+X0hCEK0GczRnUKUvcoLbRXMwN5NPND6JtBxjKiiRJHM4qKPFzmgzfwwE+dbtTjv0+jm43Gng0NQbB0Jj/8AuBKyHyG+GwTxcYSf2zK/aHBCt8MARQexX+UXrhmMgHJVGkCfiwNaqK7rfTA3aS315RXQu+3pK6sa13A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+nfo+AvDBP5Ga70StqQiYH1Vz3+2Pgac9pTt8lJ74nc=;
 b=hYdFVi3HR9guIqZTyvU0+cU9DfeOZMyE/UdhT1JD4q95Z3Gfllh7Pieu06Fo6X+43Zb3PZUxPBcTkFGN4E+X3pYZxUdkgBdxAPO7CkbTldGH3Z5QugqdKZbNyNkTLBPwkAAF0XFlbFdwIiw4Z03jbrdeDJPmuOn73bCka5FdK3laycpTPqzVBO6YSiEQQ9HQocPF+3xilaRM49Qwf9eHseOQRDF8kcsiUQeQ1l6yxnbOyBLkxLtVhbq/UclETI7aOJN3nP3Z/TiCaHd+k6ent5W9YnNGUaE6fMdg0rjWShcfHguc5HzE3VawAaniqMAo7+WOtMDtkzWe2YwqUb63eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+nfo+AvDBP5Ga70StqQiYH1Vz3+2Pgac9pTt8lJ74nc=;
 b=CvD/R2uGmIC9D4UOmNA8Gd1Fc3nF+b7oKZZh1JxmHOHasBDk2XlSKCc+QHf2/zhN6ey0J/PZImrEyzkymT76X+/T8VoGekGqCgRhBI71qlxrKkdTlXvp/sd0i61Px7RLFgAZ7rSmO9v7Jy+XNpRccZvTYnthRJ2V2XXwOs/GQ0Y=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM7PR04MB7013.eurprd04.prod.outlook.com (2603:10a6:20b:116::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Thu, 19 Nov
 2020 15:24:21 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 15:24:21 +0000
From:   Aisheng Dong <aisheng.dong@nxp.com>
To:     Krzysztof Kozlowski <krzk@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 3/3] dt-bindings: mailbox: mu: add imx8qm support
Thread-Topic: [PATCH 3/3] dt-bindings: mailbox: mu: add imx8qm support
Thread-Index: AQHWvnVTFKcohdlbbkec0OZWSgOKuqnPcVkAgAAhaDA=
Date:   Thu, 19 Nov 2020 15:24:21 +0000
Message-ID: <AM6PR04MB496627CCC7C5CE769719D74980E00@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <20201119125304.1279-1-aisheng.dong@nxp.com>
 <20201119125304.1279-3-aisheng.dong@nxp.com>
 <20201119132314.GC348129@kozik-lap>
In-Reply-To: <20201119132314.GC348129@kozik-lap>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [180.171.84.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e1febac6-d5f1-4cdc-6464-08d88c9f3057
x-ms-traffictypediagnostic: AM7PR04MB7013:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB701380E3AE621F69EF030AE080E00@AM7PR04MB7013.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vg07QNA+v2w/wbB17YHByubUhnnuKx0I4+0+s5q+o2JL+EojLxPI+dVgbrrMJuASZ20HL7vEX/5v5akoQAKytlNDMHULbRaRHsKB6MRvUiKjtofsxFw/KcvwnW6Mb+KFoiHtCL4bRl+yuON7YBwbQyEvJFLzryTFQZozE2OWi5v4qX6s9yOXRpIJ+XLhfxJZxz2LCCnHQsrdl0Hkqugh2z/IG24JA+Q+7MTvvzehV+wSNFxS0gP3wae+KMOCfyjhwcKVQISYMAYAqO8g0mBQOZ7o6TpCZpekozLDcASKkrOlu0K+OnCkZGEGF2RS/2Ie/it35tVrwZ//u6s5Mri+laJJp2JrycumooUThI9epBwhkFeHNaYceOfQAUkFe1BE
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(366004)(346002)(39860400002)(376002)(316002)(6506007)(54906003)(52536014)(2906002)(83380400001)(44832011)(26005)(7696005)(186003)(55016002)(86362001)(71200400001)(15650500001)(5660300002)(9686003)(76116006)(33656002)(66446008)(64756008)(66556008)(66476007)(478600001)(66946007)(8676002)(8936002)(4326008)(6916009)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: Oa6M/q2x2lEYK8IBZrCgRKSVgUfSJX2UIQCR1t+QunPAzZkSlniXs4ykyY/MTvgjFG6anlEqs+2Y08bwaLUMgnVgWORginHevOwwCJDuotjicE1CxQ3bvhy85ZzoHlBjxn65GTjv0RbWOkj/YWBJhLx7+v2wewgnAMwCaKEGDK0DKXg8RzPzdnVWsQgnEHKxmOlo6PxIG7y6L+sSRocL4mqEYgLTGAWp6cYEx8zCOsaP7DcUxTmy2gJmvTC6N63WS2It0QgS7Vk31/KJmCDhgr1C3A/jjwefFXW4sOwG44djSJdKhR8OlUUbIkZ74m5GEuA379VYRZw9uwmt358mxVk3iVZlZRZqnuvFBcmHYkL+9njQeooxT876fb1guq62G2YO0vcniUpdq5eFv7KlYJxgrfk+dTwcpL4l3dBmk+3lHi2k64Av0mOFZOpmnHhkQORLWzV33BGvwvwxcjoSG5YQtYjfVDqtVmQl0ru7vbixLcxm4qXxMOV54sbg1GAagCNqEHHoD7COqAySc7m9/H+hkwwg3IdpAvMdaznjzYE+ILgFh8rJf4VIbODGrB6rDIKKz30tv7BnR9fCh6Fz3MuRpiBZVMVUZWLmNrlMs/mjdi5Kbhl6k7qOGf6NfaaZIL+yCf02xPdnJvn9b1239Q==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1febac6-d5f1-4cdc-6464-08d88c9f3057
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2020 15:24:21.0688
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F55Bh0kuZPbYPKIQfBmHNyUAxsRiX6tUbf2tEi5nNijm0nR9hRxEBDA5mbuaSdBr9NFSiQjqbcllNh6XOkHoKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7013
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBGcm9tOiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IFRo
dXJzZGF5LCBOb3ZlbWJlciAxOSwgMjAyMCA5OjIzIFBNDQo+IA0KPiBPbiBUaHUsIE5vdiAxOSwg
MjAyMCBhdCAwODo1MzowNFBNICswODAwLCBEb25nIEFpc2hlbmcgd3JvdGU6DQo+ID4gQWRkIGlt
eDhxbSBzdXBwb3J0DQo+ID4NCj4gPiBDYzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9y
Zz4NCj4gPiBDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiBDYzogU2hhd24gR3Vv
IDxzaGF3bmd1b0BrZXJuZWwub3JnPg0KPiA+IFNpZ25lZC1vZmYtYnk6IERvbmcgQWlzaGVuZyA8
YWlzaGVuZy5kb25nQG54cC5jb20+DQo+ID4gLS0tDQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tYWlsYm94L2ZzbCxtdS55YW1sIHwgNSArKysrLQ0KPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21haWxib3gvZnNsLG11Lnlh
bWwNCj4gPiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tYWlsYm94L2ZzbCxt
dS55YW1sDQo+ID4gaW5kZXggMTVjZWY4MmNkMzU2Li4xYTNkZmYyNzdlMmIgMTAwNjQ0DQo+ID4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21haWxib3gvZnNsLG11Lnlh
bWwNCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWFpbGJveC9m
c2wsbXUueWFtbA0KPiA+IEBAIC0zNCwxMiArMzQsMTUgQEAgcHJvcGVydGllczoNCj4gPiAgICAg
ICAgICAgICAgICAtIGZzbCxpbXg4bW0tbXUNCj4gPiAgICAgICAgICAgICAgICAtIGZzbCxpbXg4
bW4tbXUNCj4gPiAgICAgICAgICAgICAgICAtIGZzbCxpbXg4bXAtbXUNCj4gPiArICAgICAgICAg
ICAgICAtIGZzbCxpbXg4cW0tbXUNCj4gDQo+IFlvdSBhZGQgdGhlIGNvbXBhdGlibGUgYmVsb3cs
IHNvIGRlY2lkZSB3aGljaCBvbmUgaXMgaXQuIFBsZWFzZSBwcm92aWRlIGFsc28NCj4gdXNlcnMg
b2YgdGhpcyBjb21wYXRpYmxlIC0gRFRTLg0KDQpUaGVyZSdyZSB0d28gU0NVIE1VIHByb3RvY29s
IGJpbmRpbmdzLCBib3RoIGNhbiBiZSB1c2VkLCBqdXN0IGxpa2UgZXhpc3QgZnNsLGlteDhxeHAt
bXUuDQoNClJlZ2FyZHMNCkFpc2hlbmcNCg0KQm90aCBjYW4gYmUgdXNlZCwgZGVwZW5kcyBvbiB3
aGljaCBwcm90bw0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiBLcnp5c3p0b2YNCj4gDQo+ID4gICAg
ICAgICAgICAgICAgLSBmc2wsaW14OHF4cC1tdQ0KPiA+ICAgICAgICAgICAgLSBjb25zdDogZnNs
LGlteDZzeC1tdQ0KPiA+ICAgICAgICAtIGRlc2NyaXB0aW9uOiBUbyBjb21tdW5pY2F0ZSB3aXRo
IGkuTVg4IFNDVSB3aXRoIGZhc3QgSVBDDQo+ID4gICAgICAgICAgaXRlbXM6DQo+ID4gICAgICAg
ICAgICAtIGNvbnN0OiBmc2wsaW14OC1tdS1zY3UNCj4gPiAtICAgICAgICAgIC0gY29uc3Q6IGZz
bCxpbXg4cXhwLW11DQo+ID4gKyAgICAgICAgICAtIGVudW06DQo+ID4gKyAgICAgICAgICAgICAg
LSBmc2wsaW14OHFtLW11DQo+ID4gKyAgICAgICAgICAgICAgLSBmc2wsaW14OHF4cC1tdQ0KPiA+
ICAgICAgICAgICAgLSBjb25zdDogZnNsLGlteDZzeC1tdQ0KPiA+DQo+ID4gICAgcmVnOg0KPiA+
IC0tDQo+ID4gMi4yMy4wDQo+ID4NCg==

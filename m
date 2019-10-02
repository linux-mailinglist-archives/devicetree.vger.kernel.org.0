Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 096E3C8BD3
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2019 16:50:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727436AbfJBOuU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Oct 2019 10:50:20 -0400
Received: from mail-eopbgr70054.outbound.protection.outlook.com ([40.107.7.54]:63771
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726411AbfJBOuT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 2 Oct 2019 10:50:19 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nIUu1kPN4wMk12WHRfT/6AVoeH3zlkkEZPQXwsdf0pBXYc/IjFLv2SNESVLaA40S6ybKPu2nUHu9hD29AwUt3OhoyoZ1j8laJYFdYi1qzR61/ykk9xwBGRLv/b6Tt3bR5K2nA0TKtJvCn2nyLsq3BlTqRX8kV6QJmA3sVT19G+W2T+Wa5+QGg4MLERJIbw4DHo+jJXdog4o4PBVLJjP4Y9AB7dB1TnOqbpUClv70b8t8V8UO54OKLrnbJMw1g7jt0jYen7+Uq0//+4fe+1njfVh/v3tzfM0sr9NOhifb7SM/IfsTD3Hagyeg8Omsuwl01dKmyWzH5UdlDtmo36FoTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Td1+cbT1XaW5oPLO9lo6u4sJKxwDnLc12nKeePPWjvs=;
 b=AymbgI2DW6uTVT7u0DeXNO/fCDYZCrIZeklaq19uzkZYic6/RAIi9g2+T95bvb+B+MJN9bUkr8AuFUEXa2XKsyvKh9wEdKwb4OYM52s0YP5OTRVsLlEgI1El9aTND2mJf5qOLmxtv/7m3ea0A7KzBPLvKV70QU/RZ2Ctp4KFMbcRAl2wbZ+mUVMcWEjQbpnA4vW9+dV5XDk9EJjiTr0FOzqFNKkV/ivDGibeptk8gV1C9/OxiNsRz6uw0dUHD817OMvYwJE4l8v0/GB/EvUqXpOg9xCTCWR1+kxH1ipYcZgF6+24HJyx5+IS8KQxQmZvJ+3YNus7jbOXriPTq6QwDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Td1+cbT1XaW5oPLO9lo6u4sJKxwDnLc12nKeePPWjvs=;
 b=TmYGDCdkeHZq+5zL1zMM/aG9xbozoBhznYh0/Fc7yBmoJJjSy/4a1MgIVkbIcue2dr5A6XDCBXc9QFcylrl7s2aiPVDf7BW02gWx1ghQJ2CL2UsNGxtMhMxlh3m9wcK448YzcCJwlB3aD3o/jbajKbYG4Md4KE9mv0ZmHl4ZrDY=
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com (52.133.13.160) by
 VI1PR04MB4046.eurprd04.prod.outlook.com (10.171.182.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Wed, 2 Oct 2019 14:50:16 +0000
Received: from VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::6ced:919:ea4f:5000]) by VI1PR04MB4094.eurprd04.prod.outlook.com
 ([fe80::6ced:919:ea4f:5000%6]) with mapi id 15.20.2305.023; Wed, 2 Oct 2019
 14:50:16 +0000
From:   Daniel Baluta <daniel.baluta@nxp.com>
To:     "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "frowand.list@gmail.com" <frowand.list@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "mripard@kernel.org" <mripard@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: dsp: Fix fsl,dsp example
Thread-Topic: [PATCH] dt-bindings: dsp: Fix fsl,dsp example
Thread-Index: AQHVeS+Yzc1JjB8wbUO5Sw+OPrSw/adHbweA
Date:   Wed, 2 Oct 2019 14:50:15 +0000
Message-ID: <0fbd22648ba47c362f1269a175da6c2735cb8894.camel@nxp.com>
References: <20191002144204.114346-1-mripard@kernel.org>
In-Reply-To: <20191002144204.114346-1-mripard@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a206cc8-4281-410e-d25c-08d74747d65a
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB4046:
x-microsoft-antispam-prvs: <VI1PR04MB4046BCA6F686E3F8BEEAED7BF99C0@VI1PR04MB4046.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0178184651
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(346002)(366004)(376002)(39860400002)(136003)(189003)(199004)(2906002)(118296001)(4744005)(102836004)(305945005)(76176011)(7736002)(64756008)(66446008)(66556008)(66476007)(486006)(4326008)(91956017)(76116006)(6512007)(66946007)(478600001)(5660300002)(25786009)(44832011)(66066001)(86362001)(6246003)(2616005)(11346002)(71190400001)(71200400001)(6436002)(446003)(476003)(6486002)(36756003)(2501003)(6116002)(14454004)(8936002)(26005)(186003)(3846002)(81166006)(6506007)(8676002)(81156014)(316002)(229853002)(99286004)(110136005)(256004)(50226002)(14444005)(99106002)(142933001);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB4046;H:VI1PR04MB4094.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J3WxaMyyW/EGstuSk+O+zWZkLynr6cZmja6Yv8itGvgUPhwJl4GZ6yMqnl+hO4fihljP8Euk+OO0s6SFQbzPl77F9ekYAkpaWRrYgUfJ9H7H6NV73Y0P7VDY0iWwefXxEFSk9uDirdoHNc/a5dmBkm8M7cM8SlslcOTekK/deBsMk0EjIac/JlHIhBlcjyDLajIJVYySlknIGwO3lqfn6gqaJ4mkF4GUuFuQQxL0AonsZ9/WiZT70nP2o4h99+Ngk9cAQDAypzeMcX4SYiiwQo+SkwdgiN/WpnRYb2FBgdfi6Z8Q4455h6nSda05aTDrZikQGLYtLbbs4UhuYWXgXkB+GRli7kyyw0UCWSh2eO/nFeEBtzmIRprjH0t8+Ic+tx+gMThltGFU6QowPoUe2tzfd8QGFgKw8OteXj5A30M=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <FFEDA41139E9BD47BF6C252CF44CB7F9@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a206cc8-4281-410e-d25c-08d74747d65a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2019 14:50:15.9771
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XpeL5xpPK8dlYpXghnr9kKxHkmmgznMGewTsdrf3VRRVN9nRbA3d+vNmb6pIbWtFo9Zn4fioHpgc2T91L2x21g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4046
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gV2VkLCAyMDE5LTEwLTAyIGF0IDE2OjQyICswMjAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOg0K
PiBUaGUgZnNsLGRzcCBiaW5kaW5nIHJlcXVpcmVzIGEgbWVtb3J5LXJlZ2lvbiwgeWV0IGl0cyBl
eGFtcGxlIGRvZXNuJ3QNCj4gaGF2ZQ0KPiBvbmUgd2hpY2ggcmVzdWx0cyBpbiBhIHdhcm5pbmcu
IExldCdzIGFkZCBhIG1lbW9yeS1yZWdpb24gcGhhbmRsZSB0bw0KPiB0aGUNCj4gZXhhbXBsZS4N
Cj4gDQo+IEZpeGVzOiA3ZGIyZjJkZmM3MDEgKCJkdC1iaW5kaW5nczogZHNwOiBmc2w6IEFkZCBE
U1AgY29yZSBiaW5kaW5nDQo+IHN1cHBvcnQiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlw
YXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQoNClJldmlld2VkLWJ5OiBEYW5pZWwgQmFsdXRhIDxk
YW5pZWwuYmFsdXRhQG54cC5jb20+DQoNClRoYW5rcyBNYXhpbWUhDQoNCj4gLS0tDQo+ICBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZHNwL2ZzbCxkc3AueWFtbCB8IDEgKw0KPiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RzcC9mc2wsZHNwLnlhbWwNCj4gYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZHNwL2ZzbCxkc3AueWFtbA0KPiBpbmRleCAzMjQ4
NTk1ZGM5M2MuLmYwNDg3MGQ4NDU0MiAxMDA2NDQNCj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2RzcC9mc2wsZHNwLnlhbWwNCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2RzcC9mc2wsZHNwLnlhbWwNCj4gQEAgLTg1LDQgKzg1LDUgQEAg
ZXhhbXBsZXM6DQo+ICAgICAgICAgICAgICAgICAgICAgICAgICA8JnBkIElNWF9TQ19SX0RTUF9S
QU0+Ow0KPiAgICAgICAgICBtYm94LW5hbWVzID0gInR4ZGIwIiwgInR4ZGIxIiwgInJ4ZGIwIiwg
InJ4ZGIxIjsNCj4gICAgICAgICAgbWJveGVzID0gPCZsc2lvX211MTMgMiAwPiwgPCZsc2lvX211
MTMgMiAxPiwgPCZsc2lvX211MTMgMw0KPiAwPiwgPCZsc2lvX211MTMgMyAxPjsNCj4gKyAgICAg
ICAgbWVtb3J5LXJlZ2lvbiA9IDwmZHNwX3Jlc2VydmVkPjsNCj4gICAgICB9Ow0K

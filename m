Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9889127BF36
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 10:22:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725306AbgI2IWx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 04:22:53 -0400
Received: from mail-eopbgr10052.outbound.protection.outlook.com ([40.107.1.52]:19862
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725283AbgI2IWx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 29 Sep 2020 04:22:53 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xg9CW7JSwnrUMhB8XUkaayI70IRPk1Ufd9Ur9vWs+2HwJLY2z7nE3ZrIXYW6uxLangdlByz7KRihCKFlHqEG4lLWi7jdpRXs4SygGB0M6JoMpQ1cLyLiOaYJbd/Kj4DEXofE05Dlqld/g8sj4CEFk2hBlGQTCVLoUCT3Ey7OHvi4gr4y9CG/62fNwRptWXUALrBw5pA+o+cNolb4lL/rWZrgErulSCOv3jGjlkrzmmtth/BM+bmZ69WgOgAw4JjD1B8MTYOJEyhLGYH4zfZZVkoR1ILsW8+bxoUML8OjyfKtFFEI2KZNSEhsKjnwyInH8HFsYZZrTVMTw74hemRjgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bLlj+iMyAKSEQ1SYPUX+qL2lScadXUh2SXabkGLdso8=;
 b=ZOiAYCaW6k/JZ6qx58TYcIkahCsMVki+kt0CtiWzD5F9MWNWDgRN1N/rNOUx+nQqB5RyieojYCJNlzDvNQPgMffwx7j+gC1Kie0eeJjlwgHCljEAgoAnC3R31TQUBEI6srBiwCQn99HrcII5fwEANEXL5i8egx+d5WVUT9qqxNBZJ0Yf9OGdynx5DzQZL5rQ+ODqB3lc/xVbzDmEpUMV/7AaGfFGswiTeRHIMWp9N5fBbG7LDTk+LZbwxdCu7LWdOIDaIepMrOSmRPfCwzpdwvYJxKfgBePNqSx9XB2G99g4c9t9BEOMzhZo992UKxyfaW6RQpRilsuE5ZfxTRdm/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bLlj+iMyAKSEQ1SYPUX+qL2lScadXUh2SXabkGLdso8=;
 b=jNEfHQUZfWcvnFO1l41s6YvVI5KMEAdlWoXAlZyBdEJ/CjTC1fg17dC/KGsp3tLrsA7S3qlPGAik/TQNYg5Fu8wxQ/q2lGbYxA1OcnIRYOYywT6X8YoGthrNhzH3YQpXkwtethPqb4hI+CTwFPMPFs7A3BOzag+V8kd0ghVQe1M=
Received: from AM6PR04MB4917.eurprd04.prod.outlook.com (2603:10a6:20b:1::27)
 by AM6PR04MB4088.eurprd04.prod.outlook.com (2603:10a6:209:49::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.25; Tue, 29 Sep
 2020 08:22:49 +0000
Received: from AM6PR04MB4917.eurprd04.prod.outlook.com
 ([fe80::8862:61c7:e29a:b886]) by AM6PR04MB4917.eurprd04.prod.outlook.com
 ([fe80::8862:61c7:e29a:b886%7]) with mapi id 15.20.3412.028; Tue, 29 Sep 2020
 08:22:49 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     Krzysztof Kozlowski <krzk@kernel.org>
CC:     "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [PATCH 2/2] arm64: dts: freescale: Add pmu support on imx8mn
Thread-Topic: [PATCH 2/2] arm64: dts: freescale: Add pmu support on imx8mn
Thread-Index: AQHWlLJuVYFWu1LuIUSh66FIi1qgWal/REiAgAAFjZA=
Date:   Tue, 29 Sep 2020 08:22:48 +0000
Message-ID: <AM6PR04MB491782FDADA95F8768D5AA3387320@AM6PR04MB4917.eurprd04.prod.outlook.com>
References: <20200927094742.2714535-1-ping.bai@nxp.com>
 <20200927094742.2714535-2-ping.bai@nxp.com> <20200929080213.GD7139@kozik-lap>
In-Reply-To: <20200929080213.GD7139@kozik-lap>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 22fff57c-1722-4a67-9a0e-08d86450da0f
x-ms-traffictypediagnostic: AM6PR04MB4088:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4088C7F920AFFBA76DC708F287320@AM6PR04MB4088.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /2EVdmf84CtWIeScPopRIB4cgtdvCiY6jJ+nM8fzc9T9/rV4/Bs07PDWFnaCMPyLtTmQ8n1lFfcpzzGltTCyLIRYAuWCzzqziaNYmq+RfXUUTij/+VTz1IumocV2NTk8v8CNICSIYXXNP0BBAO6J4ngPKe9VHxy6Ch5urQs+fNsA17l26rDr/wpxu3U2a9vC2qtO0tEn35oQYLTiKVMoSzpLyxTcTmFTKtKBSc9yVvWCJEUk1Dh6piEdrdR5FumDbHM+lvP7ngukQ4d12lkSWvohlmmfgfBgIPbrxC6f80sAg2Z8pjf2FDUFI/rIFkDB1ZJl6wOp19n0jzm6j2WrRKoUkuYrerqYmUURjhRKrW6C+7AuZMSuVGEm4uomi0/IRLXgjU2Nt8yN3hoi1O3p2Z3SzWLgiyDp/dSck2DiH5w=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4917.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(346002)(136003)(39860400002)(376002)(66446008)(66556008)(64756008)(478600001)(52536014)(66476007)(5660300002)(54906003)(186003)(316002)(53546011)(6506007)(4326008)(7696005)(66946007)(8676002)(71200400001)(8936002)(76116006)(33656002)(2906002)(26005)(86362001)(6916009)(83380400001)(55016002)(9686003)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: porVOocfB2n+7fOGTTdAbcwfrjrpjWNR/N2VX9BbcYd2sUOJXTHB8MQ8RaKHzAUc3WRhSY/j3uKxgnUT1yYUll6rw1ezUY3P7tftVLd8/SAXzpaGO7eaadXhW/TCuf+g2hUMTamxmqP2X0If2pCQ1+BHLYbIYGmhjnbhtnOloZUdmzpGZKiGd3zQbP4Brk5bHbSRVRD8N+zWwcOn+JTY9K4qL4Ibot2KQM1cPFq+VED6YvZrXKtUA09QFevLmu/iotVNsOrAJVYITzYzkhwsBi+iU/r+TyWstLXEB0DFpoB+B7uYPfDHjs2tZ5AUbTqaH3NtFhXDthSmPwKgQ3K9EY7tIz4qUtUzwW1hRRJ0OxZg3er2fpQkDny4Uo1wO/rIMe2kRI3KqQtnmbjc/4uveebmc8ZWWYYJA7Vr1T2xpYq34JhQc+ptL1G/NAj8YkKeGW14A+iQ79Wg4TSDaCjKRND18Kja1CF7bmboZvDVvmQs96tQhTSRYCu/nYt2TNPMW7Xr1m7GZFydso1GIlXd0PU5foV+zmu48WoC6L6ivByog0UhMTGC1eB+yE0cKWpJuudPFqFcBbMEov9YsdEaki5YaNw3+8MisXiW1iPUjNjGSmGQQLLqM1FFCvYiBqPOeUPQ2FbdUS4eVX4pmUgLQg==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4917.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22fff57c-1722-4a67-9a0e-08d86450da0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2020 08:22:49.0672
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1fGmkbu+VjYBZAP7NGzcebdykLnsv12GjOnODHdlnbfDkotoLbfM5UL7x4tJ0XC8nDfuIbYNODHc6ME2NSJv8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4088
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLcnp5c3p0b2YgS296bG93c2tp
IFttYWlsdG86a3J6a0BrZXJuZWwub3JnXQ0KPiBTZW50OiBUdWVzZGF5LCBTZXB0ZW1iZXIgMjks
IDIwMjAgNDowMiBQTQ0KPiBUbzogSmFja3kgQmFpIDxwaW5nLmJhaUBueHAuY29tPg0KPiBDYzog
c2hhd25ndW9Aa2VybmVsLm9yZzsgcm9iaCtkdEBrZXJuZWwub3JnOyBzLmhhdWVyQHBlbmd1dHJv
bml4LmRlOw0KPiBmZXN0ZXZhbUBnbWFpbC5jb207IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54
cC5jb20+Ow0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BB
VENIIDIvMl0gYXJtNjQ6IGR0czogZnJlZXNjYWxlOiBBZGQgcG11IHN1cHBvcnQgb24gaW14OG1u
DQo+IA0KPiBPbiBTdW4sIFNlcCAyNywgMjAyMCBhdCAwNTo0Nzo0MlBNICswODAwLCBKYWNreSBC
YWkgd3JvdGU6DQo+ID4gQWRkIFBNVSBub2RlIHRvIGVuYWJsZSBwbXUgc3VwcG9ydCBvbiBpbXg4
bW4uDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWNreSBCYWkgPHBpbmcuYmFpQG54cC5jb20+
DQo+ID4gLS0tDQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbi5kdHNp
IHwgOCArKysrKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+ID4N
Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1uLmR0
c2kNCj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbi5kdHNpDQo+ID4g
aW5kZXggNzQ2ZmFmMWNmMmZiLi41ODk4MzVkNzg3MjcgMTAwNjQ0DQo+ID4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1uLmR0c2kNCj4gPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW4uZHRzaQ0KPiA+IEBAIC0xODYsNiArMTg2LDE0IEBA
IGNsa19leHQ0OiBjbG9jay1leHQ0IHsNCj4gPiAgCQljbG9jay1vdXRwdXQtbmFtZXMgPSAiY2xr
X2V4dDQiOw0KPiA+ICAJfTsNCj4gPg0KPiA+ICsJcG11IHsNCj4gPiArCQljb21wYXRpYmxlID0g
ImFybSxhcm12OC1wbXV2MyI7DQo+ID4gKwkJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDcNCj4gPiAr
CQkJICAgICAoR0lDX0NQVV9NQVNLX1NJTVBMRSg2KSB8IElSUV9UWVBFX0xFVkVMX0hJR0gpPjsN
Cj4gDQo+IFRoZSBzYW1lIGFzIGluIDEvMiAtIHVudXN1YWwgdmFsdWUgZm9yIEdJQ19DUFVfTUFT
S19TSU1QTEUuIFRoZXJlIGFyZQ0KPiBmb3VyIGNvcmVzIG9uIE5hbm8uDQo+IA0KDQpUaGFua3Mg
Zm9yIHJldmlldywgd2lsbCBmaXggaW4gdjIuDQoNCkJSDQoNCj4gQmVzdCByZWdhcmRzLA0KPiBL
cnp5c3p0b2YNCg==

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8AAC29D73D
	for <lists+devicetree@lfdr.de>; Wed, 28 Oct 2020 23:22:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732650AbgJ1WW3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 18:22:29 -0400
Received: from mail-eopbgr40045.outbound.protection.outlook.com ([40.107.4.45]:3206
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1732645AbgJ1WW3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Oct 2020 18:22:29 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gCroyFTLGHkvoLHH1wjLCi0qv89wKZzGtdBPvBPL9iW7kjz/Wg6FFj1UzzTTD7ulgx63ZS4mZ/vohr/NlQJw9QPjqza5PZ9N83pxVwxrHKNtQOF1dPkZhFh2CUPkTI6X+rvA1Y8KUBoAR3ztQYZ9vNrK/cOxjvtxEYjyjXSSDMDPZbIimt1RNysray9ipp2IWoYt+ET6g4VrMEgQu0WHV/XVOuKihSw+9SPSfy0k+2AW179MzzSaSk9sdbiD4R9LkTPqCLpqZgEUjLqbr9MsCuT7Uegk6Pvq1lTd8m8lIVrHC5WRpNQI+Ncc8oDLxJJ2Mv/g/qrlQIP+It4mnlVuHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOX8/tFym3t+eR1AQkTuvD7Vf1N+dzD2afy2NkH1k9o=;
 b=mCmCZLi5zNeLpzb+nxlt47zIyWBFoqGyRkmjpZEpe1O9xy6wf3kqj6pPAWNeq61Tv6qNXLZvUusBiZxafBbNZ4KA6xIE8CtVjsj6IYawGB1OmwqQ5yukJmZTQItBPrEetJB0RvIxQ0yPkM+KUDMDlw3AH5UTNkqVi8gZKTjgEBJMKUg5N2CXhdrvp0YG4UFlFlHigzwrkgEl9VOIFbNDgdd2r8l1OxbyeIskQ/9PBUVg2H2NS1fidIcdElj1L0Fbdt3f8/U8Rf/kNcvKs22a3kA+zkFu3xk6zQ54GzBzy7Z8lNEi0xcifwnT0X0Atgzw8AS7Ec4yUso3Z8wjD0bucA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IOX8/tFym3t+eR1AQkTuvD7Vf1N+dzD2afy2NkH1k9o=;
 b=Px42cU2+1+YCcwW6ScvbOWTVI18SEuvfFKkTeLkxd6rmQa0biTOB8aWs6uTDQiOt/ueMnRnN/5N40yuwLr6OeeT1QKnKeaaznIHcW2SqiTOW4rEeUwZtjxDw/L1VOQ828xU+5gQ/xHfR7stinaKC8xrXtQ1RWUXJVTsDpZRPJ1s=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2936.eurprd04.prod.outlook.com (2603:10a6:4:9a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.25; Wed, 28 Oct
 2020 13:50:50 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::ec42:b6d0:7666:19ef]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::ec42:b6d0:7666:19ef%8]) with mapi id 15.20.3499.022; Wed, 28 Oct 2020
 13:50:50 +0000
From:   Peng Fan <peng.fan@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     dl-linux-imx <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>
Subject: RE: [PATCH 00/11] i.MX8MM power domain support
Thread-Topic: [PATCH 00/11] i.MX8MM power domain support
Thread-Index: AQHWl0FkFkfmk6C6y0W1fNYYG4Cll6mOojMAgACJVwCAAPyegIAFxfeAgABy3LCADQoAgIAJwp2g
Date:   Wed, 28 Oct 2020 13:50:50 +0000
Message-ID: <DB6PR0402MB276078487A13C2904FA16EA688170@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
         <AM0PR04MB4915267F67FFEA311E9B79F087080@AM0PR04MB4915.eurprd04.prod.outlook.com>
         <5287bbc0ede98dd3fc0022f2062148275dafa05c.camel@pengutronix.de>
         <AM0PR04MB4915BC0D047EBD63D4E4366587090@AM0PR04MB4915.eurprd04.prod.outlook.com>
         <18c98a86aaac86a5742d6f8c4c671ae522751dda.camel@pengutronix.de>
         <DB6PR0402MB27604614CB067AB6594221ED88050@DB6PR0402MB2760.eurprd04.prod.outlook.com>
 <4985eb0d018d488d93e427db27be9418057d9440.camel@pengutronix.de>
In-Reply-To: <4985eb0d018d488d93e427db27be9418057d9440.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f736aaf8-54f2-42e5-1239-08d87b487b2b
x-ms-traffictypediagnostic: DB6PR0402MB2936:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB29368F458F46848A567B6F5B88170@DB6PR0402MB2936.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lje8iio15YiQgh4ZzjVrCr2rxejmNQuiRyhpD0a5iKnXLwNld24d5qYpecSJVuig7lroeq46Wj7f97t5ny5Xsu91ljbi3wq0fOwWg3yzq6WgQZAR80HcD1YsUoLMsWcq41ZKEN2tU8NZWzqm/Zio3TfLED46OAinT+CVkjW4Um8X2VC9JRNH6OQSRNYxUA/sl3wR+2Lbt8ZlrPiMctgCcUk7U840oMAy8RZ4Gq2XbgrJJ8ZTjcEvlfbo9Iq86/ftM855ZZSQAAGbnqJ78k3Dz6sPtPVoYOTlx1CSjqiinQL72h0Z+1wuml6CbEh1XtGmstD8umc8RbFr2GhksccXFQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR0402MB2760.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(366004)(136003)(396003)(346002)(83380400001)(66476007)(55016002)(110136005)(54906003)(2906002)(64756008)(5660300002)(66556008)(76116006)(7416002)(316002)(45080400002)(66446008)(86362001)(44832011)(52536014)(71200400001)(478600001)(6506007)(7696005)(8676002)(186003)(26005)(66946007)(4326008)(33656002)(9686003)(4001150100001)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: WG+h7qxVHCmEpO2Z225bNFpvjLM0a298G3HVj0PmUv1uKFKXZS+7YxZMGoFHEyZHxc4y1dYIPdr7kJgomR0u7B7tDbTUVGeSl+wFx0SldKjkb8ZeyY122mObv0ZVLYca6uiv5BFUhN1q3rVc2VJwuQtfg9hdqGO/9xy5/TDRE7B1qJu1ArzySnXyw0qDGc+LA/B6dFMYbNvOIPZiTaYyZXMtMPv8FyCim6daCVFLJh/o7r4NG187SBgUeRRpfEaymGJdYjkFHXtxCctYNGJBX/B9fDIraKKxuo0SrTw4kYax1g4byfo5/arY3NN1HxBCFehUCkphMY7VVsz3fEqppsWia9vIj/8HhjWPt6E6o9X4KJ4ztqOsfobMg4eepqOuJmJhMWOt2cn7dMAuf0SdAG6Y7xeMuTge1+iiT6dFFwdJ4jeIInH3l2Pb2iIRqEbd+vLbkhlO8wghlJiiBARtNdFLs7ePjUyDIgJtwjs27gGjZAx8mT8gjZe7wV8uazElS4tVijRsHZPS7ncrqmT7JXCJggliRG/yASdF7IKvNgCWKg/29tyoUvtY9hDhB/p+oc/L2YtkoGo3SQL4LiAfpCcSTFKTmNYIXTOFPS+caolMerOGYmGR2Pu70/i9Gz2lQzbgJxgdth7hR+LjdTUR0g==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR0402MB2760.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f736aaf8-54f2-42e5-1239-08d87b487b2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2020 13:50:50.6597
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vlgfkcaWE6WPQHDsROeEfqGibsvOHImed0osTfan61M9WpXzhZuxCZFYws8a7GaNOoUlQM0rN04imv2YlqZaxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2936
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgTHVjYXMsDQoNCj4gU3ViamVjdDogUmU6IFtQQVRDSCAwMC8xMV0gaS5NWDhNTSBwb3dlciBk
b21haW4gc3VwcG9ydA0KPiANCj4gSGkgUGVuZywNCj4gDQo+IE9uIE1pLCAyMDIwLTEwLTE0IGF0
IDAxOjIzICswMDAwLCBQZW5nIEZhbiB3cm90ZToNCj4gWy4uLl0NCj4gPiA+ID4gPiA+IDMuIGVp
dGhlciA4TU0sIDhNTiwgb3IgOE1QLCB0aGUgcG93ZXIgZG9tYWluIGRlc2lnbiBpcw0KPiA+ID4g
PiA+ID4gZGlmZmVyZW50LCBJIGFtIG5vdA0KPiA+ID4gPiA+IHN1cmUgaWYgaXQgaXMgdGhlIGdv
b2QgdG8gYWRkIGh1bmRyZWRzIGxpbmUgb2YgY29kZSBpbiBHUEN2Mg0KPiA+ID4gPiA+IGVhY2gg
dGltZQ0KPiA+ID4gPiA+ID4gICBhIG5ldyBTT0MgaXMgYWRkZWQuDQo+ID4gPiA+ID4NCj4gPiA+
ID4gPiBJIGRvbid0IGJ1eSBpbnRvIHRoaXMgYXJndW1lbnQuIFdlIGhhdmUgbG90cyBvZiBkcml2
ZXJzIGluIHRoZQ0KPiA+ID4gPiA+IExpbnV4IGtlcm5lbCB0aGF0IHJlcXVpcmUgc29tZSBjaGFu
Z2VzIGZvciBuZXcgU29DIGdlbmVyYXRpb25zLA0KPiA+ID4gPiA+IHRoYXQncyB3aGF0IExpbnV4
IGRyaXZlcnMgYXJlIGZvci4gVGhlIGNvbXBsZXhpdHkgb2YgdGhlDQo+ID4gPiA+ID4gaGFyZHdh
cmUgZG9lc24ndCBkaXNhcHBlYXIganVzdCBiZWNhdXNlIHlvdSBwdXNoIHNvbWUgb2YgdGhlDQo+
ID4gPiA+ID4gZHJpdmVyIGJpdHMgaW50byBURi1BLCB5b3UganVzdCBoYW5kbGUgdGhlIGNvbXBs
ZXhpdHkgYXQgYQ0KPiA+ID4gPiA+IGRpZmZlcmVudCBwYWxjZSBhbmQgSU1ITyB0aGF0IHRoZSB3
cm9uZyBwbGFjZS4gVGhlIHBvd2VyIGRvbWFpbnMNCj4gPiA+ID4gPiBoYXZlIGNvbXBsZXggaW50
ZXJhY3Rpb25zIHdpdGggb3RoZXIgZHJpdmVycyBpbiB0aGUgTGludXgNCj4gPiA+ID4gPiBzeXN0
ZW0sIHNvIGRlYnVnZ2luZyBhbmQgZGVwbHlvbmcgZml4ZXMgaXMgbXVjaCBlYXNpZXIgd2hlbiB0
aGUNCj4gPiA+ID4gPiBwb3dlciBkb21haW4gaGFuZGxpbmcgaXMgZnVsbHkgZG9uZSBieSBhIGtl
cm5lbA0KPiA+ID4gZHJpdmVyLg0KPiA+ID4gPiBBY3R1YWxseSwgZHVlIHRvIHRoZSBzZWN1cml0
eSByZXF1aXJlbWVudCBmcm9tIG90aGVyIHN5c3RlbQ0KPiA+ID4gPiBzb2x1dGlvbiBwcm92aWRl
ciwgZm9yIGV4YW1wbGUsIE1pY3Jvc29mdCBBenVyZSBTcGhlcmUsIGl0IGhhcw0KPiA+ID4gPiBz
dHJpY3QgcmVxdWlyZW1lbnQgZm9yIHBvd2VyIGRvbWFpbiB0byBiZSBjb250cm9sbGVkIGJ5IHNl
Y3VyZQ0KPiA+ID4gPiBzdWJzeXN0ZW0oZWl0aGVyDQo+ID4gPiBURi1BLCBURUUgb3IgZGVkaWNh
dGVkIHNlY3VyZSBkb21haW4gY29udHJvbGxlcikuDQo+ID4gPiA+IFNhbWUgcmVxdWlyZW1lbnQg
Zm9yIHJlc2V0IGNvbnRyb2wsIGFuZCBzeXN0ZW0gY3JpdGljYWwgY2xvY2sgY29udHJvbC4NCj4g
PiA+DQo+ID4gPiBZZXMsIEknbSBhd2FyZSBvZiB0aG9zZSByZXF1aXJlbWVudHMsIGJ1dCB0byBz
YXRpc2Z5IHRob3NlIHlvdSBuZWVkDQo+ID4gPiBhIGZ1bGwgaW1wbGVtZW50YXRpb24gb2YgYWxs
IHRob3NlIHBhcnRzIGluIHRoZSBzZWN1cmUgc3Vic3lzdGVtLg0KPiA+ID4gRG9pbmcgaXQganVz
dCBmb3IgdGhlIHBvd2VyIGRvbWFpbnMgYWRkcyBjb21wbGV4aXR5IGZvciBubyBnYWluLCBhcw0K
PiA+ID4geW91IHN0aWxsIHdvbid0IGJlIGFibGUgdG8gbWVldCBhbGwgdGhlIHJlcXVpcmVtZW50
cyBhbmQgZnJhbmtseSBJDQo+ID4gPiBkb24ndCB0aGluayB0aGlzIGlzIGEgcmVhbGlzdGljIGdv
YWwgdG8gYWNoaWV2ZSB3aXRoIHRoZSBjdXJyZW50IGkuTVg4TQ0KPiBmYW1pbHkgb2YgU29Dcy4N
Cj4gPg0KPiA+IEF0IGxlYXN0IHdlIGFyZSBtb3ZpbmcgdG8gdGhhdCBkaXJlY3Rpb24uDQo+IA0K
PiBUbyBtZSBpdCBzZWVtcyBsaWtlIHRoZSBjdXJyZW50IHdheSAoY3VzdG9tIFRGLUEgaW50ZXJm
YWNlIGFuZA0KPiBpbXBsZW1lbnRhdGlvbikgaXMgb25lIHN0ZXAgaW4gdGhlIHJpZ2h0IGRpcmVj
dGlvbiwgYnV0IHR3byBzdGVwcyBiYWNrd2FyZHMgaW4NCj4gdGVybXMgb2YgY29tcGxleGl0eS4N
Cj4gDQo+ID4gPiBNZWV0aW5nIHRob3NlIHJlcXVpcmVtZW50cyBuZWVkcyBhIGZ1bGx5IHN5c3Rl
bSBhcHByb2FjaCB3aGVyZSB0aGUNCj4gPiA+IHNlY3VyZSBzdWJzeXN0ZW0gcGFydHMgYXJlIG1h
ZGUgc3VmZmljaWVudGx5IGluZGVwZW5kZW50IGZyb20gdGhlDQo+ID4gPiBub24tIHNlY3VyZSBw
YXJ0cyBvbiBhIGhhcmR3YXJlIGxldmVsLCB3aGljaCBJIGRvbid0IHNlZSBvbiB0aGUNCj4gPiA+
IGkuTVg4TSBTb0MgYW5kIGhhcmR3YXJlIGRlc2lnbiBndWlkZS4NCj4gPg0KPiA+IENTVSBjb3Vs
ZCByZXN0cmljdCB0aGUgYWNjZXNzIHBlcm1pc3Npb24uDQo+IA0KPiBXaGlsZSB0aGlzIGlzIHRy
dWUsIG15IGFyZ3VtZW50IGlzIG11Y2ggYnJvYWRlciBhbmQgbm90IG9ubHkgZm9jdXNlZCBvbg0K
PiBvbi1Tb0MgcGVyaXBoZXJhbHMuIEZvciBleGFtcGxlIHNvbWUgb2YgdGhlIHBvd2VyIGRvbWFp
bnMgbmVlZCBkaWZmZXJlbnQNCj4gdm9sdGFnZXMgZm9yIHNwZWNpZmljIHBlcmZvcm1hbmNlIHN0
YXRlcywgd2hpY2ggbWVhbnMgeW91IG5lZWQgdG8NCj4gY29tbXVuaWNhdGUgd2l0aCBhIGV4dGVy
bmFsIFBNSUMgb3Igb3RoZXIgdm9sdGFnZSByZWd1bGF0b3IsIHdoaWNoIGluIHR1cm4NCj4gbWVh
bnMgeW91IG5lZWQgdG8gc2V0IGFzaWRlIHRoZSBuZWNlc3NhcnkgaTJjIGJ1cyBhbmQvb3IgR1BJ
TyBiYW5rcw0KPiByZXF1aXJlZCBmb3IgdGhpcyBjb21tdW5pY2F0aW9uIGF0IHN5c3RlbSBkZXNp
Z24gdGltZSwgc28gaXQgaXNuJ3Qgc2hhcmVkDQo+IGJldHdlZW4gVEYtQSBhbmQgdGhlIHJpY2gg
T1MuIEkgZG9uJ3Qgc2VlIHRoaXMgaW4gYW55IG9mIHRoZSBpLk1YOE0gZGVzaWducy4NCj4gDQo+
ID4gPiA+IEZvciBOWFAgaS5NWDhNIGZhbWlseSwgaXQgaXMgb2sgdG8gaW1wbGVtZW50IGluIGxp
bnV4IGtlcm5lbCwganVzdA0KPiA+ID4gPiBhIHRyYWRlb2ZmIHRvIGZpbmQgb3V0IGEgcGxhY2Ug
dG8gaGlkZSB0aGUgY29tcGxleGl0eSBeX14uDQo+ID4gPiA+DQo+ID4gPiA+IEJUVywgZm9yIHZp
cnR1YWxpemF0aW9uIHN1cHBvcnQsIGl0IGlzIGJldHRlciB0byBwdXQgdGhlIHBvd2VyDQo+ID4g
PiA+IGRvbWFpbiBpbiBhIGNlbnRyYWwgcGxhY2UgdG8gc2ltcGxpZnkgdGhlIFZNIGltcGxlbWVu
dGF0aW9uLg0KPiA+ID4NCj4gPiA+IFNhbWUgYXMgYWJvdmUuIElmIHlvdSBjYW4gbWFrZSBhbGwg
dGhlIHJlbGV2YW50IGJpdHMgKGNsb2NrLCByZXNldCwNCj4gPiA+IHBvd2VyLWRvbWFpbiwgcmVn
dWxhdG9yKSBhdmFpbGFibGUgdmlhIGEgdmlydHVhbGl6YXRpb24gZnJpZW5kbHkNCj4gPiA+IEFQ
SSwgdGhlbiBJIHdvdWxkIHNlZSBhIHBvaW50IGluIGFkZGluZyBjb21wbGV4aXR5IGZvciB0aGlz
DQo+ID4gPiBhYnN0cmFjdGlvbi4gQXMgbG9uZyBhcyB0aGlzIGFkZGVkIGFic3RyYWN0aW9uIG9u
bHkgc29sdmVzIGEgdmVyeQ0KPiA+ID4gdGlueSBiaXQgb2YgdGhlIG92ZXJhbGwgcGljdHVyZSwg
SSBqdXN0IGRvbid0IHNlZSB0aGUgcG9pbnQgaW4gdGhlIGFkZGVkDQo+IGNvbXBsZXhpdHkgYW5k
IChmcm9tIGEgTGludXggUG9WKSBvYmZ1c2NhdGlvbi4NCj4gPg0KPiA+IENvdWxkIHdlIHVzZSBT
Q01JIGZvciBwb3dlciBkb21haW4sIHN5c3RlbSBjcml0aWNhbCBjbG9ja3MsIHNtYw0KPiA+IHdh
dGNoZG9nIGFuZCBldGM/DQo+IA0KPiBJZiB5b3UgY291bGQgZGVtb25zdHJhdGUgYSB3b3JraW5n
IHNvbHV0aW9uIHdpdGggYWxsIHRob3NlIHBpZWNlcyBoaWRkZW4NCj4gYmVoaW5kIGEgc3RhbmRh
cmQgU0NNSSBpbnRlcmZhY2UsIHRoaXMgd291bGQgbWFrZSBmb3IgYSBtdWNoIG1vcmUNCj4gY29t
cGVsbGluZyBzdG9yeSBzdXBwb3J0aW5nIHRoZSBzZWN1cmUgc3Vic3lzdGVtIGFyZ3VtZW50Lg0K
PiANCj4gPiBPciB3ZSBzdXBwb3J0IHR3byBhcHByb2FjaGVzLCBvbmUgaXMgbGV0IExpbnV4IGNv
bnRyb2wgZXZlcnl0aGluZywgdGhlDQo+ID4gb3RoZXIgaXMgdXNpbmcgU0NNSS4NCj4gPg0KPiA+
IFRob3VnaHRzPw0KPiANCj4gSSB3b3VsZG4ndCBiZSBvcHBvc2VkIHRvIHN1Y2ggYSBzb2x1dGlv
bi4gSWYgeW91IGNhbiBwdXQgYWxsIHRoaXMgYmVoaW5kIGENCj4gc3RhbmRhcmQgU0NNSSBpbnRl
cmZhY2UsIEkgZ3Vlc3Mgd2Ugd291bGRuJ3QgbmVlZCB0d28gZGlmZmVyZW50IFNvQyBzcGVjaWZp
Yw0KPiBkcml2ZXJzIGZvciB0aGUgc2FtZSBwdXJwb3NlLCBzbyB3ZSBjb3VsZCBlYXNpbHkgaGF2
ZSBhIExpbnV4IGZ1bGwtY29udHJvbA0KPiBzb2x1dGlvbiAoaS5lLiB0aGlzIHBhdGNoc2V0KSBj
b2V4aXN0IHdpdGggYSBTQ01JIGJhc2VkIGltcGxlbWVudGF0aW9uLA0KPiBwb3NzaWJseSB3aXRo
IGp1c3QgYSBzbGlnaHRseSBkaWZmZXJlbnQgYmFzZSBTb0MgRFQgd2l0aCBhbGwgdGhlIHBvd2Vy
IGRvbWFpbnMsDQo+IGNsb2NrcyBhbmQgb3RoZXIgc3lzdGVtIGxldmVsIGNvbnRyb2wgc3R1ZmYg
YmVoaW5kIFNDTUkuDQo+IA0KPiBXaGF0IEknbSBzdHJvbmdseSBvcHBvc2VkIHRvIGlzIGhhdmlu
ZyBhIGN1c3RvbSBURi1BIGludGVyZmFjZSBhbmQgYWxsIHRoZQ0KPiBhZGRlZCBjb21wbGV4aXR5
IGZvciBsaXR0bGUgdG8gbm8gZ2FpbiBpbiBhY3R1YWwgc3lzdGVtIHNlY3VyaXR5Lg0KDQpVbmRl
cnN0YW5kLiBUaGVyZSBhcmUgdHJ1bHkgdGhlIFNvQyBkZXNpZ24gbWlnaHQgbm90IGZpdCB3ZWxs
IHRvIHByb3RlY3QNCmFsbCB0aGUgc3R1ZmYuDQoNCkl0IGlzIGdvb2QgdGhhdCB5b3UgZGlkIHRo
aXMgcGF0Y2hzZXQuIFZvdGUgZm9yIHlvdSB0byBhZGQgbW9yZSBzdXBwb3J0DQpvbiBpLk1YLg0K
DQpZb3VyIHBhdGNoc2V0IG5vdCBjb25mbGljdCB3aXRoIFNDTUksIGFzIHlvdSBzYWlkLCB0aGlz
IGlzIHRydWUuDQoNClBsZWFzZSBjb250aW51ZSB5b3VyIGVmZm9ydC4NCg0KVGhhbmtzLA0KUGVu
Zy4NCg0KPiANCj4gUmVnYXJkcywNCj4gTHVjYXMNCg0K

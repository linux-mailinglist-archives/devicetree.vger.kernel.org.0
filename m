Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 864842883EC
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 09:51:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732025AbgJIHvl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 03:51:41 -0400
Received: from mail-db8eur05on2081.outbound.protection.outlook.com ([40.107.20.81]:13153
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1729278AbgJIHvk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 9 Oct 2020 03:51:40 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i5uD40ShfPeiF5ovOTZXNgd6QXOX00QuHVgw+7JGMf9nGftdu3xKtcoCJrFf5GIfxDF1aUAblBlOJSkQH0KdxquZ0aATWsKyet1PejC+NjNoYzssbceLuiWgpSCP0QthzTWx5DKjwAunHfAS1XX2dKkpYxk6rPCzZSxMOqkKWaVc0XCXKVkDQO9XCIuNtXRIkT8CFLFo3u1I3e/0IDQ+ARI1DrAE1uZLjNAmRRRYcacfdlSs2yMjywv6qLOFOvIo/8rRvoSb1EGpDVzI/nlDdClUjtBcyMe9Oh3wlUqelkz1FFoBBe9YLDPQv+T9nLxV6Sk4Hy4AuyMXj3YVVl1HPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZxJIfzscI5aQdLr0l9Nw8hyHvbDuF1G4nKjnsro1u4M=;
 b=O6SM+HWv6Z3MdiTXk3tHnIwcL6AaRRjb+4oEqciw0lkgcVzEdAfjq5R6OMhOkm3EgB7OvNw4i/4DqIvDkA4ACDr1dKp4nG99Vo0oYruYLHKkb6pXbqrZ2iWlc/JQ9A+X32cxxZ6TmWmxJNxzMoU66Vms1LmpCw+pcIOY0xdhniAbof/rmXAtc6hCLujeR92VeAj86cooCCvF0p9TRAUXaTgTApTd4R/JFwrdmWQHz5NgxbBmjQNgbjsa7kbWcr+KvCqZRAb32II9pz8IPPKY3M7GRwVJM9V/JN8g6Hve1EIyJKmWEPqXNVW2lxYfynIaIdB8jZcZS9yD7OOx4I/SMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZxJIfzscI5aQdLr0l9Nw8hyHvbDuF1G4nKjnsro1u4M=;
 b=L08EnzgljEU/KLbkhGksQYvA77aWGtE7ADivNiO8kKKFXJopOJCw1A7glsZ83R/VKJk6EC0ez3U6+zkW+yiv6qyqnyfFQRazN2RjRF+EDBn/TrjfSySFmDum9MF7USdJDtZ2LEIeiV0InjeOOmnSZ0yylwxGSbNIywD+o0g1feQ=
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com (2603:10a6:208:c5::20)
 by AM8PR04MB7828.eurprd04.prod.outlook.com (2603:10a6:20b:24e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.21; Fri, 9 Oct
 2020 07:51:37 +0000
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3]) by AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3%7]) with mapi id 15.20.3455.024; Fri, 9 Oct 2020
 07:51:37 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     Marek Vasut <marex@denx.de>, Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 04/11] soc: imx: gpcv2: wait for ADB400 handshake
Thread-Topic: [PATCH 04/11] soc: imx: gpcv2: wait for ADB400 handshake
Thread-Index: AQHWl0FkywkQIHCrGU2Snqt9jDz3LqmBWkWAgAACP4CAAAEEgIANRTvAgABJ7QCAAAU18A==
Date:   Fri, 9 Oct 2020 07:51:36 +0000
Message-ID: <AM0PR04MB4915FC935AB98EED05DCD0F787080@AM0PR04MB4915.eurprd04.prod.outlook.com>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-5-l.stach@pengutronix.de>
 <818925c0-b45f-67b4-02a1-8db49ccc491e@denx.de>
 <9533c2b81a9866aec45d2604befe7cdda79d0679.camel@pengutronix.de>
 <de6d73ea-c7dc-6405-29fb-7975368424c0@denx.de>
 <AM0PR04MB4915964704698912AC3AEFF487080@AM0PR04MB4915.eurprd04.prod.outlook.com>
 <e13b01ea-d0a0-7492-3b9c-88515a060405@denx.de>
In-Reply-To: <e13b01ea-d0a0-7492-3b9c-88515a060405@denx.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: denx.de; dkim=none (message not signed)
 header.d=none;denx.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 628508bf-00bb-4b8f-e297-08d86c282681
x-ms-traffictypediagnostic: AM8PR04MB7828:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM8PR04MB7828A709CE2CF271F2FEA51087080@AM8PR04MB7828.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QxSLEXM99oHYwCbocXkfUvpdWkxnvszEStguAAoLeNljnZ46V73MxbTDOp8KnSAEJg43V/PjXuPL7fE2tDZPYVNKHP0c/g0LQpyUlzn4eqiYXTYydVoPAUKAyQJbFV00DvluZTFaOpsQ6ziHVFsng2WhARcPb6gs/5XaSfIz8C41zoWv0hTDmY/55mD25VKFkSwbmjieTfqH0c1ZvdOERHfZsfMTbs01vbtqgikxcnx1DJUqb1O5SfBzEOpicUvMEUEfKZ6o0Pkcbcbp/oTlp8Qx6PYaWC8zVset/UuCYtOJdnU8BwCHI1LVcpu1shovdb9Sq3Zo5h/DYRYqlLEYYg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB4915.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(9686003)(478600001)(316002)(52536014)(110136005)(76116006)(66946007)(55016002)(54906003)(33656002)(8676002)(8936002)(26005)(71200400001)(4326008)(53546011)(6506007)(66476007)(83380400001)(64756008)(66556008)(86362001)(2906002)(186003)(7416002)(5660300002)(7696005)(66446008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: S9nPbcHPcV55hAAWBsPULxxQM520Ohi0HaYhZyNGCyCchlNbba4Rq+as0GCgn3hjmIM9h5Xxx1RlHgpCjAvyS8625nd1+dgIGZdnBZ7gl/CUWgw5e4SPySr3qsSVa1NiMNf3LwpjMBygnqN6D393IVHYlglTI9ZhpU/YtRCHDtO75eDDsrCLVGz2rOtHwshyx3Cle/nl5P28y1KETMyHlQjp5GrcYhRhZJQXxdJmaXrAx4U+YJoHQ6FO+fS3AgC5agOuMFHcnp8RCVlO8HSffE+WG/i2bhbTtsvZlevwKr9IfOkFUpzZ7ifoamnk7Hii6XITY5XPWKwRWVUNoxO6cvc5nCLVbCJ3m3NzzjI6cqX//7jfgeuuPQJx8S3jJ4h0evol6d4THaLS+YfrTGe+EDVjbfcIC4je6Jfs1++hr4Ir9D5ZfGW1BTgXKT6J9x3GFiH/OicVJgLhWIlG7oW6eATkdac3RU/Y0OSCTacxumlYnWAld9/VnDzXgu1Q2MWUsTQSBHJPuf2yD3bFsPsfGyG1cieyaoIUCOpM6Tzx1nByYNctntgrFl9R4SusfoFwu+kMjnf8DJnrNs2CVlv3VFemSt82EQ/ZTkhSS06DgR6P11WxQtLJuBTbOK6HV/rYue5LZSwtj7bjsxnhQu1E7A==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4915.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 628508bf-00bb-4b8f-e297-08d86c282681
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2020 07:51:37.1824
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D8wJy1OCWl2tbsYqwiSgyJ0mUXAdYAxyPd91ScHLS8hLd5DsD2bCiHXBg0HmpVzZzsKClrMgc9tblPHy8r5cAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7828
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFyZWsgVmFzdXQgW21h
aWx0bzptYXJleEBkZW54LmRlXQ0KPiBTZW50OiBGcmlkYXksIE9jdG9iZXIgOSwgMjAyMCAzOjI3
IFBNDQo+IFRvOiBKYWNreSBCYWkgPHBpbmcuYmFpQG54cC5jb20+OyBMdWNhcyBTdGFjaCA8bC5z
dGFjaEBwZW5ndXRyb25peC5kZT47DQo+IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz47
IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+DQo+IENjOiBkZXZpY2V0cmVlQHZnZXIu
a2VybmVsLm9yZzsgRnJpZWRlciBTY2hyZW1wZg0KPiA8ZnJpZWRlci5zY2hyZW1wZkBrb250cm9u
LmRlPjsgcGF0Y2h3b3JrLWxzdEBwZW5ndXRyb25peC5kZTsgZGwtbGludXgtaW14DQo+IDxsaW51
eC1pbXhAbnhwLmNvbT47IGtlcm5lbEBwZW5ndXRyb25peC5kZTsgRmFiaW8gRXN0ZXZhbQ0KPiA8
ZmVzdGV2YW1AZ21haWwuY29tPjsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMDQvMTFdIHNvYzogaW14OiBncGN2Mjogd2FpdCBmb3Ig
QURCNDAwIGhhbmRzaGFrZQ0KPiANCj4gT24gMTAvOS8yMCA1OjA1IEFNLCBKYWNreSBCYWkgd3Jv
dGU6DQo+IFsuLi5dDQo+IA0KPiA+Pj4+PiBAQCAtMTc2LDkgKzE4MCwxOSBAQCBzdGF0aWMgaW50
IGlteF9wZ2NfcG93ZXJfdXAoc3RydWN0DQo+ID4+IGdlbmVyaWNfcG1fZG9tYWluICpnZW5wZCkN
Cj4gPj4+Pj4gIAkJCSAgIEdQQ19QR0NfQ1RSTF9QQ1IsIDApOw0KPiA+Pj4+Pg0KPiA+Pj4+PiAg
CS8qIHJlcXVlc3QgdGhlIEFEQjQwMCB0byBwb3dlciB1cCAqLw0KPiA+Pj4+PiAtCWlmIChkb21h
aW4tPmJpdHMuaHNrKQ0KPiA+Pj4+PiArCWlmIChkb21haW4tPmJpdHMuaHNrcmVxKSB7DQo+ID4+
Pj4+ICAJCXJlZ21hcF91cGRhdGVfYml0cyhkb21haW4tPnJlZ21hcCwgR1BDX1BVX1BXUkhTSywN
Cj4gPj4+Pj4gLQkJCQkgICBkb21haW4tPmJpdHMuaHNrLCBkb21haW4tPmJpdHMuaHNrKTsNCj4g
Pj4+Pj4gKwkJCQkgICBkb21haW4tPmJpdHMuaHNrcmVxLCBkb21haW4tPmJpdHMuaHNrcmVxKTsN
Cj4gPj4+Pj4gKw0KPiA+Pj4+PiArCQlyZXQgPSByZWdtYXBfcmVhZF9wb2xsX3RpbWVvdXQoZG9t
YWluLT5yZWdtYXAsDQo+ID4+IEdQQ19QVV9QV1JIU0ssDQo+ID4+Pj4+ICsJCQkJCSAgICAgICBy
ZWdfdmFsLA0KPiA+Pj4+PiArCQkJCQkgICAgICAgKHJlZ192YWwgJiBkb21haW4tPmJpdHMuaHNr
YWNrKSwNCj4gPj4+Pj4gKwkJCQkJICAgICAgIDAsIFVTRUNfUEVSX01TRUMpOw0KPiA+Pj4+PiAr
CQlpZiAocmV0KSB7DQo+ID4+Pj4+ICsJCQlkZXZfZXJyKGRvbWFpbi0+ZGV2LCAiZmFpbGVkIHRv
IHBvd2VyIHVwIEFEQjQwMFxuIik7DQo+ID4+Pj4NCj4gPj4+PiBUaGUgQURCNDAwIGlzIGEgYnVz
IGJyaWRnZSwgc28gdGhlIGJ1cyBpcyBiZWluZyBhdHRhY2hlZCBoZXJlLCBub3QNCj4gPj4+PiBw
b3dlcmVkIHVwLCByaWdodCA/DQo+ID4+Pg0KPiA+Pj4gVGhlIGJpdHMgaW4gdGhlIFBXUkhTSyBy
ZWdpc3RlciBhcmUgY2FsbGVkICJwb3dlciBkb3duIiBiaXRzLCBzbyBJDQo+ID4+PiBrZXB0IHRo
aXMgbm9tZW5jbGF0dXJlLiBBbHNvIEkgdGhpbmsgdGhlIEFEQjQwMCBpcyBtb3N0bHkgaXNvbGF0
aW5nDQo+ID4+PiB0aGUgYnVzIGluIHRoZSBwb3dlciBkb21haW5zIGZyb20gdGhlIHJlc3Qgb2Yg
dGhlIE5vQywgImF0dGFjaGluZyINCj4gPj4+IG9mIHRoZSBidXMgaXMgcmVhbGx5IGRpc2FibGlu
ZyB0aGUgaXNvbGF0aW9uLg0KPiA+Pj4NCj4gPj4+IEFzIHRoZXJlIGFyZSBtdWx0aXBsZSB2YWxp
ZCBuYW1pbmcgY2hvaWNlcyBJIGtlcHQgdGhlIG5hbWluZyBmcm9tDQo+ID4+PiB0aGUgUk0uDQo+
ID4+DQo+ID4+IE1heWJlIE5YUCBjYW4gZmluYWxseSBleHBsYWluIHdoYXQgdGhlc2UgYml0cyBy
ZWFsbHkgZG8gPw0KPiA+DQo+ID4gVGhpcyBiaXQgaXMgdXNlZCB0byBzeW5jIHRoZSBBREI0MDAg
YnJpZGdlIHRvIGEga25vd24gc3RhdHVzIGJlZm9yZSBNSVggc2lkZQ0KPiBwb3dlciBkb3duICYg
aXNvbGF0aW9uLg0KPiA+IERldGFpbGVkIGluZm8gY2FuIGJlIGZpbmQgaW4gQVJNJ3MgQURCNDAw
IFRSTS4NCj4gDQo+IElzIHRoaXMgZG9jdW1lbnRhdGlvbiBwdWJsaWNseSBhdmFpbGFibGUgPw0K
DQpPb2gsIFNvcnJ5LCBJdCBzZWVtcyBjb25maWRlbnRpYWwuIFNvbWUgaW5mbyBzaGFyZWQgYmVs
b3c6DQoNCldoZW4gdGhlIHBvd2VyZG93biBpbnRlcmZhY2UgaXMgdXNlZCB0aGVuIHRoZSBicmlk
Z2UgbXVzdCBlbnRlciB0aGUgaWRsZSBzdGF0ZSBiZWZvcmUgZWl0aGVyDQpkb21haW4gY2FuIGJl
IHJlc2V0IG9yIHBvd2VyZWQgZG93bjoNCjEuIFRoZSBBREItNDAwIG11c3QgYmUgcXVpZXNjZW50
IGJlZm9yZSBhIHBvd2VyZG93biByZXF1ZXN0LiBJdCBpcyBhIHN5c3RlbSByZXNwb25zaWJpbGl0
eQ0KdG8gZW5zdXJlIHRoYXQgYWxsIHRyYW5zYWN0aW9ucyBhcmUgY29tcGxldGVkIGFuZCBubyBu
ZXcgdHJhbnNhY3Rpb25zIGFyZSBzZW50IHRvIEFEQi00MDAuDQoyLiBXaGVuIHRoZSBBREItNDAw
IHJlY2VpdmVzIHRoZSBwb3dlcmRvd24gcmVxdWVzdCBzaWduYWwsIHB3cmRucmVxbiwgTE9XIGl0
IGVuc3VyZXMNCnRoYXQgYWxsIEZJRk9zIGFyZSBlbXB0eSwgcG9pbnRlcnMgYXJlIHJlc2V0IHRv
IHplcm8sIGFuZCBubyBmYWxzZSB0cmFuc2FjdGlvbnMgY2FuIGJlDQpnZW5lcmF0ZWQuDQozLiBX
aGVuIHRoZSBBREItNDAwIGNvbXBsZXRlcyB0aGUgaW50ZXJuYWwgc2h1dGRvd24gcHJvY2Vzcywg
aXQgc2V0cyB0aGUgcHdyZG5hY2tuDQpzaWduYWwgTE9XLiBUaGUgaW50ZXJmYWNlIGlzIGluIGlk
bGUgc3RhdGUgYW5kIHBvd2VyZG93biBjYW4gY29tbWVuY2UuDQoNCkJSDQpKYWNreSBCYWkNCg==

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 70996814BC
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 11:08:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727158AbfHEJIV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 05:08:21 -0400
Received: from mail-eopbgr20047.outbound.protection.outlook.com ([40.107.2.47]:34439
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726454AbfHEJIV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 5 Aug 2019 05:08:21 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DWQl43zYt+mve+mcxVoJPD9dPl3lOnNaSiwEaj/Ow+3J7koi+YAsDDmfjW5xyzp4fVJvrzeSx3s1bsD1r6APxlFnyvQrRYh9WFUhJwOUbN86vf+AQexgybEsSSCnOBwRQ8d71mV4Wje+tRU0+4O/TxMcf8QFlotbEEJ9i5FEtRV4hBPuOhVKMlVKMBP/ZuiMbNHOQeIlp2d5t4MbQB7eF4udPBl0MSYNe3KqvSYnpm7d+Utoyv1+vZVySixBf05r0fptbqC82iwBpu21LIrgEU4Lqmx7rWeC+9N64UvJXK+U80M6pvMuFSHkDjo10VxBf1n5TJQl4ia+vpxIbcwsng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lOzIiE4x1sQ+fFeYmzaB54pnDWh7/NHS25RmKk8deVw=;
 b=n0Dvw4YyrTKeA/ctFeBmdOnlMAk43M6OPi630907dEkncV1ZaXT3GdVuMyJXF5TM2GrbAIUtRb96v41vW3DBdJrlLtOlx7Vl80mBcyj5ojNIAn7BrCFkMi0p6IdQv/35TqJ4IZoyw/ChA7fuiyoBCxjY2eUnfiW62Gs0S3DPbC68NDp5OODcPpCsOkESjY4wcGffM/eaAozUrny0Ssxn4frVWw8o/rDCy2y+rcMdqmRqqlgvAk5OCSWc6kfsF8alkTp+SxzBF5Rhf6BOsXOb6ypE0R0tp16zcRtRlQFcxI+051iVrnQBvxLnoC67JAckfCNzggEpzLHpGMiLo6vgvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lOzIiE4x1sQ+fFeYmzaB54pnDWh7/NHS25RmKk8deVw=;
 b=hpX4lyHUyItkJ8kbf/i9jLDhEXo7u1nIqBlppzS81LU5luJCmCtArRjidkqY5R0l9zxB0DaJThLG21R4AcyVEuy5oEkWrKqt8HmUeB2smGDp16wBp+Q38QiQgmKjZ3jZe1QEmC1/LKW272XxEalyCf1pvpFq+/AubjjbBs6f/zY=
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com (10.171.182.24) by
 VI1PR04MB4288.eurprd04.prod.outlook.com (52.134.31.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14; Mon, 5 Aug 2019 09:08:18 +0000
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339]) by VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339%4]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 09:08:17 +0000
From:   Ashish Kumar <ashish.kumar@nxp.com>
To:     "broonie@kernel.org" <broonie@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>, Han Xu <xhnjupt@gmail.com>,
        Rob Herring <robh@kernel.org>
Subject: RE: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add
 ls2080a compatibility string to bindings
Thread-Topic: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add
 ls2080a compatibility string to bindings
Thread-Index: AQHVJo/VeuuMDsBciEWXxGwYBY/pIqbC1w+AgCPVywCABeCGcA==
Date:   Mon, 5 Aug 2019 09:08:17 +0000
Message-ID: <VI1PR04MB4015C2C9407598EFEEB4CB2D95DA0@VI1PR04MB4015.eurprd04.prod.outlook.com>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-2-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200837.GA7806@bogus>
 <CA+EcR23hhD2=abMtNGDoW1LtXSE4qfjTy1uzU7sgrbi7W=KSbw@mail.gmail.com>
In-Reply-To: <CA+EcR23hhD2=abMtNGDoW1LtXSE4qfjTy1uzU7sgrbi7W=KSbw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ashish.kumar@nxp.com; 
x-originating-ip: [92.120.0.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f2f201b3-d14c-4fe6-e49a-08d7198474a3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB4288;
x-ms-traffictypediagnostic: VI1PR04MB4288:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <VI1PR04MB42888D61404B39C208AF427895DA0@VI1PR04MB4288.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(136003)(39860400002)(396003)(346002)(376002)(366004)(13464003)(189003)(199004)(74316002)(7696005)(66066001)(4326008)(486006)(186003)(71200400001)(71190400001)(476003)(33656002)(7736002)(2351001)(2501003)(54906003)(53546011)(53936002)(25786009)(6506007)(26005)(446003)(305945005)(11346002)(6246003)(5660300002)(44832011)(102836004)(68736007)(76176011)(81166006)(9686003)(81156014)(14454004)(52536014)(1730700003)(6306002)(66946007)(66556008)(66476007)(76116006)(8676002)(55016002)(86362001)(6916009)(45080400002)(316002)(2906002)(229853002)(5640700003)(966005)(8936002)(256004)(6436002)(478600001)(64756008)(66446008)(99286004)(6116002)(3846002);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB4288;H:VI1PR04MB4015.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Hq6g3mkDo8SB31TSUfn9YNfFwjJAQSB+tel9pofX+rodRUTGZTKzRXFdPF+2M0Zhmo3SziiSNg1S4fy/V3fCsEQSM1xxY4BhcUiFwHQ8ZRk6GZL7aL2IDINE0Jn4dJDQwlCEL8Rgzoh+ciwbT2bLembZrMHAi2eDnkkXr8qSihVVHyUAIHmW1QkajumLAG8cF7HCU3uvEDapVBcy2txjIcwMFMrhfuR1U1YrgxyCPRppJYmCiaa450tgmbgsmqxqWnNi5STllhotUl5dwHJ/OnwQM/cnQSK5kAU0ES1buqteH+oq9kuOu6Mut3SJzwFOs7gSVw4Hxexz1Al4F+QrQO3io8rPPxdqaealGtLKRZhiui1MZNlcBC1d4MD+s+26URmiytYeW/4VycDb53NYYaOYNcm4Z10byt0VJvMJlAE=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2f201b3-d14c-4fe6-e49a-08d7198474a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 09:08:17.8300
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ashish.kumar@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4288
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSGFuIFh1IDx4aG5qdXB0
QGdtYWlsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEF1Z3VzdCAxLCAyMDE5IDg6NTMgUE0NCj4g
VG86IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+DQo+IENjOiBBc2hpc2ggS3VtYXIgPGFz
aGlzaC5rdW1hckBueHAuY29tPjsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7DQo+IGJicmV6
aWxsb25Aa2VybmVsLm9yZzsgS3VsZGVlcCBTaW5naCA8a3VsZGVlcC5zaW5naEBueHAuY29tPjsN
Cj4gYnJvb25pZUBrZXJuZWwub3JnOyBsaW51eC1tdGRAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGlu
dXgtYXJtLQ0KPiBrZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBbRVhUXSBS
ZTogW1BhdGNoIHYzIDEvMl0gZHQtYmluZGluZ3M6IHNwaTogc3BpLWZzbC1xc3BpOiBBZGQgbHMy
MDgwYQ0KPiBjb21wYXRpYmlsaXR5IHN0cmluZyB0byBiaW5kaW5ncw0KPiANCj4gQ2F1dGlvbjog
RVhUIEVtYWlsDQo+IA0KPiBPbiBUdWUsIEp1bCA5LCAyMDE5IGF0IDM6MDkgUE0gUm9iIEhlcnJp
bmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6DQo+ID4NCj4gPiBPbiBXZWQsIDE5IEp1biAyMDE5
IDE2OjQxOjUzICswNTMwLCBBc2hpc2ggS3VtYXIgd3JvdGU6DQo+ID4gPiBUaGVyZSBhcmUgMiB2
ZXJzaW9uIG9mIFFTUEktSVAsIGFjY29yZGluZyB0byB3aGljaCBjb250cm9sbGVyDQo+ID4gPiBy
ZWdpc3RlcnMgc2V0cyBjYW4gYmUgYmlnIGVuZGlhbiBvciBsaXR0bGUgZW5kaWFuLlRoZXJlIGFy
ZSBzb21lDQo+ID4gPiBvdGhlciBtaW5vciBjaGFuZ2VzIGxpa2UgUlggZmlmbyBkZXB0aCBldGMu
DQo+ID4gPg0KPiA+ID4gVGhlIGJpZyBlbmRpYW4gdmVyc2lvbiB1c2VzIGRyaXZlciBjb21wYXRp
YmxlICJmc2wsbHMxMDIxYS1xc3BpIiBhbmQNCj4gPiA+IGxpdHRsZSBlbmRpYW4gdmVyc2lvbiB1
c2VzIGRyaXZlciBjb21wYXRpYmxlICJmc2wsbHMyMDgwYS1xc3BpIg0KPiA+ID4NCj4gPiA+IFNp
Z25lZC1vZmYtYnk6IEt1bGRlZXAgU2luZ2ggPGt1bGRlZXAuc2luZ2hAbnhwLmNvbT4NCj4gPiA+
IFNpZ25lZC1vZmYtYnk6IEFzaGlzaCBLdW1hciA8YXNoaXNoLmt1bWFyQG54cC5jb20+DQo+ID4g
PiAtLS0NCj4gPiA+IHYzOg0KPiA+ID4gUmViYXNlIHRvIHRvcA0KPiA+ID4gdjI6DQo+ID4gPiBD
b252ZXJ0IHRvIHBhdGNoIHNlcmllcyBhbmQgcmViYXNpbmcgZG9uZSBvbiB0b3Agb2YgdHJlZQ0K
PiA+ID4NCj4gPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3NwaS1m
c2wtcXNwaS50eHQgfCAzICstLQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMiBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4NCj4gPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJp
bmcgPHJvYmhAa2VybmVsLm9yZz4NCj4gDQo+IEFja2VkLWJ5OiBIYW4gWHUgPGhhbi54dUBueHAu
Y29tPg0KDQpIZWxsbyBNYXJrLA0KDQpDb3VsZCB5b3UgcGxlYXNlIHNlbmQgdGhpcyBwYXRjaFsx
XSBmcm9tIHlvdXIgc3BpIHRyZWUsIEl0IGFwcGxpZXMgc2VhbWxlc3NseSBvbg0KaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYnJvb25pZS9zcGkuZ2l0Lw0K
DQpbMV06IGh0dHA6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMTE4NjM2Lw0KDQpSZWdh
cmRzIA0KQXNoaXNoDQo+IA0KPiA+DQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gTGludXggTVREIGRpc2N1c3Npb24gbWFpbGlu
ZyBsaXN0DQo+ID4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNv
bS8/dXJsPWh0dHAlM0ElMkYlMkZsaXN0cw0KPiA+IC5pbmZyYWRlYWQub3JnJTJGbWFpbG1hbiUy
Rmxpc3RpbmZvJTJGbGludXgtDQo+IG10ZCUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDDQo+ID4NCj4g
QXNoaXNoLkt1bWFyJTQwbnhwLmNvbSU3Q2ExNzJmMDQ1YWY3MTRlNDA4ZDBhMDhkNzE2OTQyNzUx
JTdDNjg2DQo+IGVhMWQzYmMNCj4gPg0KPiAyYjRjNmZhOTJjZDk5YzVjMzAxNjM1JTdDMCU3QzEl
N0M2MzcwMDI2OTc4ODE1MDAxNTkmYW1wO3NkYXRhPWYNCj4gOGkxeTRhYQ0KPiA+IGszZ1BudVhN
M2ZEMXhGUHA0UkI3R0VXWjQ1JTJCZVdQT29OU0ElM0QmYW1wO3Jlc2VydmVkPTANCg==

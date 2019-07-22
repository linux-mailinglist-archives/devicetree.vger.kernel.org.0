Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8F32B6FAE1
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 10:04:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727555AbfGVIE7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 04:04:59 -0400
Received: from esa1.hgst.iphmx.com ([68.232.141.245]:62111 "EHLO
        esa1.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726236AbfGVIE6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 04:04:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1563782698; x=1595318698;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=Ez7Lq00FF9xAXQodtJQcI02yAz6DUM8lVhq1NV7TGVA=;
  b=DXsKoZ29t+cfxPS7MzbRxzSm3rH+CgWyP/RllZqXvsX9ipbQ1oXSu87R
   yH9D4EFs8dWatJGHrT3PNyvBHIzBnQt6ftVIgnempSCy85mrQ/dfY28yp
   Xvi8bgx+O9tv2DXVjLzm0lE486WN5nDsFyNetC7ldZMWCbD/F1ydWHI/t
   BSTMFgctnrHcQCDbDFjvXhqdFjQ16mOYT74pGhAgIJfkqs19rvU5nHLn4
   fEVLGMXUcm1g/W+5aonZ4QFB3ySJOh/9H5yRTzFLUv+Byc4dlNoMeqSWy
   p9sKn/b32EHIXvI5lnhgDRD2qg1Gv04q4KVZ8QX2KlNxmn1Acjf9+lQ1Q
   A==;
IronPort-SDR: X3fsDRRDvBHvXMIrcA4pkWzs8Qw0CiB7/7K/qoGZmbBlifYMOhKm0sdPXYCSteBkXc6MF/WKS4
 Zn1goHglo3HwaU4TUzVuHPfqn0hXp8Cyv7MJFM5hPL+8GoltVv4G9V14CPq2zcyPuhA707kZsw
 D6iqy9uHmRtusS8IBuaW5UzQKCYqobpRcHuaadWGfNrWlcE02odbBP/9qc4G4yD8TapQ39j9w3
 2VrHTsVecBboZSgoMEHxU6ZanfL19R1Q3WrtfgNHrLuc209yQk1XmtzuHvpvQrMsw+6mtjVTVw
 5oU=
X-IronPort-AV: E=Sophos;i="5.64,294,1559491200"; 
   d="scan'208";a="220101376"
Received: from mail-co1nam04lp2056.outbound.protection.outlook.com (HELO NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.56])
  by ob1.hgst.iphmx.com with ESMTP; 22 Jul 2019 16:04:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DG+UVhCkfFmhpmpi3XxMAoxWZJmwE9xZ9njUuRolTmwPflTdlbJ5XFFwOuDGETCCxSyBENz1WzVwhW2qpHO5nhg1xNeVLIIbAXcoAjbZKx2LuHw9D9/4eV3O0/I/z1kOM9mycnmcQZgdqLfmAy9HssLzRsA4tOjC3YlzOgK83nuFl43lZVC7X1pU/0DIF+XWzWCgjW1VPbAV5n3qfC+LcLXVPZP0g+viajBOXoFODHNrD2gydlZFT68PugaCYCfJUk5CWW/aAcyl6iEO0vW6z6M0dGCO1tYYJHdXf5ds35yLTnnTiOzQddgOCJlcOF7gNEDJiRblA4KBIA/CKZ0ZuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ez7Lq00FF9xAXQodtJQcI02yAz6DUM8lVhq1NV7TGVA=;
 b=KDHR5CYZEH/zhpKQKdzhb050rZHZ/dxzkkIELAk9NNy6PfFdIrUylI3Wh0GDAHJFPXF2uu2YbRftzRIDNcXud0CX0LUMZmkthltrbGq/6732xXr6vQEoIhDwZLNo+v0YwEjxNiOw2C7xmlbEVQRfGmiT4ySfDC8sRYVK38tBt4kgF60bKNVVfDvzmBvZ+cO1mFZZU+SpRdzB/j3vE2ci9RiIda/3t0i72hd0rhOKHkqo4UEk519oDvnWpBKlu+oC/8JHEbQ46+hy4wG5Gwn1VA0WimD4bKjnbnbLR5JeCgg/Hix1hGwkxqniXQBVuyVEewGFdeWXanIrPUf+S3qAIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ez7Lq00FF9xAXQodtJQcI02yAz6DUM8lVhq1NV7TGVA=;
 b=RgKpdDs/UVqv45AHrK9ib/1wpd7dY/ktMZm7Qb83URGvYRqwJX7ei7ZqGnkv8vCB5kqb/lXpERC5A/XnXwMU0LMN3UExaORnfTbYWMnBV+1Cj6ZCblDH+/Iexa099MfSuK2OCTysPR/bsvKcliNgyCNJo+WTzIE1H4vF0VfwBUY=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5710.namprd04.prod.outlook.com (20.179.22.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Mon, 22 Jul 2019 08:04:54 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 08:04:54 +0000
From:   Anup Patel <Anup.Patel@wdc.com>
To:     Bin Meng <bmeng.cn@gmail.com>
CC:     linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Yash Shah <yash.shah@sifive.com>
Subject: RE: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
Thread-Topic: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu
 node
Thread-Index: AQHVMuUnOhkKA9QDCUKQJeKc/2dATqa7Za2ggAAUm4CAGudrgIAAAFeQ
Date:   Mon, 22 Jul 2019 08:04:54 +0000
Message-ID: <MN2PR04MB60617BA6F3C08EA2E4482D458DC40@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
 <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
 <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com>
 <CAEUhbmU99JqdVXK4KKaRg+QSO=5tMPyet-dCmayD_fRx4nbCEg@mail.gmail.com>
In-Reply-To: <CAEUhbmU99JqdVXK4KKaRg+QSO=5tMPyet-dCmayD_fRx4nbCEg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [129.253.179.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20bafd21-f0e3-4060-9048-08d70e7b4802
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:MN2PR04MB5710;
x-ms-traffictypediagnostic: MN2PR04MB5710:
x-microsoft-antispam-prvs: <MN2PR04MB5710D4E30329C97B78B8AEF18DC40@MN2PR04MB5710.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(376002)(396003)(136003)(366004)(346002)(39860400002)(199004)(189003)(13464003)(186003)(6246003)(86362001)(26005)(53936002)(11346002)(476003)(446003)(256004)(76176011)(7696005)(6116002)(2906002)(3846002)(25786009)(478600001)(81166006)(81156014)(486006)(53546011)(6506007)(102836004)(14454004)(6916009)(229853002)(9686003)(316002)(54906003)(33656002)(8936002)(68736007)(66066001)(71190400001)(71200400001)(99286004)(52536014)(305945005)(7736002)(74316002)(66946007)(66476007)(66556008)(76116006)(8676002)(66446008)(64756008)(6436002)(55016002)(5660300002)(4326008);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR04MB5710;H:MN2PR04MB6061.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mhYKXCoEbtn8SB0Wy6ugkw1+9jBKOK7KVXwWHDemPBsg0M0PQhYezjta5ZnUQEV88rzjmJjvWdWd0J7jVjbcgkn6rgDToyvM7RlpvPdDW4g77ZAwU6KrKI10Y6q8t/VH4jmEX2RKXF2/2wc9Klc50hzj6GbazEOUoS9ln1Rnd4gX/R6nrDZPUeDpUQ1OEKmBRs8LqGYqGiJ2sgzNs5mm9emImkGCGl08SfcEyNKQxKxywR0alDo3WFZzyKqRpWMzdoLQ9k0zQH5tQH8ba5bvcK2nN+7UgArV6x0A9Dq5fJS42R8R8rp1sIeh4z/UIies94SpXczhxEl6mVuVmwtmD5B1d+1ueU2PQWallOC01Ofo9OIpifNTa8U5V3mxszkxJW5O4T4SrrPMYF5WAapDZLLgeOdoULOuHC/0w1mNEFw=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20bafd21-f0e3-4060-9048-08d70e7b4802
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 08:04:54.7598
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5710
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQmluIE1lbmcgPGJtZW5n
LmNuQGdtYWlsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBKdWx5IDIyLCAyMDE5IDE6MzIgUE0NCj4g
VG86IEFudXAgUGF0ZWwgPEFudXAuUGF0ZWxAd2RjLmNvbT4NCj4gQ2M6IGxpbnV4LXJpc2N2IDxs
aW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnPjsgZGV2aWNldHJlZQ0KPiA8ZGV2aWNldHJl
ZUB2Z2VyLmtlcm5lbC5vcmc+OyBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPjsgTWFy
aw0KPiBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT47IEFsYmVydCBPdSA8YW91QGVlY3Mu
YmVya2VsZXkuZWR1PjsNCj4gUGF1bCBXYWxtc2xleSA8cGF1bC53YWxtc2xleUBzaWZpdmUuY29t
PjsgUGFsbWVyIERhYmJlbHQNCj4gPHBhbG1lckBzaWZpdmUuY29tPjsgWWFzaCBTaGFoIDx5YXNo
LnNoYWhAc2lmaXZlLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gcmlzY3Y6IGR0czogZnU1
NDAtYzAwMDogQWRkICJzdGF0dXMiIHByb3BlcnR5IHRvIGNwdQ0KPiBub2RlDQo+IA0KPiBPbiBG
cmksIEp1bCA1LCAyMDE5IGF0IDE6MTEgUE0gQmluIE1lbmcgPGJtZW5nLmNuQGdtYWlsLmNvbT4g
d3JvdGU6DQo+ID4NCj4gPiBPbiBGcmksIEp1bCA1LCAyMDE5IGF0IDExOjU5IEFNIEFudXAgUGF0
ZWwgPEFudXAuUGF0ZWxAd2RjLmNvbT4gd3JvdGU6DQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4g
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+IEZyb206IGxpbnV4LXJpc2N2
IDxsaW51eC1yaXNjdi1ib3VuY2VzQGxpc3RzLmluZnJhZGVhZC5vcmc+IE9uDQo+ID4gPiA+IEJl
aGFsZiBPZiBCaW4gTWVuZw0KPiA+ID4gPiBTZW50OiBGcmlkYXksIEp1bHkgNSwgMjAxOSA5OjIz
IEFNDQo+ID4gPiA+IFRvOiBsaW51eC1yaXNjdiA8bGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFk
Lm9yZz47IGRldmljZXRyZWUNCj4gPiA+ID4gPGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnPjsg
Um9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz47DQo+ID4gPiA+IE1hcmsgUnV0bGFuZCA8
bWFyay5ydXRsYW5kQGFybS5jb20+OyBBbGJlcnQgT3UNCj4gPiA+ID4gPGFvdUBlZWNzLmJlcmtl
bGV5LmVkdT47IFBhdWwgV2FsbXNsZXkNCj4gPHBhdWwud2FsbXNsZXlAc2lmaXZlLmNvbT47DQo+
ID4gPiA+IFBhbG1lciBEYWJiZWx0IDxwYWxtZXJAc2lmaXZlLmNvbT47IFlhc2ggU2hhaA0KPiA+
ID4gPiA8eWFzaC5zaGFoQHNpZml2ZS5jb20+DQo+ID4gPiA+IFN1YmplY3Q6IFtQQVRDSF0gcmlz
Y3Y6IGR0czogZnU1NDAtYzAwMDogQWRkICJzdGF0dXMiIHByb3BlcnR5IHRvDQo+ID4gPiA+IGNw
dSBub2RlDQo+ID4gPiA+DQo+ID4gPiA+IFBlciBkZXZpY2UgdHJlZSBzcGVjLCB0aGUgInN0YXR1
cyIgcHJvcGVydHkgcHJvcGVydHkgc2hhbGwgYmUNCj4gPiA+ID4gcHJlc2VudCBmb3Igbm9kZXMg
cmVwcmVzZW50aW5nIENQVXMgaW4gYSBTTVAgY29uZmlndXJhdGlvbi4gVGhpcw0KPiA+ID4gPiBw
cm9wZXJ0eSBpcyBjdXJyZW50bHkgbWlzc2luZyBpbiBjcHUgMS8yLzMvNCBub2RlIGluIHRoZSBm
dTU0MC1jMDAwLmR0c2kuDQo+ID4gPg0KPiA+ID4gV2UgZG9uJ3QgbmVlZCBleHBsaWNpdCAic3Rh
dHVzID0gb2theSIgZm9yIFNPQyBpbnRlcm5hbCBkZXZpY2VzDQo+ID4gPiAoc3VjaCBhcyBQTElD
LCBJTlRDLCBldGMpIHdoaWNoIGFyZSBhbHdheXMgZW5hYmxlZCBieSBkZWZhdWx0Lg0KPiA+ID4N
Cj4gPg0KPiA+IFllcywgdGhhdCdzIGZpbmUgYmVjYXVzZSB0aG9zZSBkZXZpY2UgYmluZGluZ3Mg
ZG8gbm90IHJlcXVpcmUgdGhlbS4NCj4gPg0KPiA+ID4gQWJzZW5jZSBvZiAic3RhdHVzIiBEVCBw
cm9wIGlzIHRyZWF0ZWQgYXMgZW5hYmxlZCBieSBkZWZhdWx0Lg0KPiA+ID4NCj4gPg0KPiA+IEJ1
dCBwZXIgY3VycmVudCBkZXZpY2UgdHJlZSBzcGVjLCAic3RhdHVzIiBpbiBjcHUgbm9kZSBpcyBt
YW5kYXRvcnkuDQo+ID4gKHNwZWMgdXNlcyAic2hhbGwiKS4gTWlzc2luZyBpdCBpcyBhIHNwZWMg
dmlvbGF0aW9uLg0KPiANCj4gUGluZz8NCg0KSSBhbSBmaW5lIHdpdGggZXhwbGljaXQgc3RhdHVz
ID0gIm9rYXkiLg0KDQpJIGFtIGhvcGluZyBEVCBtYWludGFpbmVycyB3aWxsIHNoYXJlIHRoZXJl
IHZpZXdzIG9uIHRoaXMuDQoNClJlZ2FyZHMsDQpBbnVwDQo=

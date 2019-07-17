Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8F94A6B7F9
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 10:16:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725980AbfGQIQ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jul 2019 04:16:29 -0400
Received: from mail-eopbgr40083.outbound.protection.outlook.com ([40.107.4.83]:49356
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725890AbfGQIQ3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 17 Jul 2019 04:16:29 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Aq0vnfTyXGGdVg0hbgdJ1rPlzLCwSUstAyFIiFBPrT/depMiLmBxRyTqR0GzFxpjnZV55sISLXxnwhsrIZz4DM8RrKPVu/axFFLB0Jjba3IC3LYCIEIvI7O8Ydl56bDr/djHCUNzinn//jjPcWFzcPCqxPfHKNgbbYGaE4NGYk2sH9mcDockve5NDGIBF5eHz1DM0O83eanGkcHg2WoJESzlb9JtKMibF1PKSUnDr3mRhPeE8EYzRivnlwZOQrZLcLE5O+rRn1P/Kks6bNL60JdzBLDa21jyAuenjBfg3ftPcDBaYxERE7nnsTDHNSpF237BLR7JjZ6WThPxCmUSaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NiEgK6ehxZIO0SdFuk/dMElR5TLP7K7n2KVDyt+2Ev8=;
 b=RTFoBqCZRuTlHGf9oVztag/VFzb6of1SDtby57rOnS3Vt1CRmF9frM547rzOFlMzQ7BaFjcnMxYArpVsBdxxA566dMY3STGlunytHEqZkK6UP2TFev86Y5oyAdekZLn0fe7E0OFthJoCKOcTS6vC2VocKgJTwqeUfkBJxlPsEpMq/sCTfuk7ucy80Yz5oE5XzU5uxg+r83V2k1NYBn+9o8OLsr3+gI1wYTlfPFyA2+6gTNCB+REuuECpTcefmGzC5LGumHmOdpHwP5T9SXLozmheNBVmGNVmUyz1N6BQgBEO63AwOcHrnWc8NRxPxGzOo2pUr32uhIzmqDtG7mEs+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NiEgK6ehxZIO0SdFuk/dMElR5TLP7K7n2KVDyt+2Ev8=;
 b=RLh6cFguTJtWnq5150oEXkgN2gZv84F9ALmBJIY16Rfpzrq80AvgoVb31YbHcwIya6gK1cQrmdEoVEvm19Nlzl/5vNKLqC9hx60sXOPgE13apRcvkAVpkNS8dniK9i5q4Eu7K9ZkZvtGVh1sNxLWpGFDssn8OQ5GnTuDI+4HC9U=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4130.eurprd04.prod.outlook.com (52.134.92.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 08:16:21 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::7882:51:e491:8431%7]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 08:16:21 +0000
From:   Aisheng Dong <aisheng.dong@nxp.com>
To:     Fabio Estevam <festevam@gmail.com>
CC:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Dong Aisheng <dongas86@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH v2 15/15] arm64: defconfig: add imx8qm mek support
Thread-Topic: [PATCH v2 15/15] arm64: defconfig: add imx8qm mek support
Thread-Index: AQHVO+xQyEr4H6miyEOxYbBKQCsvQabNoGEAgADXCLA=
Date:   Wed, 17 Jul 2019 08:16:21 +0000
Message-ID: <AM0PR04MB4211AF3216E3A641DA80B6C680C90@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-16-git-send-email-aisheng.dong@nxp.com>
 <CAOMZO5CTmAdxRK4FZu+Lw3WxkBzdufNJ=gE11TFSoizdYwXnbw@mail.gmail.com>
In-Reply-To: <CAOMZO5CTmAdxRK4FZu+Lw3WxkBzdufNJ=gE11TFSoizdYwXnbw@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b1f69d4a-3f18-4048-30a5-08d70a8f0d68
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB4130;
x-ms-traffictypediagnostic: AM0PR04MB4130:
x-microsoft-antispam-prvs: <AM0PR04MB413021A5B92892A29F0702E580C90@AM0PR04MB4130.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(136003)(346002)(396003)(366004)(376002)(39860400002)(199004)(189003)(2906002)(1411001)(66066001)(54906003)(76176011)(71190400001)(33656002)(186003)(66556008)(26005)(4326008)(7736002)(229853002)(6916009)(486006)(7696005)(71200400001)(14454004)(4744005)(52536014)(5660300002)(74316002)(102836004)(86362001)(53546011)(8676002)(6506007)(44832011)(8936002)(6436002)(81156014)(81166006)(256004)(99286004)(14444005)(446003)(3846002)(53936002)(55016002)(6246003)(476003)(76116006)(316002)(66946007)(68736007)(9686003)(478600001)(66476007)(66446008)(305945005)(6116002)(11346002)(25786009)(64756008)(32563001);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB4130;H:AM0PR04MB4211.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7quooohflrF/rwwp/0BcaBYX0P3hLlom7YBecz9wSgrT/S6BuMRbMvIHJHFnz6SBqxKqZyZsl1YImmqZ7HSiWNGeCoxyvi+cBtypH5OovhJikr2w457heethI9TfmcmW3Fur5fFuvuOevrxUYRB87xpuj/9mpyvMcvYLxAqib/1EgDJn6nOgzbkTqbD8q7a212UyG8LOL1mXC8QNl+ZTGCovRG+j3wRxJmuJgbCSyB7OFG1WMQIRvU+MVwgiycqeHng/qOTRAmrsoJmhuZvkEymmSjYeXtUGHgKKclhlGBCSel6qaVQ4PBTos/g4k1x40tqKlfuD7wawBTCCXiYweMd7Uf3Wjw4nDMafNjm8ftUUEkH1eD/x1OHWrBGG7cJjIv0nLNtF17To9iiSG4ONZ/AFMM2Scd3rAd9tBkjpgpk=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f69d4a-3f18-4048-30a5-08d70a8f0d68
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 08:16:21.6368
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4130
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBGcm9tOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+DQo+IFNlbnQ6IFdlZG5l
c2RheSwgSnVseSAxNywgMjAxOSAzOjI1IEFNDQo+IA0KPiBIaSBEb25nLA0KPiANCj4gT24gVHVl
LCBKdWwgMTYsIDIwMTkgYXQgMTI6MzggUE0gRG9uZyBBaXNoZW5nIDxhaXNoZW5nLmRvbmdAbnhw
LmNvbT4NCj4gd3JvdGU6DQo+ID4NCj4gPiBhZGQgaW14OHFtIG1layBzdXBwb3J0DQo+IA0KPiBU
aGUgU3ViamVjdCBhbmQgY29tbWl0IGxvZyBkb2VzIG5vdCBtYXRjaCB3aXRoIHRoZSBwYXRjaCBj
b250ZW50Lg0KDQpCZWNhdXNlIG14OHFtIHNoYXJlcyB0aGUgbW9zdCB0aGluZ3MgZnJvbSBteDhx
eHAgd2hpY2ggaGFzIGFscmVhZHkNCmJlZW4gZW5hYmxlZCBpbiBkZWZjb25maWcuIFRoZSBvbmx5
IG9uZSBsZWZ0IGlzIHBpbmN0cmwgZHJpdmVyLg0KSSB3b3VsZCB1cGRhdGUgdGhlIHRpdGxlIGEg
Yml0IHRvIGJlIG1vcmUgc3BlY2lmaWMgaW4gbmV4dCB2ZXJzaW9uLg0KDQpSZWdhcmRzDQpBaXNo
ZW5nDQo=

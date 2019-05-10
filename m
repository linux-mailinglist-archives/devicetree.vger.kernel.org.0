Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 908281970B
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 05:23:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726880AbfEJDXy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 23:23:54 -0400
Received: from mail-eopbgr70081.outbound.protection.outlook.com ([40.107.7.81]:1996
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726806AbfEJDXy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 9 May 2019 23:23:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BeuVx4MYM1r7XuIsKs0X7W/jjwkK5LfMS2Pl3NOLFqg=;
 b=YAp/rJ31SvF3Da4if6ygprKarYYE9ms9SDIBulyTzn7RL8V87aT7qlo0IeLTgWzvSuWXR7tQH8gMpdNESiiShvwTbSuRKujjhyMtEzqDdlb/nZRDkfke+s7UVnfd1+kMq5vfj/sc/b1gzCs3pbLwKF1uyJlxP68+WXZGPMwpna4=
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com (20.176.215.158) by
 AM0PR04MB4401.eurprd04.prod.outlook.com (52.135.149.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Fri, 10 May 2019 03:23:49 +0000
Received: from AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be]) by AM0PR04MB4865.eurprd04.prod.outlook.com
 ([fe80::f496:84c1:30b5:43be%7]) with mapi id 15.20.1856.012; Fri, 10 May 2019
 03:23:49 +0000
From:   Wen He <wen.he_1@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Leo Li <leoyang.li@nxp.com>,
        "liviu.dudau@arm.com" <liviu.dudau@arm.com>
Subject: RE: [EXT] Re: [v4] arm64: dts: ls1028a: Add properties for Mali DP500
 node
Thread-Topic: [EXT] Re: [v4] arm64: dts: ls1028a: Add properties for Mali
 DP500 node
Thread-Index: AQHU+PSvkVoTf7jST0KYCXcmCZL2b6ZjxQ+AgAAFATA=
Date:   Fri, 10 May 2019 03:23:49 +0000
Message-ID: <AM0PR04MB4865AD0E58BF8A48B9C252B5E20C0@AM0PR04MB4865.eurprd04.prod.outlook.com>
References: <20190422101941.11335-1-wen.he_1@nxp.com>
 <20190510025302.GB15856@dragon>
In-Reply-To: <20190510025302.GB15856@dragon>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=wen.he_1@nxp.com; 
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6974ce18-96cf-4e60-e2cf-08d6d4f6eb50
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB4401;
x-ms-traffictypediagnostic: AM0PR04MB4401:
x-microsoft-antispam-prvs: <AM0PR04MB44011FA4B7B2F2D3A92B6EFBE20C0@AM0PR04MB4401.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(376002)(136003)(366004)(346002)(39860400002)(199004)(189003)(13464003)(476003)(446003)(11346002)(66066001)(486006)(7736002)(74316002)(305945005)(4326008)(25786009)(68736007)(66446008)(64756008)(66556008)(66476007)(66946007)(73956011)(76116006)(229853002)(6916009)(9686003)(6246003)(6436002)(53936002)(55016002)(186003)(102836004)(53546011)(6506007)(26005)(5660300002)(52536014)(4744005)(256004)(86362001)(33656002)(7696005)(76176011)(99286004)(8936002)(6116002)(316002)(2906002)(54906003)(3846002)(71200400001)(71190400001)(478600001)(81156014)(8676002)(14454004)(81166006);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB4401;H:AM0PR04MB4865.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RnH1D2s9HDfJKycmSwwUdSDXe6oOKd6hKVIC2CvxY4Lh0FO+xoM2+KCyjYCxVlx90FqpgGkR7Z3555KYfrMrwEyyaMktSzjhCGidLoLWJW0UMSmwIlYzv3gqudupRD5NEBDXjDHqa/baKj9wdw+ktMMQzjT/TsrCs6zKh1VrBR2B3tvj2xeMK30hD+IBXmIfq/0sdX1RnUaA0dcHDFhjmTvoo2Za/NsyltKVnQliZoKt5HeQCnTdZzN+hGAJ8WGskYDkQhwrRclX/n5ltmgygml/2zwAkp/S+9vTtXK6V4GDFGmQn1hjvEMmLgUv8ZCV0gUvxzDSyC9W7nxT4267ysdDXflO38MoF7I4Y1bskamHr/XctqpMFfh/31ffkATZDCYsp8UShnKXeYXyPVbOtZoa3jXULZFq5kCj+baovEM=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6974ce18-96cf-4e60-e2cf-08d6d4f6eb50
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 03:23:49.3354
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4401
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhd24gR3VvIFttYWls
dG86c2hhd25ndW9Aa2VybmVsLm9yZ10NCj4gU2VudDogMjAxOcTqNdTCMTDI1SAxMDo1Mw0KPiBU
bzogV2VuIEhlIDx3ZW4uaGVfMUBueHAuY29tPg0KPiBDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5l
bC5vcmc7IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPjsNCj4gbGl2aXUuZHVkYXVAYXJtLmNv
bQ0KPiBTdWJqZWN0OiBbRVhUXSBSZTogW3Y0XSBhcm02NDogZHRzOiBsczEwMjhhOiBBZGQgcHJv
cGVydGllcyBmb3IgTWFsaSBEUDUwMA0KPiBub2RlDQo+IA0KPiANCj4gT24gTW9uLCBBcHIgMjIs
IDIwMTkgYXQgMTA6MTg6MTBBTSArMDAwMCwgV2VuIEhlIHdyb3RlOg0KPiA+IFRoZSBMUzEwMjhB
IGhhcyBhIExDRCBjb250cm9sbGVyIGFuZCBEaXNwbGF5cG9ydCBpbnRlcmZhY2UgdGhhdA0KPiA+
IGNvbm5lY3RzIHRvIGVEUCBhbmQgRGlzcGxheXBvcnQgY29ubmVjdG9ycyBvbiB0aGUgTFMxMDI4
QSBib2FyZC4NCj4gPg0KPiA+IFRoaXMgcGF0Y2ggZW5hYmxlcyB0aGUgTENEIGNvbnRyb2xsZXIg
ZHJpdmVyIG9uIHRoZSBMUzEwMjhBLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogQWxpc29uIFdh
bmcgPGFsaXNvbi53YW5nQG54cC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogV2VuIEhlIDx3ZW4u
aGVfMUBueHAuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVA
YXJtLmNvbT4NCj4gDQo+IEhpIFdlbiwNCj4gDQo+IFRoZSBiYXNlNjQgZW5jb2Rpbmcgb2YgdGhl
IG1lc3NhZ2UgbWFrZXMgaXQgdmVyeSBkaWZmaWN1bHQgdG8gYXBwbHkgdGhlIHBhdGNoLg0KPiBJ
IG1hbmFnZWQgdG8gYXBwbHkgaXQgbWFudWFsbHkgdGhpcyB0aW1lLCBidXQgcGxlYXNlIGRvIG5v
dCB1c2UNCj4gYmFzZTY0IGZvciBmdXR1cmUgcGF0Y2ggcG9zdGluZy4NCj4gDQoNCkhpIFNoYXdu
LA0KDQpUaGFua3MgZm9yIHlvdXIgcmV2aWV3Lg0KDQpUaGFua3MgZm9yIHlvdSBwb2ludGluZyBv
dXQgdGhlIGlzc3VlLiBJIHdpbGwgY2hlY2sgdGhlIHBhdGNoIGRldGFpbHMgZm9yIGZ1dHVyZSBw
b3N0aW5nDQphcyB0byBhdm9pZCBpdC4NCg0KQmVzdCBSZWdhcmRzLA0KV2VuDQoNCj4gU2hhd24N
Cg==

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35C643ED459
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 14:54:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229875AbhHPMyh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 08:54:37 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:48263 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbhHPMyh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 08:54:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1629118445; x=1660654445;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=OYLcIh/TLtJaPM2ac05g739DX7ZuUEUJFshrLsE/M34=;
  b=JKkm+rxrvy+UPWN6o99LHmm5ZfpNfFNkgXarpucmCs4zyJ2thp0M07ok
   rWmKBZ3LbQGFarOaUlc24jo2+oh3ODrsIX0jTKoTCuNG3M3JMDYWXdngk
   ZTTceOpqNpiohQJS4T265sgZ0FcoOsfBn034lHMShUgauaKRybTNKltbu
   nlJY6YJAquuMbz/3jY9haaA4VT93sBUAGIvfKNIg/+hCVdyKdmf2obSGF
   XA+5YjpG6Uikvt68GOJAaKaicjTms6Yidz7lXR/HWanu0A+aFjJyJKzza
   CDnkGbdR9HtEg+18p58/rjm+6JkejHt/QATN/TicYL5Umy+KO77KJPmBI
   g==;
IronPort-SDR: PzWapLCzJfD8TTJCp/EaabWhg32ujco4u1oMyF/msk2P5fFLfKBYv0dVdNlVKejKo/DSV8TYvO
 XTIfkHDln9+re+/ZtwKox1wq+KTx/7M5JGC41a04XkQlfW72i0I023wiL9BZbhMhUWiQzKIW/0
 /IBTH7KZC3Pwi+hKHAZ22ZVWPgEvthtWqdoofcl+fSyQxM39eZ2AI6FLBBgACY0zGeQIl2q+gw
 s5TeQGvIopw6ztnWPM5NQKeLtiOrBuutPTUFdDkNlaPzzVzqzKPNOWkAootKqsrj/jt8MDC5Vv
 3HLHunUQLJZXgMUPMyMNa0Yh
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; 
   d="scan'208";a="140255809"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 16 Aug 2021 05:54:04 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 16 Aug 2021 05:54:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.14 via Frontend
 Transport; Mon, 16 Aug 2021 05:54:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gmhkRuatxTh6Ieb/9ioF/zwP2BxC1rDoyCbetTwB79bkDepQ8hZqsc9GLKYEYin96szrTyraI1Cnm7dmwdR+OYlCGLC7Gzc5ruDx9ku8QFHZkBpyUHft8g7fnBMlhCwXyrwe1oY+ImZKQxbBR31yxXtIrzVyNi53emgfr6Ii7z9Mp1vI0WhTDGHNC/ccun3ou+OdWbrThtB9iSW/EEgkgYofXhAi2xnx1fV2mjV5Z6+0NHfjjNtNdsyfAQsw33e28rPd5gieV+K1cl4HcW7s9fpkLLv6FEDjZ5QPld/cFlnSaC+I1pX4S5cWaFdCqUDVRfl7O4xv16aiQ3a2O2drdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OYLcIh/TLtJaPM2ac05g739DX7ZuUEUJFshrLsE/M34=;
 b=AO+RvQkx2kraneuEE7G1ENHpr9cjyn5EGMVBCiN7/WhEDP6WLwenMxFCSLSXUj5BNbHpasL/ckO+s+GYE5FeA1ZmZnCNjInuWAgcfWkeANF+WFF9fYmLiDvDut803ndU0G9AOZSMgqvXboyau4sFPKTVFs+RTD5g8EJ1DF/sePIGNBSXa9KCHMqk45a7y43IPP5+ka5Lbrt03KErt2X7rKw/P8ZM4s55jG4bnqwk4DTOc/DBbmkY+vjf+IFWMY4P8jJ4DwZ9sqosV9TNznA1Kxgehm3p0fpT+EwAJJKp2ORfIWZmb/w6Sm8NGuF7rUzMo5s+is5JHh+zVCgsDoR+9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OYLcIh/TLtJaPM2ac05g739DX7ZuUEUJFshrLsE/M34=;
 b=V9xyAhjxr+T1w+1FFEadizlgnwET9ryRZDrmuAoa3ppjc2MPoJc8PRf7UTHLxNe2YrwqK0t+dQ9Uji0zXwGIQ63zwUo4FSBGWoOLg8r1YJsjTCJo1vN55Xk9JRfJWVZqVE9vZKkKeaaB4b4KUayL4I26oL/TWfvnxSWQUfc9QMw=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:95::7)
 by MWHPR1101MB2336.namprd11.prod.outlook.com (2603:10b6:300:75::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.16; Mon, 16 Aug
 2021 12:54:03 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::e821:ccab:5d1e:a168]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::e821:ccab:5d1e:a168%8]) with mapi id 15.20.4415.023; Mon, 16 Aug 2021
 12:54:01 +0000
From:   <Conor.Dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <j.neuschaefer@gmx.net>, <sfr@canb.auug.org.au>
CC:     <Lewis.Hanly@microchip.com>, <Cyril.Jean@microchip.com>,
        <Daire.McNamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH v9 4/5] soc: add polarfire soc system controller
Thread-Topic: [PATCH v9 4/5] soc: add polarfire soc system controller
Thread-Index: AQHXaQoB8UnFxEPoMkOk7mwKbr+HRqt2aXwA
Date:   Mon, 16 Aug 2021 12:54:01 +0000
Message-ID: <fdf085ef-9c88-ad3a-6033-f5a5ce48b7aa@microchip.com>
References: <20210624150144.11590-1-conor.dooley@microchip.com>
In-Reply-To: <20210624150144.11590-1-conor.dooley@microchip.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d4404a2-ac93-498f-070a-08d960b4eba3
x-ms-traffictypediagnostic: MWHPR1101MB2336:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB233604FBFD3CE40635CB7BDF98FD9@MWHPR1101MB2336.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j+jnUcvTFlRDO9jvMQ9nBAF/XjnJLQSaUv2fFMV68k+vwSYwrL/pBTomeH1JADMYwv/m2CyXkK4BzYHQMp6/cHWAme+V9Gmca1cfH9WOZq6KQ6rYG/P64iRZwwg4OL69rXa9SspQj6VVvN4zUGgJwF6WuUTVP9QdKZXdQBqTKoTv5rlUzSqtlfW1OibU4ptBBcVLuTNanlkn9LlP0ohh8OhBmr6iUK7mFF3iPMmAJNYQVxsl4D6MA1i0ri9cGtD07EMgFgsuC7WUxb9vEisIEd0Aoa3/lt4Ch62P+XAeX1pciZVvzROZ6dgT6ZeckO9tBWSwQv+q1/0X+aXUm3iNGwNT3sbZbzXrxRSkbWeTwvKEqe+ts9N7/jhykSvlKvKAcy0ngvcUfZYRsqdNly2kuo2N5RbVjoQA3z59ZUwknawc53uz7t/3pUTFXDoreuzxCw/uph0gJnlnF3lLwXdKibPqd/QbzoNYdVrdKVr5DDezxEMdmGHfgz5jZRcEMRmzyUqVpwttxAipXxehbYTOXrxk2adcaHfuYiGiigqsVqOWbvcjW2sYfR5rmWhGgeSqMxo5L10f1ZGx0cLdFxtlzhDcTzL2FvtOKfCsNUSH+cKCE3qS8FdITmNXWobao2Kq2WQC8Ykcwbpsa5N9bsdJTH/2QJnruGxsJ7U6h7e5aqRcRvqK+gXCalt0zqdRfKuSyEKEFOnZ3k2LOPrTJXi0uRlPA9YeI8Ed+AG3/gi0+/6wDG/8Owcx3QyhJFLdbK/311bAo7z756hnFfUJf2a+P5XSBtW+BjSWJgd6dP1TQH0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(376002)(136003)(39860400002)(366004)(396003)(53546011)(2616005)(6506007)(316002)(83380400001)(71200400001)(31696002)(38070700005)(26005)(186003)(86362001)(38100700002)(122000001)(8936002)(31686004)(66556008)(5660300002)(66476007)(4326008)(66946007)(36756003)(2906002)(110136005)(64756008)(7416002)(478600001)(66446008)(8676002)(76116006)(54906003)(6512007)(6486002)(921005)(91956017)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2JGaHU0L3hTMVhudm8wano3aEZDUGZTenBZRUY0d0dCbXUybUtRTk9tbWxF?=
 =?utf-8?B?U2dOSHJ2RmN3TGROZ0FDWjZOckNtZVlidTY0OEJ0QXlrSjJkNUFCNkZQOHZm?=
 =?utf-8?B?c1FDR1ZES2NLVUhWQ0tpbEtWMUtwdEE5eXVNWVVkQStrNUdmT29WVXdQVzNu?=
 =?utf-8?B?Yzhkc1N1anFvOEUvUUZFdlYvZmk3WlVEMlNQYjJKMXVxR2Y4NTBDaVhoZTJo?=
 =?utf-8?B?VnlsMHZoeFJRZlZXUjBHWGNQYXNYZVBNWHlEbzdvczNnZEhuWUV1VXkwd0h5?=
 =?utf-8?B?TXJBb2VvcHFkcDZEMmhMT3NNalRoL09ReUNqc2s3V3JZcnh3SWFlQ3g2YXdE?=
 =?utf-8?B?b3RNU1hHdkU5cVNEYmxkWjFJWHE4aXJhSVF5Y3E4SEdYR1hqdDcvZkIwMHVY?=
 =?utf-8?B?NFZrQXFPdzNiTGJmRC9ETzM3aGxZK2psK2pJWTU4NzIyYWYyb1poK1JualJ6?=
 =?utf-8?B?aDVXdFBCVi9xNGhFSnRLMEthMFExZ3pDN3V1K00zM1l2SkFaVm5MSU85M1E4?=
 =?utf-8?B?QXRvWkkzMmZSV3dBTVJydDhQelNEOEd0TU4xcmJYeSs3MFh0QUZDTEJqVmhp?=
 =?utf-8?B?K2Z5NFQ2NE9zcFlhdXFQVjNJZE9KNDl6NmpLcVpiR21WWm1PN0Y0OE4yY1ds?=
 =?utf-8?B?NkFZckU1VENJdEkwY1ZvbWgwSCtZcmZ0bEluM0hacHV1bmd0cU56bHpsMkVO?=
 =?utf-8?B?Vlh5UGRqZmdKU2c1SWFuUTFOdnA5c3VlajlVRVZOM0NDRENFQ3VtaE5KbUpJ?=
 =?utf-8?B?Y3FFSDR3NkxMT2U0ZkhsZk9jbjJGeC83T05Ecyt4UU12L3MxNml0NDdxYTJL?=
 =?utf-8?B?YUdWdVE1WmdsUDUwVnlmYjFicUpLRTgzOFFVRjhpRVo0RGVPaW1hZWpmdlN2?=
 =?utf-8?B?RnJwNEF1VkxhU2NlaDVpaTNpTndjcjRySS8rMURDN3BJWWJXWXIrNDVTaDJK?=
 =?utf-8?B?d3lRdnpiV3ptS2xBRGhoODFpUlBOSDJrNFc1MHBsTTREcnBCbS9qdTNyamhi?=
 =?utf-8?B?UzZZQXBuWkhaVTk4NGJua2tiaVNJZmZJR2g3TFByMHBmV2xVb2hsVVM3SFZ0?=
 =?utf-8?B?NllKYTZhRStYRTBoMFRvSDJXMG44aXN2THZYdEdSSkJJaFFhY1FrbXR3YStP?=
 =?utf-8?B?T29BMDJiNE9oNjNPMXJlMnVvU1dtTGhFZ3N2ZE9yMDdnazEyWDNPN2NCd2p1?=
 =?utf-8?B?ZEkwVU9KTlBNSzVmaTFmeXFGTjJQWFlLc0NTWFBwWk91SjJtdVVvMnU4UDhk?=
 =?utf-8?B?TnhhNS9VaVdHUzdjZW5XNWE1K05FWW05LzZvSFR2dVltd2FYVi9zeGp0WTJs?=
 =?utf-8?B?b2V4bDE5VXZ2RGhXejRFTHNTVk1FQ0VxZ0h3UGFqdjlZSVpveGJtT3JNZlEz?=
 =?utf-8?B?WmdHQitaTWJxOUNnNTYyRlZub0dZS3ZjUWIyeWZwZzMwK1lRV1doUlBPV241?=
 =?utf-8?B?UThxZXkxdGdwRXhSamRxRkpidmNFNTN1Q2JpeHdXcTd1NTRrdU04VFVKVHgy?=
 =?utf-8?B?R1hrMUd4NXJvZWlBVi9yWk5SeVRTZlIwVUdYMXhybDJGclo1U2N5ekZFSEtE?=
 =?utf-8?B?ZU9jRHBRTG5KdEZ2Y0ZicERocm9IdGI3S1BPY2MwRzdOYitaallhSG1XZm4w?=
 =?utf-8?B?S1hmODQ5OXNvV0JiTXQ2Y0NRMm1KYUQ1L21sTjNmMmdCWGUvTlk4S012Ynpy?=
 =?utf-8?B?MU91d3M2LzBkM2VEZnhEdEtUc0VMaVJtQ2N5SStWSWE3VlRmelNGTXlTei9I?=
 =?utf-8?Q?S637/hlnW3nkR3JXO8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0BD50CA77B548F4D9D6FC322624B2C8E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d4404a2-ac93-498f-070a-08d960b4eba3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2021 12:54:01.2568
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OAf61PIxysWFTmfPDq1qvr/mM6GcqlAkHJczUUHR2qi8EulEylldozgPpNqf/kZpg3DBkOT6CTaYcinPlWYuq0VpFwLXl523UHScGeYfQz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2336
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SnVzdCBidW1waW5nIHRoaXMsIHJlc3Qgb2YgdGhlIHNlcmllcyBzZWVtcyB0byBoYXZlIG1hZGUg
aXQgaW50byANCjUuMTQtcmMqIHZpYSB0aGUgbWFpbGJveCB0cmVlIGJ1dCB0aGlzIHBhdGNoIGRp
ZCBub3QuDQpBc3N1bWUgdGhlIGxhY2sgb2YgYW55IGFwcHJvdmFscyBjYXVzZWQgaXQuDQpPbiAy
NC8wNi8yMDIxIDE2OjAxLCBjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbSB3cm90ZToNCj4gRnJv
bTogQ29ub3IgRG9vbGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4NCj4NCj4gVGhpcyBk
cml2ZXIgcHJvdmlkZXMgYW4gaW50ZXJmYWNlIGZvciBvdGhlciBkcml2ZXJzIHRvIGFjY2VzcyB0
aGUNCj4gZnVuY3Rpb25zIG9mIHRoZSBzeXN0ZW0gY29udHJvbGxlciBvbiB0aGUgTWljcm9jaGlw
IFBvbGFyRmlyZSBTb0MuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IENvbm9yIERvb2xleSA8Y29ub3Iu
ZG9vbGV5QG1pY3JvY2hpcC5jb20+DQo+IC0tLQ0KPiAgIGRyaXZlcnMvc29jL0tjb25maWcgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0KPiAgIGRyaXZlcnMvc29jL01ha2VmaWxlICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0KPiAgIGRyaXZlcnMvc29jL21pY3JvY2hpcC9L
Y29uZmlnICAgICAgICAgICAgICAgfCAgMTAgKysNCj4gICBkcml2ZXJzL3NvYy9taWNyb2NoaXAv
TWFrZWZpbGUgICAgICAgICAgICAgIHwgICAxICsNCj4gICBkcml2ZXJzL3NvYy9taWNyb2NoaXAv
bXBmcy1zeXMtY29udHJvbGxlci5jIHwgMTIxICsrKysrKysrKysrKysrKysrKysrDQo+ICAgNSBm
aWxlcyBjaGFuZ2VkLCAxMzQgaW5zZXJ0aW9ucygrKQ0KPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL3NvYy9taWNyb2NoaXAvS2NvbmZpZw0KPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL3NvYy9taWNyb2NoaXAvTWFrZWZpbGUNCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9zb2MvbWljcm9jaGlwL21wZnMtc3lzLWNvbnRyb2xsZXIuYw0KPg0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zb2MvS2NvbmZpZyBiL2RyaXZlcnMvc29jL0tjb25maWcNCj4gaW5kZXggZThhMzBj
NGM1YWVjLi5iMzMxNDJlMDIwZTAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvc29jL0tjb25maWcN
Cj4gKysrIGIvZHJpdmVycy9zb2MvS2NvbmZpZw0KPiBAQCAtMTIsNiArMTIsNyBAQCBzb3VyY2Ug
ImRyaXZlcnMvc29jL2lteC9LY29uZmlnIg0KPiAgIHNvdXJjZSAiZHJpdmVycy9zb2MvaXhwNHh4
L0tjb25maWciDQo+ICAgc291cmNlICJkcml2ZXJzL3NvYy9saXRleC9LY29uZmlnIg0KPiAgIHNv
dXJjZSAiZHJpdmVycy9zb2MvbWVkaWF0ZWsvS2NvbmZpZyINCj4gK3NvdXJjZSAiZHJpdmVycy9z
b2MvbWljcm9jaGlwL0tjb25maWciDQo+ICAgc291cmNlICJkcml2ZXJzL3NvYy9xY29tL0tjb25m
aWciDQo+ICAgc291cmNlICJkcml2ZXJzL3NvYy9yZW5lc2FzL0tjb25maWciDQo+ICAgc291cmNl
ICJkcml2ZXJzL3NvYy9yb2NrY2hpcC9LY29uZmlnIg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
b2MvTWFrZWZpbGUgYi9kcml2ZXJzL3NvYy9NYWtlZmlsZQ0KPiBpbmRleCBmNjc4ZTRkOWU1ODUu
LjEwY2ZkY2Q5NzJjNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9zb2MvTWFrZWZpbGUNCj4gKysr
IGIvZHJpdmVycy9zb2MvTWFrZWZpbGUNCj4gQEAgLTE3LDYgKzE3LDcgQEAgb2JqLSQoQ09ORklH
X0FSQ0hfSVhQNFhYKQkrPSBpeHA0eHgvDQo+ICAgb2JqLSQoQ09ORklHX1NPQ19YV0FZKQkJKz0g
bGFudGlxLw0KPiAgIG9iai0kKENPTkZJR19MSVRFWF9TT0NfQ09OVFJPTExFUikgKz0gbGl0ZXgv
DQo+ICAgb2JqLXkJCQkJKz0gbWVkaWF0ZWsvDQo+ICtvYmoteQkJCQkrPSBtaWNyb2NoaXAvDQo+
ICAgb2JqLXkJCQkJKz0gYW1sb2dpYy8NCj4gICBvYmoteQkJCQkrPSBxY29tLw0KPiAgIG9iai15
CQkJCSs9IHJlbmVzYXMvDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9taWNyb2NoaXAvS2Nv
bmZpZyBiL2RyaXZlcnMvc29jL21pY3JvY2hpcC9LY29uZmlnDQo+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0DQo+IGluZGV4IDAwMDAwMDAwMDAwMC4uZWI2NTZiMzMxNTZiDQo+IC0tLSAvZGV2L251bGwN
Cj4gKysrIGIvZHJpdmVycy9zb2MvbWljcm9jaGlwL0tjb25maWcNCj4gQEAgLTAsMCArMSwxMCBA
QA0KPiArY29uZmlnIFBPTEFSRklSRV9TT0NfU1lTX0NUUkwNCj4gKwl0cmlzdGF0ZSAiUE9MQVJG
SVJFX1NPQ19TWVNfQ1RSTCINCj4gKwlkZXBlbmRzIG9uIFBPTEFSRklSRV9TT0NfTUFJTEJPWA0K
PiArCWhlbHANCj4gKwkgIFRoaXMgZHJpdmVyIGFkZHMgc3VwcG9ydCBmb3IgdGhlIFBvbGFyRmly
ZSBTb0MgKE1QRlMpIHN5c3RlbSBjb250cm9sbGVyLg0KPiArDQo+ICsJICBUbyBjb21waWxlIHRo
aXMgZHJpdmVyIGFzIGEgbW9kdWxlLCBjaG9vc2UgTSBoZXJlLiB0aGUNCj4gKwkgIG1vZHVsZSB3
aWxsIGJlIGNhbGxlZCBtcGZzX3N5c3RlbV9jb250cm9sbGVyLg0KPiArDQo+ICsJICBJZiB1bnN1
cmUsIHNheSBOLg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvbWljcm9jaGlwL01ha2VmaWxl
IGIvZHJpdmVycy9zb2MvbWljcm9jaGlwL01ha2VmaWxlDQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
DQo+IGluZGV4IDAwMDAwMDAwMDAwMC4uMTQ0ODk5MTlmZTRiDQo+IC0tLSAvZGV2L251bGwNCj4g
KysrIGIvZHJpdmVycy9zb2MvbWljcm9jaGlwL01ha2VmaWxlDQo+IEBAIC0wLDAgKzEgQEANCj4g
K29iai0kKENPTkZJR19QT0xBUkZJUkVfU09DX1NZU19DVFJMKQkrPSBtcGZzLXN5cy1jb250cm9s
bGVyLm8NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL21pY3JvY2hpcC9tcGZzLXN5cy1jb250
cm9sbGVyLmMgYi9kcml2ZXJzL3NvYy9taWNyb2NoaXAvbXBmcy1zeXMtY29udHJvbGxlci5jDQo+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYjVjMjNjYjVkZjJj
DQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvZHJpdmVycy9zb2MvbWljcm9jaGlwL21wZnMtc3lz
LWNvbnRyb2xsZXIuYw0KPiBAQCAtMCwwICsxLDEyMSBAQA0KPiArLy8gU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IEdQTC0yLjANCj4gKy8qDQo+ICsgKiBNaWNyb2NoaXAgUG9sYXJGaXJlIFNvQyAo
TVBGUykgc3lzdGVtIGNvbnRyb2xsZXIgZHJpdmVyDQo+ICsgKg0KPiArICogQ29weXJpZ2h0IChj
KSAyMDIwIE1pY3JvY2hpcCBDb3Jwb3JhdGlvbi4gQWxsIHJpZ2h0cyByZXNlcnZlZC4NCj4gKyAq
DQo+ICsgKiBBdXRob3I6IENvbm9yIERvb2xleSA8Y29ub3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+
DQo+ICsgKg0KPiArICovDQo+ICsNCj4gKyNpbmNsdWRlIDxsaW51eC9zbGFiLmg+DQo+ICsjaW5j
bHVkZSA8bGludXgvbW9kdWxlLmg+DQo+ICsjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+DQo+
ICsjaW5jbHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9tYWls
Ym94X2NsaWVudC5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPg0KPiAr
I2luY2x1ZGUgPHNvYy9taWNyb2NoaXAvbXBmcy5oPg0KPiArDQo+ICtzdGF0aWMgREVGSU5FX01V
VEVYKHRyYW5zYWN0aW9uX2xvY2spOw0KPiArDQo+ICtzdHJ1Y3QgbXBmc19zeXNfY29udHJvbGxl
ciB7DQo+ICsJc3RydWN0IG1ib3hfY2xpZW50IGNsaWVudDsNCj4gKwlzdHJ1Y3QgbWJveF9jaGFu
ICpjaGFuOw0KPiArCXN0cnVjdCBjb21wbGV0aW9uIGM7DQo+ICsJdTMyIGVuYWJsZWQ7DQo+ICt9
Ow0KPiArDQo+ICtpbnQgbXBmc19ibG9ja2luZ190cmFuc2FjdGlvbihzdHJ1Y3QgbXBmc19zeXNf
Y29udHJvbGxlciAqbXBmc19jbGllbnQsIHZvaWQgKm1zZykNCj4gK3sNCj4gKwlpbnQgcmV0Ow0K
PiArDQo+ICsJcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZ0cmFuc2FjdGlvbl9sb2Nr
KTsNCj4gKwlpZiAocmV0KQ0KPiArCQlyZXR1cm4gcmV0Ow0KPiArDQo+ICsJcmVpbml0X2NvbXBs
ZXRpb24oJm1wZnNfY2xpZW50LT5jKTsNCj4gKw0KPiArCXJldCA9IG1ib3hfc2VuZF9tZXNzYWdl
KG1wZnNfY2xpZW50LT5jaGFuLCBtc2cpOw0KPiArCWlmIChyZXQgPj0gMCkgew0KPiArCQlpZiAo
d2FpdF9mb3JfY29tcGxldGlvbl90aW1lb3V0KCZtcGZzX2NsaWVudC0+YywgSFopKSB7DQo+ICsJ
CQlyZXQgPSAwOw0KPiArCQl9IGVsc2Ugew0KPiArCQkJcmV0ID0gLUVUSU1FRE9VVDsNCj4gKwkJ
CWRldl93YXJuKG1wZnNfY2xpZW50LT5jbGllbnQuZGV2LCAiTVBGUyBzeXMgY29udHJvbGxlciB0
cmFuc2FjdGlvbiB0aW1lb3V0XG4iKTsNCj4gKwkJfQ0KPiArCX0gZWxzZSB7DQo+ICsJCWRldl9l
cnIobXBmc19jbGllbnQtPmNsaWVudC5kZXYsDQo+ICsJCQkibXBmcyBzeXMgY29udHJvbGxlciB0
cmFuc2FjdGlvbiByZXR1cm5lZCAlZFxuIiwgcmV0KTsNCj4gKwl9DQo+ICsNCj4gKwltdXRleF91
bmxvY2soJnRyYW5zYWN0aW9uX2xvY2spOw0KPiArDQo+ICsJcmV0dXJuIHJldDsNCj4gK30NCj4g
K0VYUE9SVF9TWU1CT0wobXBmc19ibG9ja2luZ190cmFuc2FjdGlvbik7DQo+ICsNCj4gK3N0YXRp
YyB2b2lkIHJ4X2NhbGxiYWNrKHN0cnVjdCBtYm94X2NsaWVudCAqY2xpZW50LCB2b2lkICptc2cp
DQo+ICt7DQo+ICsJc3RydWN0IG1wZnNfc3lzX2NvbnRyb2xsZXIgKm1wZnNfY2xpZW50ID0NCj4g
KwkJY29udGFpbmVyX29mKGNsaWVudCwgc3RydWN0IG1wZnNfc3lzX2NvbnRyb2xsZXIsIGNsaWVu
dCk7DQo+ICsNCj4gKwljb21wbGV0ZSgmbXBmc19jbGllbnQtPmMpOw0KPiArfQ0KPiArDQo+ICtz
dGF0aWMgaW50IG1wZnNfc3lzX2NvbnRyb2xsZXJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikNCj4gK3sNCj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Ow0KPiAr
CXN0cnVjdCBtcGZzX3N5c19jb250cm9sbGVyICptcGZzX2NsaWVudDsNCj4gKw0KPiArCW1wZnNf
Y2xpZW50ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCptcGZzX2NsaWVudCksIEdGUF9LRVJO
RUwpOw0KPiArCWlmICghbXBmc19jbGllbnQpDQo+ICsJCXJldHVybiAtRU5PTUVNOw0KPiArDQo+
ICsJbXBmc19jbGllbnQtPmNsaWVudC5kZXYgPSBkZXY7DQo+ICsJbXBmc19jbGllbnQtPmNsaWVu
dC5yeF9jYWxsYmFjayA9IHJ4X2NhbGxiYWNrOw0KPiArCW1wZnNfY2xpZW50LT5jbGllbnQudHhf
YmxvY2sgPSAxVTsNCj4gKw0KPiArCW1wZnNfY2xpZW50LT5jaGFuID0gbWJveF9yZXF1ZXN0X2No
YW5uZWwoJm1wZnNfY2xpZW50LT5jbGllbnQsIDApOw0KPiArCWlmIChJU19FUlIobXBmc19jbGll
bnQtPmNoYW4pKQ0KPiArCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIFBUUl9FUlIobXBmc19j
bGllbnQtPmNoYW4pLA0KPiArCQkJCSAgICAgIkZhaWxlZCB0byBnZXQgbWJveCBjaGFubmVsXG4i
KTsNCj4gKw0KPiArCWluaXRfY29tcGxldGlvbigmbXBmc19jbGllbnQtPmMpOw0KPiArDQo+ICsJ
cGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgbXBmc19jbGllbnQpOw0KPiArDQo+ICsJZGV2X2lu
Zm8oJnBkZXYtPmRldiwgIlJlZ2lzdGVyZWQgTVBGUyBzeXN0ZW0gY29udHJvbGxlciBkcml2ZXJc
biIpOw0KPiArDQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+ICsNCj4gK3N0cnVjdCBtcGZzX3N5c19j
b250cm9sbGVyICoNCj4gK21wZnNfc3lzX2NvbnRyb2xsZXJfZ2V0KHN0cnVjdCBkZXZpY2Vfbm9k
ZSAqbXNzX25vZGUpDQo+ICt7DQo+ICsJc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiA9IG9m
X2ZpbmRfZGV2aWNlX2J5X25vZGUobXNzX25vZGUpOw0KPiArDQo+ICsJaWYgKCFwZGV2KQ0KPiAr
CQlyZXR1cm4gTlVMTDsNCj4gKw0KPiArCXJldHVybiBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2
KTsNCj4gK30NCj4gK0VYUE9SVF9TWU1CT0wobXBmc19zeXNfY29udHJvbGxlcl9nZXQpOw0KPiAr
DQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBtcGZzX3N5c19jb250cm9sbGVy
X29mX21hdGNoW10gPSB7DQo+ICsJey5jb21wYXRpYmxlID0gIm1pY3JvY2hpcCxwb2xhcmZpcmUt
c29jLXN5cy1jb250cm9sbGVyIiwgfSwNCj4gKwl7fSwNCj4gK307DQo+ICtNT0RVTEVfREVWSUNF
X1RBQkxFKG9mLCBtcGZzX3N5c19jb250cm9sbGVyX29mX21hdGNoKTsNCj4gKw0KPiArc3RhdGlj
IHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgbXBmc19zeXNfY29udHJvbGxlcl9kcml2ZXIgPSB7DQo+
ICsJLmRyaXZlciA9IHsNCj4gKwkJLm5hbWUgPSAibXBmcy1zeXMtY29udHJvbGxlciIsDQo+ICsJ
CS5vZl9tYXRjaF90YWJsZSA9IG1wZnNfc3lzX2NvbnRyb2xsZXJfb2ZfbWF0Y2gsDQo+ICsJfSwN
Cj4gKwkucHJvYmUgPSBtcGZzX3N5c19jb250cm9sbGVyX3Byb2JlLA0KPiArfTsNCj4gK21vZHVs
ZV9wbGF0Zm9ybV9kcml2ZXIobXBmc19zeXNfY29udHJvbGxlcl9kcml2ZXIpOw0KPiArDQo+ICtN
T0RVTEVfTElDRU5TRSgiR1BMIHYyIik7DQo+ICtNT0RVTEVfQVVUSE9SKCJDb25vciBEb29sZXkg
PGNvbm9yLmRvb2xleUBtaWNyb2NoaXAuY29tPiIpOw0KPiArTU9EVUxFX0RFU0NSSVBUSU9OKCJN
UEZTIHN5c3RlbSBjb250cm9sbGVyIGRyaXZlciIpOw0KDQoNCg==

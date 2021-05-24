Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7FB638F15B
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 18:19:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232790AbhEXQUk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 12:20:40 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:53814 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233350AbhEXQUj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 12:20:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1621873152; x=1653409152;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=VWTovicDQDsUgYCjbXuc6Fp3bqP2xaviK/xJIa8mbdc=;
  b=j/GwqDe/KIfR+/c6B3oi93lTlb9S8c5FVQxSnyB8vQex5YDrEezfmv1N
   9Iw0GYnEOKrdBhzjq1GVpY9GGhF3cL7HmYIHg4siltrgn+/fSQu9/U/ls
   nx/aYGZzVPCm6eRSLEa9JJpzCdzrXidF0emDHXbN5lJqFCezlc8iI8B7f
   hK6FKASg6lS03JFOw8LiqqQHFGW13uKxZ43TTpkn14MgtKQsmYGtUQ+vc
   m2zNb6k7vYMUich6k1Dec3wMmq0BEj6dkZd51O3vtnzxvAE8UoJBzkhR8
   DsWMZHyysc+koejX/PEjeaZ015Rt2VS+tq8s5Y/i3UAIEWXnoQtsCOOVK
   A==;
IronPort-SDR: mAOEEOjlwspn+KiHZiwOqrpV7EEgv1kXSGxkv7e/HVi+u9wq3GXQtbqovzbbhhs1hqiU0fe4S6
 5k+gdznlsdjDvb2INr5gXee3umXNTTQ0aPZPqnB/Abet0NhczMKs9qfBQhWJV5cdIqyQ3LrBWS
 Vl9iONO8E3VN8BnlsVPm6wz9H5iywNvdzKWUVZmF637PfqTx5PFA+E5pkHDJeu4B1n3bM9zoDf
 JWM9L9iti08GLiAsEZY6ZF95LiYgX+95X5DLO5cQG8alzhYipf5WpN7x95NOl5veccFPYRg1ki
 vEs=
X-IronPort-AV: E=Sophos;i="5.82,325,1613458800"; 
   d="scan'208";a="122190932"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 24 May 2021 09:19:10 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 24 May 2021 09:19:09 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2 via Frontend
 Transport; Mon, 24 May 2021 09:19:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L7yHd081oBxrO5lo2jrz5EkEvMTVhpUHTYpcCVJdcmsmXSohin3KJuQY9RN/oTfzNR4WTjEI0GiOqBgQYziEqDjEsJU08TIb0WQpmv3dx8E3KtdYLDntS+0hgflaqJy0MM2xQFycxXuXAKR5gYYukhHLBuLIfxtwAq5rlU+tlTnsDLLgSImD5QyUVaTsvHVPvHRISsqoDp4XUzxSDNBeLdUXtq8ZCxeJryf2av2Mry0cct7VGiWKjALVyOxfbpoCTI7fZTwOfh6XcmjD2Fbe69RHhCBUp6x04WcG5ZShaM3ctxiWUh6amRoMU2iM1ck+cmFXMKlBbvgFbLA7zHLK2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VWTovicDQDsUgYCjbXuc6Fp3bqP2xaviK/xJIa8mbdc=;
 b=iXtgk6bPWPhxlm6x5yw+J1d7T2XDDGeE7xplYkQHuFjWdOxpUCmwErT5hv2azew2l+JEueC041En+uwLaXwIgoP0kYGu4KbaLeH8sC8+exBJCvMub4olyxotBBtQ2Udsah/IHPZYYaF2jS19Ds4iIO3BlBKU2nlgF/4yZizbLfSQL0ZNGgzNwWFGmRnpOa18OuvtQFBqCqrxcfsGN4BHqoAXDr2aN7YbZ5B5mzamswabO2mLHdBkMRsPyumAu4P6X5lAg2ifNB6Bekrq8x82MrFSkkFe5K0FRc63Wkhvwa/iaHKsdVb7bG12NOPlmW4fpF9SRECdxLw/cHVBindgUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VWTovicDQDsUgYCjbXuc6Fp3bqP2xaviK/xJIa8mbdc=;
 b=nSULIp29FCja2qDKXqnKFPh+/CBjFmvFQTowMCTy+a6jW24XCaiP0S6e69AZHKBvncmPzsHIdYifeV0hUMfnc/XX0my4lS44NrP9vbETvTjfpmNT10zr6OEnbWiNfpHOgHRlkasMVm+nmVrM8utPJpBAn5CNm/c63CTi6oZNOhY=
Received: from DM6PR11MB3770.namprd11.prod.outlook.com (2603:10b6:5:13c::24)
 by DM5PR11MB1820.namprd11.prod.outlook.com (2603:10b6:3:111::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.26; Mon, 24 May
 2021 16:19:07 +0000
Received: from DM6PR11MB3770.namprd11.prod.outlook.com
 ([fe80::e98e:4753:fe37:465a]) by DM6PR11MB3770.namprd11.prod.outlook.com
 ([fe80::e98e:4753:fe37:465a%6]) with mapi id 15.20.4150.027; Mon, 24 May 2021
 16:19:07 +0000
From:   <Lewis.Hanly@microchip.com>
To:     <linux-clk@vger.linux.org>, <Daire.McNamara@microchip.com>,
        <devicetree@vger.kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <robh+dt@kernel.org>
CC:     <Padmarao.Begari@microchip.com>, <palmer@dabbelt.com>,
        <Cyril.Jean@microchip.com>, <Conor.Dooley@microchip.com>,
        <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH v5 0/2] CLK: microchip: Add clkcfg driver for Microchip
 PolarFire SoC
Thread-Topic: [PATCH v5 0/2] CLK: microchip: Add clkcfg driver for Microchip
 PolarFire SoC
Thread-Index: AQHXQOH01KJPZAiHv0K4u0ZRhXHAdKry70UA
Date:   Mon, 24 May 2021 16:19:07 +0000
Message-ID: <26fa2dc9767953e64a365bffc4604844d96be189.camel@microchip.com>
References: <20210504123515.916707-1-daire.mcnamara@microchip.com>
In-Reply-To: <20210504123515.916707-1-daire.mcnamara@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.4-0ubuntu1 
authentication-results: vger.linux.org; dkim=none (message not signed)
 header.d=none;vger.linux.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [51.37.19.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f12a810-1f88-4b27-6e6d-08d91ecfa82a
x-ms-traffictypediagnostic: DM5PR11MB1820:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1820B3434075B39F7A47F037E5269@DM5PR11MB1820.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ENSNAyXNS3FxmiwH3Ygm8vUD7POhPQweQVy6628hD1GNwU0J7XGwdAL5RANgrbtB0xPKuVnT7F6aVxYBVxQzRxor0Dc0vPg+SywOCs17z9Eyfv2EKj+3SsetSMOiXpcs/Qbk6RsQXte6HFHsZFWv0nY+3wtK/+o9vWfGHhfnolK66QTA9AbCC9TnKxf1Ns4cLOMXfENz1ghe31KVVSDhH84/5Gog+OfpFlEqChF4Cxr4GnolDm4/RVQxfo1Zfr1Ejz6yPYa38MT1AUUJMNblbdN5rwub4RZPJDz2VEw7H6azBUpOtCD18oSgO9EC2tRoiVVUATH2CcVQ+VVEiTRZqmLk9n9FpfRMELnP3X3vgbw5To8SDunzym/1c3qh3pOFCCcH726VVu++4F1FzWU3WX1ImU0bGvehVrw7ebxDZ0bvw30hjApFLEkeUA5D1kS7SSYdnuGNIiWXkH73bWmLnpeLIGy8XvNp7ilfTA/HILRv3Al6ReHkdfxknBM6DFQcm6CQSAypVN2maHvhnzx45eFBO7QGkrIVP2I2PGrCGGCZdLdHXw/VsJMloITLjKhcl5FgMwZDnjRnbnTcsgaWcHG+5aclQOS7STs501fIgIyMZV60BNm1hh66gjW1YDe7WRLTPIwhkoZzvcAJayfKIA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3770.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(186003)(8936002)(2616005)(36756003)(76116006)(66476007)(26005)(6512007)(91956017)(2906002)(66446008)(110136005)(64756008)(66556008)(5660300002)(6506007)(54906003)(86362001)(83380400001)(71200400001)(38100700002)(8676002)(4326008)(66946007)(122000001)(6486002)(498600001)(40753002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?Y2VMSVlMeTM1bnVLeGQ3VzdlYTQwOGQyWWdxVGlZYWVJQXIwWjdMbXA1T2JJ?=
 =?utf-8?B?RTlaT3JqR1B3eTJoS3MxcXRhMWdsZmJyN0cxZGwrcjE5cU9PNWRHbXFLbDlp?=
 =?utf-8?B?dUQ1UUpxZGJ4UHZMVFpVd3VMQktLRE9BdHA4QjBpTE9FblJCMldVRlIzZzFy?=
 =?utf-8?B?OFo5RjBURVlieXFSWlNua2Yxa2NKZ0tVbDd6R0NRWDlOK2lieVY1Um1LNHBW?=
 =?utf-8?B?T2Nwa091WkpwcU1rMDAybFdJK3hVZ2tuWjYrdTFiUkJCMXF6R1pPYjhobzRO?=
 =?utf-8?B?NEdETnRXNkZZQURzL1hjWjhvczlTTmRJOUhHUGxCaHJ2N2ZFTHF4MmZpaUtS?=
 =?utf-8?B?eDZ1ZE4rdE9yTlBBc0tsT0cxbU5wR0NNLzM3YUkyaHNWSHJVRnZ3MnFPSHE4?=
 =?utf-8?B?emw0UzNmdEJYNTNKSWNPSUt4WHJaVmNycUdiVTh6bHdkKzR6M3cxVFFldnlx?=
 =?utf-8?B?cmZoeU1PMEJNMzVpZ1lESjBsZXcwZW5Od0VwTXFMdW4zdjJBUkk0cVB2WHFE?=
 =?utf-8?B?NjlmWGozaElpWWdValJ0ekR3YmxNRWtGZCtLckFqeWZxOWFUeWR6ZVNDTGN1?=
 =?utf-8?B?cW9TbWplUE0ySGthR3l2d0NQV05oNFgvS0RYT2tLL0RYZXJrSS80NG91dm9k?=
 =?utf-8?B?S3p2TDRUbmMzRXRLQTRXZ0x5N0VLVUp1eGNuK21idHNLV04xeWZheVp2OWw1?=
 =?utf-8?B?RHVIUjIvc1k5NnpKM0NUb1pRRUpiZW9CalBTYW56YVc4TG0wcmFBZFl3bzUv?=
 =?utf-8?B?NE1XRmFKS2tHd3FJYk1vMktWZjErQ2lSUEJDQ0VOeVIyN2RPemlOTW0vV3Ux?=
 =?utf-8?B?b1RmVDZITkQ0NUg5NWNRcDZpUDRzbEZySlRmaEh1Y2F6OXk3a2I3UlRSSVUz?=
 =?utf-8?B?RFhtMHR5TVhibGFTcGZoY0ZvRHFUaUM4azJJZmYxbjVjM3h3TXBCSzFwNDRX?=
 =?utf-8?B?a21TOGNITGRtWUtWNlJldEszN0k3VFhpY1BBV1NFeTc2UFNhTUlrc29vN0NP?=
 =?utf-8?B?eUkxV3FXc3FsdGRNRFFQdmZXNG5oZENKT1plb3NxaUkxUGJNRTgyaXp3anc2?=
 =?utf-8?B?MHhod1FNWkViekVOY25oVldINFJ5eFY2cGJJcUNJK3RFREZIWkZkNXMwV1pJ?=
 =?utf-8?B?cWZzSDVZdGx3UHlhN0YzS0F2RHRZbzY4WFYzcjYxa0F5ZCtua2NTdEtEb2FF?=
 =?utf-8?B?MlF6MHo5TEdESDhEY1BheEs4K2I2RGY2blNpcDJoVjJXSjVyTlh3Vm9WWmNk?=
 =?utf-8?B?Wk92eXBZZjI2NTFoRlB2TGVKVUJac25DLzVQT1UyVnZDd2ttUEZQOUFuNjdt?=
 =?utf-8?B?SHNSTUkwRWhrbCs3bVN5NHhHVnRON3JvYU1BMWtSL3F0WWVNZWc5UmhXYUxG?=
 =?utf-8?B?SWRyK1VNSGxWRCsxcUFPWS8rRFhCNkRvZGdCR0hQQjhZVGhiTUpXdUhYeDVR?=
 =?utf-8?B?dDEyaG5PT0RQdmt3ckNiRlNFRmRQTkcyUVpMUG53UGM3bkVFbmQ5TFNHWXEw?=
 =?utf-8?B?OEpSaUM3NnNOODI5MkdrSWhHSk1FVkZENGhPRHFIMGlxb25NZmZ6ejRNTlQ5?=
 =?utf-8?B?MDVraGZSK2pvMytmaSttYmlrNWdLSW92c0tzLzRoQ1dPK3Fsa0JxUlY0NWJG?=
 =?utf-8?B?dVlZMnJvSGZLMTRxOWVybThsM3N4UjU0YXdpUUkybVgzaU1PYVAzS2I4bGF3?=
 =?utf-8?B?SUFIWDF2Y1NNTlBoRmE3OHlDaUNrYmk2anMyQXVsMUhwdU11Zml2bFFodzRS?=
 =?utf-8?Q?GEtg1651HThPg4BAwDJE6Ei7T4LB0Tf7OHvJ+X7?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9BC7A8CC23E5794595729C4047056E33@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3770.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f12a810-1f88-4b27-6e6d-08d91ecfa82a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2021 16:19:07.5334
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qQR66Nq0j2GFIjKqu5qTrMn98Jsuoy5aQ/HB5AIpm7mR09PFVIqmczAhsBpbqPRUEKCjtfQfVtKcf9M2V3/0+IdHXo8Iy425tRaXZJn/2l4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1820
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gVHVlLCAyMDIxLTA1LTA0IGF0IDEzOjM1ICswMTAwLCBkYWlyZS5tY25hbWFyYUBtaWNyb2No
aXAuY29tIHdyb3RlOg0KPiBGcm9tOiBEYWlyZSBNY05hbWFyYSA8ZGFpcmUubWNuYW1hcmFAbWlj
cm9jaGlwLmNvbT4NCj4gDQo+IFRoaXMgcGF0Y2hzZXQgYWRkcyBzdXBwb3J0IGZvciB0aGUgTWlj
cm9jaGlwIFBvbGFyRmlyZSBjbGtjZmcNCj4gaGFyZHdhcmUgYmxvY2suDQo+IA0KPiBNYWpvciBj
aGFuZ2VzIHNpbmNlIHY0Og0KPiAqIEFkanVzdGVkIGxpY2Vuc2UgZm9yIG1pY3JvY2hpcCxtcGZz
LWNsb2NrLmggdG8gbWF0Y2gNCj4gbWljcm9jaGlwLG1wZnMueWFtbA0KPiAqIENvcnJlY3RlZCB0
aGUgbnVtYmVyIG9mIGNsb2NrcyB0byAzMyBmcm9tIDMyDQo+IA0KPiBNYWpvciBjaGFuZ2VzIHNp
bmNlIHYzOg0KPiAqIFBhdGNoIHJlZm9ybWF0dGVkIHNvIG1pY3JvY2hpcCxtcGZzLWNsb2NrLmgg
aXMgcGFydCBvZiBkZXZpY2UtdHJlZQ0KPiBwYXRjaA0KPiANCj4gTWFqb3IgY2hhbmdlcyBzaW5j
ZSB2MjoNCj4gKiBJbiBtcGZzX2NmZ19jbGtfc2V0X3JhdGUsIHJldHVybiBpbW1lZGlhdGVseSBp
ZiBkaXZpZGVyX2dldF92YWwNCj4gICAgIHJldHVybnMgPDAgDQo+ICogcmViYXNlZCB0byB2NS4x
Mi1yYzENCj4gDQo+IE1ham9yIGNoYW5nZXMgc2luY2UgdjE6DQo+ICAqIERlcGVuZGVuY3kgb24g
U09DX01JQ1JPQ0hJUF9QT0xBUkZJUkUNCj4gICogQWxsIHJlZmVyZW5jZXMgdG8gUEZTT0MvcGZz
b2MgY2hhbmdlZCB0byBNUEZTL21wZnMNCj4gICogQ2xlYW5lZCBlcnJvciBoYW5kbGluZyBpbiBf
cHJvYmUNCj4gICogUmUtb3JkZXJlZCBjb2RlIHRvIHBsYWNlIHN0cnVjdHMgZXQgYWwgYXQgdG9w
DQo+IA0KPiBEYWlyZSBNY05hbWFyYSAoMik6DQo+ICAgZHQtYmluZGluZ3M6IGNsazogbWljcm9j
aGlwOiBBZGQgTWljcm9jaGlwIFBvbGFyRmlyZSBob3N0IGJpbmRpbmcNCj4gICBjbGs6IG1pY3Jv
Y2hpcDogQWRkIGRyaXZlciBmb3IgTWljcm9jaGlwIFBvbGFyRmlyZSBTb0MNCj4gDQo+ICAuLi4v
YmluZGluZ3MvY2xvY2svbWljcm9jaGlwLG1wZnMueWFtbCAgICAgICAgfCAgNjcgKysrDQo+ICBk
cml2ZXJzL2Nsay9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0KPiAg
ZHJpdmVycy9jbGsvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstDQo+
ICBkcml2ZXJzL2Nsay9taWNyb2NoaXAvS2NvbmZpZyAgICAgICAgICAgICAgICAgfCAgIDcgKw0K
PiAgZHJpdmVycy9jbGsvbWljcm9jaGlwL01ha2VmaWxlICAgICAgICAgICAgICAgIHwgICA2ICst
DQo+ICBkcml2ZXJzL2Nsay9taWNyb2NoaXAvY2xrLW1wZnMuYyAgICAgICAgICAgICAgfCA0NDQN
Cj4gKysrKysrKysrKysrKysrKysrDQo+ICAuLi4vZHQtYmluZGluZ3MvY2xvY2svbWljcm9jaGlw
LG1wZnMtY2xvY2suaCAgfCAgNDUgKysNCj4gIDcgZmlsZXMgY2hhbmdlZCwgNTY5IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL21pY3JvY2hpcCxtcGZzLnlhbWwNCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2Nsay9taWNyb2NoaXAvS2NvbmZpZw0KPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xrL21pY3JvY2hpcC9jbGstbXBmcy5jDQo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9taWNyb2NoaXAsbXBmcy1jbG9j
ay5oDQo+IA0KPiANCj4gYmFzZS1jb21taXQ6IDlmNGFkOWU0MjVhMWQzYjZhMzQ2MTdiOGVhMjI2
ZDU2YTExOWE3MTcNCj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiA2ZjdmNzAxMjBhZGZhOGU5Mzhi
OTc1MTdmMGM2NjRlNDNlODc0NWEwDQo+IHByZXJlcXVpc2l0ZS1wYXRjaC1pZDogNGVhMzcwMDhk
MjM4MzhhYTJlMDY1ODgxMWZlMTU0NjJmNmNkYmQ4Nw0KDQpUZXN0ZWQgb24gTWljcm9jaGlwIFBv
bGFyZmlyZSBTb0MgaGFyZHdhcmUgbm8gaXNzdWVzIGZvdW5kLg0KS2VybmVsIHVzZWQgNS4xMy1y
YzEzIA0K

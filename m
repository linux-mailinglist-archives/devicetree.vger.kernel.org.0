Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 029A5352A7A
	for <lists+devicetree@lfdr.de>; Fri,  2 Apr 2021 14:08:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234448AbhDBMIl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Apr 2021 08:08:41 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:13692 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbhDBMIj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Apr 2021 08:08:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1617365319; x=1648901319;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=2emxkhUUVTR8V9FmrPsoFlpjtYT1rVQcdB8H0Vbj4yc=;
  b=ewBKpN2uN/A206nzK+4coIRc5PT3rGDeFl1cHG0VGf1kcAwPjSinhv1O
   jkOzoJz/UOLv0fnLS2ps1/+NOaub/IMzg5HliV1HfCTt0mTRNslKbJPaV
   VXJ9VY3HyMenBcRCWqEyDnmCOQY8HxZU7V6hmubEuiy+A5HB3uOJbLa72
   CbgVPH4D7BV0Soh8PAkxh6X/5OCC8G5NRKcvE9cXOlBRbedEoaqYlsDSl
   wn7ghuzBSdeCCE+AZj6XCv6qVTrmEHS7BDYamkPx/dfWIh5fRWzy/NHK3
   O0UNiAyRWFJ14vj69MTyg4RhMNMeEVMgRs8QFTp6C+yOyFUAnAZcB0iq/
   w==;
IronPort-SDR: PI00e8hb5cFzw8WGXoBU6WLt4KGSn6Tfzqhf8Iscn21yR4eLgK1IZahp2NVctrDWrIY3K2Pf1D
 MzlQKCc2DH50LNbuZ241ecugS393GHcjsPkfGuoBbkm16KYjCt4mmTu4gRZ6SI6iKikLHE6bda
 9EU2oMG1H18J8uq0zyOG8/f4DcKBz3IUpbP6rALIWzT+7fudueK7WKbO+gU5kkHVwpqSjUGizR
 aY0333UbXC6YVfGSc7DYzztBxWQmtwRBymtR642boiS6eg/QVhOK+SH5fxhvFpWv7PQcVZlJAs
 dF8=
X-IronPort-AV: E=Sophos;i="5.81,299,1610434800"; 
   d="scan'208";a="115107936"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 02 Apr 2021 05:08:38 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 2 Apr 2021 05:08:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2
 via Frontend Transport; Fri, 2 Apr 2021 05:08:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J0mTjmSKo5D/162FYbGaiqoukdM6YBhVGI5bLHXzBHWo93qClvPZmeUirA6lUGP3Z95G8PWS6tmEYoYl/RsaisPg3Ttk8K1JIbmfo4spc9bGZit9YGAX0rycafJJwKQBvhqJC6vjfOaxqIbX7yzs8wTYjob4SYpjKbeAfuYXRAwWFy5P9lLJX1GPik++bqNYas/zMjvoux80/+CCBT4y86ruwslxqaPmOFSwoxphdEY9OWJCxbPCdIvg6IbyXAvHcmsQBz4VEuSADfo48gF5DOsy42Yhk7/VvexCsvgt2AliuTMyvhXC271upyq5gLcPMnP3qOnEP+qCZ4nlCjUd3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2emxkhUUVTR8V9FmrPsoFlpjtYT1rVQcdB8H0Vbj4yc=;
 b=SJDP1nvlvruKtlxRAHJOneLjJfvvCVLls2XBo1CQZHarlPiokTPzmT5WoSzm/+6ZQB8eFlW9Vh8fAQVAhw/ad4kDLSOap5y4BDaKewnU0PBCTLnq4RVmtdBE4S6WiyuswvXURVEc7RiiKWvjtMFcT1OzqgpgmaY2GFr2hy9+gIYvTHt5Ma1bdBeO3MiKEPLDref38ENToDZu7uOo9ATSJjsBmd97hiYBarNhmrPwKNKdWJzxHbgcFJUksu8m1OZWYz6tTsatS3Bq7nGiuO4xME8aQZddG6C/Yai9jwXmXKPBHo0GWnUXhkA0xTmGnRZGLVjFj78ezgwllckDd91PAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2emxkhUUVTR8V9FmrPsoFlpjtYT1rVQcdB8H0Vbj4yc=;
 b=d27ChCFBQafW/bv7IocOzMbasCRRUN+SFbuDmEL+ogVYgvU1dcL+UqPswy40k9dZ06lAO2nyku82TokE1GEIkQEC3MJxhDCObGLNui5aX0ZIlTyrGA0qSeT4W9JndYgSpQJwTUA1ln24JBElbeLuvrWwsPxOzG+ymrdLUXcRh8w=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:95::7)
 by CO1PR11MB4932.namprd11.prod.outlook.com (2603:10b6:303:98::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27; Fri, 2 Apr
 2021 12:08:35 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::1ddb:df6a:6208:ccf9]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::1ddb:df6a:6208:ccf9%5]) with mapi id 15.20.3999.029; Fri, 2 Apr 2021
 12:08:35 +0000
From:   <Conor.Dooley@microchip.com>
To:     <jassisinghbrar@gmail.com>
CC:     <palmer@dabbelt.com>, <robh+dt@kernel.org>,
        <Damien.LeMoal@wdc.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>, <j.neuschaefer@gmx.net>,
        <Lewis.Hanly@microchip.com>, <Cyril.Jean@microchip.com>,
        <Daire.McNamara@microchip.com>, <Atish.Patra@wdc.com>,
        <Anup.Patel@wdc.com>, <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH v4 0/5] Add support for the PolarFire SoC system
 controller
Thread-Topic: [PATCH v4 0/5] Add support for the PolarFire SoC system
 controller
Thread-Index: AQHXJVTFPyo0SISS3U2ehOcAXtKWoqqdNUgAgAPx3QA=
Date:   Fri, 2 Apr 2021 12:08:35 +0000
Message-ID: <bec1f254-12e2-0613-6233-43a7090e6643@microchip.com>
References: <mhng-1b7b4cb7-2f9a-4bdb-b00c-14ec1d7008b0@palmerdabbelt-glaptop>
 <1afc3d35-55ff-eefd-3fc9-6342f85fa887@microchip.com>
 <CABb+yY2s+ovT4Dhbsy4Mjn2EtgEwYdezhmUcL3H8GWCdaO2bPA@mail.gmail.com>
In-Reply-To: <CABb+yY2s+ovT4Dhbsy4Mjn2EtgEwYdezhmUcL3H8GWCdaO2bPA@mail.gmail.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [89.204.252.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d53ecd9-3fe1-4401-7238-08d8f5d00a8d
x-ms-traffictypediagnostic: CO1PR11MB4932:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB4932A361A5D671C131E74B5C987A9@CO1PR11MB4932.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y6QjGz3ep6ZuazjRXE9jXa1oWhJYQFzEWLFJWMfny0XXWCNw+NtSw/zIWdZW8b0dWLDlMEQBt6eSTNd4yIiBRdEI0bCt2P4uc5tPSBz7GekXvOCQV4wjiWa7y7GP+wN4ebTbYKEqe7w2OR04mD5fK3mtu7IF69kqkFnLruqRJByDV0Zsey4Mr7/uOGU9HYVRVsmhnAmYBsnJnKdQ0UD0SlIBl2mAOlKE5JVssZohKVW/3e+OMrzxgbMbW0qcoEekO8Egcr4z0Lzt9cvazJAtvBfvTOI9sllB93LsKSoYs2J17zvnrcHtEenxN2oqJknF9kHU0NW/kXog5V9oAUI+QNyfIKBsdVLUDBClL+cWLGmnH07lbhG0E6xqY27mhw1wJqGSK9QfE95j0CU2JstHc1SZnPJkwd6vuMOpiL/3qpwynRhg1umKuA4fjJYhm8iZ6zG25EPM+OyWG/O6Zub6HRjcSJME8twXAz6qBK2VWM6Wu/qOWs22dVo2lSzDwRz34b3WBcQ7Q51C+L0MYo6Se8nf1HRHtqEClohZGr1xDxBAIE7Dd6RRfYyF0wZvlAnTFQDPjSCIW1JFCUnQaG1rRgPfIDHFAaWtgluRo+iO2rbbSQbOm3tIqjad+fv/Mplosyrytv1ZjNPx+xpTn3S/Il/3IG+oC35TjD1odnmLLLiX2kdWwmNcCYEPFMguts/GD4NN7qOmKIS5k/AasgWfDB04LK/CjZ9BKmsvLjyHwcvdulGKw/Ki0IrOWcr9r5IRXXIiM1RUx+UHJWmnEyjbNCUcopGdOK3VRB7fSzR6nlg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(396003)(366004)(376002)(346002)(39860400002)(38100700001)(71200400001)(966005)(83380400001)(66556008)(66446008)(64756008)(91956017)(8936002)(76116006)(478600001)(66946007)(66476007)(5660300002)(54906003)(26005)(6512007)(6486002)(316002)(4326008)(7416002)(6506007)(53546011)(6916009)(31686004)(31696002)(186003)(36756003)(2906002)(8676002)(86362001)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?bm9SUzhPeWZ0dXBMZktxbWcxb1RyZEFBUmVrWUtlOWxweTN0c1VZUE1saFRy?=
 =?utf-8?B?SjdZKzloaHM0YkxXWWl4QnJGWDF1bStEdFFOQWVTWCtwTVl0V3c1OEdCMDdh?=
 =?utf-8?B?ZGZXUmZLRy80RjdkUFcweEgvaFhmR1VRb21PM3lEMk82MW1Kc2paUlJOUzFL?=
 =?utf-8?B?bTd6bkhDQXZoT0RIN01PWGl2WWVIcDNqTk5nM2ZoM2MrSm5JclB1d29PdE9y?=
 =?utf-8?B?MUNrVXFDK2Npc2dRMDNqcVZIUzZvTE5zdjlMaE5Cc2pKcDhxazZPdjNDV1Vh?=
 =?utf-8?B?bXNpamxoa0lMNnorZDlNbFVVWm5pNXpmY2JXVW03b2tSbFZzSHd2N01FMFRD?=
 =?utf-8?B?VnZ2T2szQVYvZmszSWpwK1NkdDB2VWI1S0EvaEFjLzBmbUhzM0xpRU9nZGhh?=
 =?utf-8?B?ajd5NE1QY2tUNUY1Q1p3MlFvMVpkbnFqeWxqZ1JQT21QMktsRXZ4VldJckIz?=
 =?utf-8?B?K0Eva2dzLzJoVEticEpZLzZUb2ZLTW45NlBQakxRVzBzUVp5UnZZMmIvTkVq?=
 =?utf-8?B?WWdJVUJFMzFmN1dydE9LQVBLTm1NVGlKcVBRY0tSeXI5Qk5CTlhMRGdLODds?=
 =?utf-8?B?dGpUVEZiUVNCYXVEWklzNExocHdTS3FvUW83NXluckdTc0swSjBFN1dxc1hQ?=
 =?utf-8?B?WVBRaFVBZEQyMzdMOWpWOWlPSm1kdVFkM24rM3Vyb2VoOHdyOWd3eHliS1BI?=
 =?utf-8?B?YlpUY1VLMW5LQlB0QVJaODlaZUIrQWRlWENhVFFXQmhud3pqak9Ha0pGRzNV?=
 =?utf-8?B?RVdPenp0ZVR4dUVISTNWOHM3SFlvM1BXQ2JTRUF2eXdremQzcHBoYzVYaFo1?=
 =?utf-8?B?TnEycVFSV0YvS2VOU240RkJtWG9wdVJzRkdjdytCZGZvRkZYbnhnVXdVd1RP?=
 =?utf-8?B?akkyajlzemZDeUxwUWJINmFaajV2VVh6UWp5SVpkZEZMbXFrc1JMa3dJTlNU?=
 =?utf-8?B?SmRKQjROMUUwbmxvSDUxRk5sSzg1Y2xWVUIzWXZuWnA3R1NkaHVhUnhoNlE3?=
 =?utf-8?B?aG9mOWowZ2Y0MVhXTkNhWUlmODRpSWZuNlNpSi9UalZnZkVwcHVGZ2FXak5j?=
 =?utf-8?B?L1dLblVLMERvempTbU1vbmg5dzBpZTVoRzkxVWs0OXBTTWkwcUtxbzh0bWE3?=
 =?utf-8?B?SmxWUE5DbEZnWGtlVndrL1M3bUo2anJyKzlNdjVoVU9QQ0dkdXVOc0hhQnV3?=
 =?utf-8?B?VCs1V0hQMXJJQ001NzU4clRBeTBjQ0lwdk1hSml0M3FsNEMydC9YRkZpNWJt?=
 =?utf-8?B?SWwwcjdabm9WZ0hZZWx5YkljQ05zOEovNFpuOEVwMGt5VHdwVWRlN1V6V01L?=
 =?utf-8?B?VzBCMXJGYXJ2Wmh4S1B3Z0k5MmNpTi81ajBnS1NZZU1LLzZXSysrU3dleVlQ?=
 =?utf-8?B?aE5KSnhNdEtNVVhHZzdoV0FFVUl4dXg4Zk1xMkM3bXE4MGhQZ2JmSHRrYUFt?=
 =?utf-8?B?eTd3cGlIbUtaTDZQd3dDcG5KaytPSzR6LzAyWm5ERmE2ayt3Z2I1MXpmWXBa?=
 =?utf-8?B?MzJHQkRBZXFzb2lEY2R5dTQ4MVBlU2RLYlhQcG15OHRxaVRBVWlIL2JsSUZW?=
 =?utf-8?B?NFpBakF1Mk1BK1ZDd0ZFbWY3TG5vaG1WM1FGOFg2RERqR3U4cDlCYXRzelFm?=
 =?utf-8?B?djNpR0wvUGd1NHozNysvOTVGYVh6Smdpbk5ZbXpmbzNEeTRJSHRudjZpL3JG?=
 =?utf-8?B?RFVxZmI2M1pDcEw4SCtOTWpLS3R0T05PcGNtN2VYMm5rSTd1Q0lLTmsvMHpP?=
 =?utf-8?Q?nvZQz6P6+9zM8GIk9thD1UZlOcJAySwoBzCIGoh?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E40BEDB52981964599946034E98DCD4B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d53ecd9-3fe1-4401-7238-08d8f5d00a8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2021 12:08:35.0625
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BOwRqhmVr5sWPk680lhlIaplP3vsj0uCcCL1e3s1i/8c0oBeEVdKCHQj7WZi7P7tRsDrf+F//3oGWlZ0QrhR7zuzH5oUnxSW019PPOsq8Rc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4932
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMzEvMDMvMjAyMSAwMDo1NCwgSmFzc2kgQnJhciB3cm90ZToNCj4gRVhURVJOQUwgRU1BSUw6
IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25vdyB0
aGUgY29udGVudCBpcyBzYWZlDQo+DQo+IE9uIFR1ZSwgTWFyIDMwLCAyMDIxIGF0IDY6MDYgQU0g
PENvbm9yLkRvb2xleUBtaWNyb2NoaXAuY29tPiB3cm90ZToNCj4NCj4+Pj4gICBjcmVhdGUgbW9k
ZSAxMDA2NDQNCj4+Pj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9taWNy
b2NoaXAvbWljcm9jaGlwLHBvbGFyZmlyZS1zb2Mtc3lzLWNvbnRyb2xsZXIueWFtbA0KPj4+PiAg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21haWxib3gvbWFpbGJveC1tcGZzLmMNCj4+Pj4g
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zb2MvbWljcm9jaGlwL0tjb25maWcNCj4+Pj4g
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zb2MvbWljcm9jaGlwL01ha2VmaWxlDQo+Pj4+
ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc29jL21pY3JvY2hpcC9tcGZzLXN5cy1jb250
cm9sbGVyLmMNCj4+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9zb2MvbWljcm9jaGlw
L21wZnMuaA0KPj4+IFRoZSBvbmx5IHByb2JsZW0gSSBzZWUgaGVyZSBpcyB0aGF0IHBhdGNoICMz
ICh0aGUgZHJpdmVyIGZvciB0aGUgc3lzdGVtDQo+Pj4gY29udHJvbGxlcikgY29tZXMgYmVmb3Jl
IHBhdGNoICM0ICh0aGUgRFQgYmluZGluZ3MgZm9yIHRoYXQgZHJpdmVyKS4NCj4+PiBUaGF0DQo+
Pj4gdHJpZ2dlcnMgYSBjaGVja3BhdGNoIHdhcm5pbmcuICBJIGNhbiBqdXN0IHJlb3JkZXIgaXQs
IGJ1dCBpdCB3b3VsZCBiZQ0KPj4+IGdyZWF0IHRvDQo+Pj4gaGF2ZSBzb21lIHJldmlld3MgZnJv
bSB0aGUgRFQgYW5kIG1haWxib3ggcGVvcGxlLiAgSWYgbm90IEknbGwgdHJ5IGFuZA0KPj4+IGZp
bmQNCj4+PiBzb21lIHRpbWUgdG8gdGFrZSBhIGNsb3NlciBsb29rLg0KPj4gSSd2ZSBoYWQgYSBm
YWlyIGJpdCBvZiBiYWNrIGFuZCBmb3J0aCB3aXRoIFJvYiBhYm91dCB0aGUgZHQgYmluZGluZ3Ms
DQo+PiBob3BlZnVsbHkgdGhpcyB2ZXJzaW9uIGhlIGhhcHB5IHdpdGggLSB0aGluayBhbGwgb2Yg
aGlzIGNvbmNlcm5zIGhhdmUNCj4+IG5vdyBiZWVuIGFkZHJlc3NlZC4gSGF2ZW4ndCBoZWFyZCBh
bnl0aGluZyBmcm9tIEphc3NpIEJyYXIgb24gdGhlIGRldmljZQ0KPj4gdHJlZSBzaWRlIGhvd2V2
ZXINCg0KID50aGlzIHZlcnNpb24NCg0KdGhpcyBzaG91bGQgcmVhZCAidGhlIG5leHQgdmVyc2lv
biIgbm90ICJ0aGlzIHZlcnNpb24iDQoNCj4gTm93aGVyZSBpcyBleHBsYWluZWQgaG93IHRoZSBj
b250cm9sbGVyIHdvcmtzLCBhbmQgdGhlIGJpbmRpbmdzIHNlZW0NCj4gdHJpdmlhbCwgc28gSSBo
YXZlIG5vIGNvbmNlcm4uDQo+DQo+IC1qDQpXZSBoYXZlIGRvY3VtZW50YXRpb24gZm9yIHRoZSBz
ZXJ2aWNlcyBwcm92aWRlZCBieSB0aGUgc3lzdGVtIGNvbnRyb2xsZXIgDQpoZXJlLCBhbmQgSSds
bCBwcm92aWRlIHRoaXMgbGluayB3aXRoIHRoZSBjb3ZlciBsZXR0ZXIgd2hlbiBJIHN1Ym1pdCB2
NSANCihkaXJlY3QgZG93bmxvYWQgbGluayB0byBhIHBkZik6DQpodHRwczovL3d3dy5taWNyb3Nl
bWkuY29tL2RvY3VtZW50LXBvcnRhbC9kb2NfZG93bmxvYWQvMTI0NDg1My11ZzA5MDUtcG9sYXJm
aXJlLXNvYy1mcGdhLXN5c3RlbS1zZXJ2aWNlcy11c2VyLWd1aWRlDQoNClNldmVyYWwgb2YgdGhl
IHNlcnZpY2VzIGhhdmUgZHJpdmVycyBjb21wbGV0ZWQvaW4gcHJvZ3Jlc3MsIGJ1dCBJIGhhdmUg
DQpiZWVuIGhvbGRpbmcgb2ZmIG9uIHN1Ym1pdHRpbmcgdGhlbSB1bnRpbCB0aGlzIHNlcmllcyB3
YXMgYWNjZXB0ZWQgc2luY2UgDQp0aGV5IGJlbG9uZyBpbiBhIGJ1bmNoIG9mIGRpZmZlcmVudCBz
dWJzeXN0ZW1zLg0KDQpDb25vci4NCg0KDQo=

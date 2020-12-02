Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5CCB2CB84D
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 10:14:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387927AbgLBJOj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 04:14:39 -0500
Received: from esa3.microchip.iphmx.com ([68.232.153.233]:34073 "EHLO
        esa3.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387797AbgLBJOi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 04:14:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1606900477; x=1638436477;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=PBMwD8WzpGJEscxKLGOH3iGtopS9AuPdUGCGE/BgPxw=;
  b=gsKrFvgERikgIjgbBN/CU8mUj2MxoFgWA/ZKf979Vz6wKZIJ4+kH6hOC
   jCBBvki+gs5qZzjuaZdxKNLgZSbC05KCXxwpQKh4IHrJZOk6KhjQ4M/f0
   Opr9XZJJEoWx2vXkD5vZbuxsseX79NZwyJtsZWN5KJhgAEt3Dc76DO8D8
   nXc2jYCIgzlC70M0SZ2redURq91X7Ag7DegcEgBqDNwqs30N5ma3fWSOS
   ao9bwJDrCodNLMyZtVCffmdnMBfsLD4k4HS6iJs+8FG00S9YndT4OJh3V
   ghryYjURHQvoWJHBZhsYuxVTap7cxnkB51jK8NOLythYIaFd3Y7X/Pyd9
   w==;
IronPort-SDR: 3k6sWBM4Dm6prQXh+Xvjqrwv7jGMz+/gxTPfbf8yhJY8+YVpNv+rioZ0kVmBsi4LiH7a79p9ac
 nvN/mse7Ywm6h+Z2dYO9h2D1yGzfjZvXeuoPir/ObcEtpw9FRXhzdByrivSU/UCH5Y5bRZSNia
 K1qJx7YLy5ZmIR0fEgXlpqDVma+wet5JJAgh+laoDzWs5VFKwag3YxLVE0GnnktwnoElXmQhP4
 NVvaNXfQVvtTr5SX3ufydhfMKwuVuNJiJc5nqsCpWpwktb2JAEwVO2bu8yWU36NANA5AFwvI4Z
 whk=
X-IronPort-AV: E=Sophos;i="5.78,386,1599548400"; 
   d="scan'208";a="101092937"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 02 Dec 2020 02:13:32 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 2 Dec 2020 02:13:31 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Wed, 2 Dec 2020 02:13:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=euySvAvvcJw3YzRttg6Kgki+HaahPJpNGkm8tbVgwtdIvOpmAKN/ek8F/6WWR9463OrpmX7XyyJsNbtN0fWInk0nw21SbcikGyXA6WuMlf19UQ6cJRGh8Cl9o+ZF6qAM/qZw8XV+7cYmMjE/RRAAW0Nps95O+dp97l3eXYQRCAeWBioZcqDY66YKyopjwEev3SmUN+D3zR1HaWPzLIhiIZI3JVfT6r6NUlEzKuo7HHyk+RLVb1AVV2o/S6PnrY0uraQTi++hSe1Tly2eoWd/V0/dyyYe6Ecna70Ibc+jaF1ahxNtjo9eLRzkyx7VR7sGDP0hDw0JlDljPBBzsUtqWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PBMwD8WzpGJEscxKLGOH3iGtopS9AuPdUGCGE/BgPxw=;
 b=dxyJz5EM+3GEQpReqr3WtvdEjfYF/gHznWOpxH1YGu69/Xx+nzNDQjI5dPibXb5wCVm9xI5s+opEutLBjxQRWlQ6Qfz+r0UudNJpD/w5Ge027QpjUmAyDiqWiBxOUZi9nGzNbNDmkO6fRvtKHoJir4PuinH8JQSBSQ5fswXNKPjgIYyqJjcoNlb46vWEX0gJMAyhTsY44CcJuPa/SG/k5sMKEBzBFalfAEixuRHa4Cnn0vFgh2kZHtqe4hmNOcITJ79N0+I0TYTmNPE0Tp8QI2pFVTwfSZ+luAUXpp1khDnIETPfkkitevsNIBIngjv04SWgQXhrb/w68qffUU8NFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PBMwD8WzpGJEscxKLGOH3iGtopS9AuPdUGCGE/BgPxw=;
 b=kusz3u0/lwzD1b2s4qto4xMvwdfuBUxsfSycnPTcAlSOJlTBxXC9T0qBSR8AeL1kNT1PRBznD7j+Z7DhN3g1mZRbnCK0WcVFQVl7dMBvcjhW1Bvr8ueqNli3aMoWoRvrrmlXATkP45wA4Ey6FvEcaB6dj1RSeaqgSLWw13pycow=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:95::7)
 by MWHPR11MB1520.namprd11.prod.outlook.com (2603:10b6:301:b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Wed, 2 Dec
 2020 09:13:30 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::a007:19e8:3f74:b14d]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::a007:19e8:3f74:b14d%5]) with mapi id 15.20.3589.037; Wed, 2 Dec 2020
 09:13:30 +0000
From:   <Conor.Dooley@microchip.com>
To:     <atishp@atishpatra.org>
CC:     <devicetree@vger.kernel.org>, <damien.lemoal@wdc.com>,
        <aou@eecs.berkeley.edu>, <Cyril.Jean@microchip.com>,
        <david.abdurachmanov@gmail.com>, <Daire.McNamara@microchip.com>,
        <jassisinghbrar@gmail.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <robh+dt@kernel.org>, <palmer@dabbelt.com>,
        <paul.walmsley@sifive.com>, <Lewis.Hanly@microchip.com>,
        <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH v2 5/5] MAINTAINERS: add microchip polarfire soc support
Thread-Topic: [PATCH v2 5/5] MAINTAINERS: add microchip polarfire soc support
Thread-Index: AQHWx9GX08ZpWwt4JUCkSm0fYfafqqniieEAgAD9R4A=
Date:   Wed, 2 Dec 2020 09:13:29 +0000
Message-ID: <1cb10c03-d5fd-c6bc-62fa-7eb854a31cba@microchip.com>
References: <20201201110316.28656-1-conor.dooley@microchip.com>
 <CAOnJCUL3qELbuDAAgyGB8jMP3x6WB1qhubd3UZNKqE5zs1B2wg@mail.gmail.com>
In-Reply-To: <CAOnJCUL3qELbuDAAgyGB8jMP3x6WB1qhubd3UZNKqE5zs1B2wg@mail.gmail.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
authentication-results: atishpatra.org; dkim=none (message not signed)
 header.d=none;atishpatra.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [89.204.252.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96c26ca4-42f1-4867-9fd2-08d896a288fe
x-ms-traffictypediagnostic: MWHPR11MB1520:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB15204A6AA0CFB731EBFF7BF598F30@MWHPR11MB1520.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9qloEvTQSTFJvktFI9g/ykR/xmGJQo5JfsYWj8lW7qejNl6oony8kUBKN3fdbytha5BfmhfIQqYJD0toCykJQX5nwsRqi10f5NJ7x1f3lQLjdBw4+2F9Ot4rZXBGmn3kdUijJx+j9BCJF2OsAnae09ZI98J98sV8eqbgd0pFjrwmmhjzgcSgLqwSWuWB6rATV2Wb0L3JnRkKAUJ2iN0lK3j5fHLQRn+SZpmq9Fhr1g5xfTpPff+WW4lZDXWVpWEl8y4ts86eN0vXmBKlu04SbydBKnoHp8RRJCPa/qOMnS7s3udcnqb4TVC5rnuYrt/rc49cIZV8REiWCWoEN/XpNchWHVTXxbixvq3a10H+MCr1MJHQAeuhc1ob2MkzyJBU1yLSPJmyq8eqHXN3fcthuSZmh6YZI8+tiuSq7ZDZ2KOYxwO6jx9C9RHHB+8IcIh7o9LxDf4AJPffH8LfxwDy3LJIcuTTKXTpMjeS+ddBQUG49r/5OK8zLIobok6cWsJ6
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(366004)(376002)(346002)(396003)(136003)(7416002)(26005)(6506007)(53546011)(83380400001)(71200400001)(2906002)(8936002)(86362001)(91956017)(6512007)(76116006)(6486002)(5660300002)(31696002)(2616005)(8676002)(36756003)(478600001)(186003)(31686004)(66476007)(64756008)(66556008)(66446008)(54906003)(6916009)(316002)(4326008)(66946007)(966005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?OGxvRnBPbkthZ2d2WHdXVVIzd0dKZ09TZlFPZkRSaE5oc0JqcXV4OHRna1l5?=
 =?utf-8?B?VFozeCtvbmx4cVFZWlFmZ1FRakZLRDdVbHZzei9CeTQzL1ZQR0tNcHlXMTlW?=
 =?utf-8?B?Vnd5QnhzV0NtaWo0Ny9Rb25qa3FZeWRFcVpwbTBTN2NCbk1qWlhuVzdpMzdE?=
 =?utf-8?B?clJEc04rSkhuTUw0c0ZZbms2Z1hmY3ZjWlYvUE1yb3R3U1ZMNytWT29yTUtB?=
 =?utf-8?B?YmxUL2Noc2tpYnhXTUh2RVBPZDM0aCtXUHl0Mi9tejdBZnpiR2ZHeGltM0sx?=
 =?utf-8?B?RXB6djJYUGk4WUE3cHN0NkNLQzhwZUNDWU9BNG1BMFRwRlpBd0VUNmc4OW8y?=
 =?utf-8?B?dWxkUTJ0d3k1UytqaDdZUTVSWmV5VGlnTElGNlh3UDlIWGcrTktuKzFYeEg4?=
 =?utf-8?B?U2Uya0FUYlJNWlo3aytQSTVjSGU1THZsbmRTRWx1WFVYUVZxdXJVSG52b0NR?=
 =?utf-8?B?SXBRamhwNVoyN3BaTzhhZGtRMUlvQUdYakUwSkNlZWs5V1RmYWxwamlSYVFl?=
 =?utf-8?B?US9QYWlsSFlqY1JLb203Z0hzWXYvQ21hdlVaNjNsYXZZbjlTUWpQam1lK3p6?=
 =?utf-8?B?VmhQS3FPVFlXUC9LMW1JTkdXTUFqYjRXMk14WWZaa2JqQkE3U3RFd0NTRVlB?=
 =?utf-8?B?Sis5SlFaVU1UaUNwTlFZOEdaQ1VteVZEeW1nckYva1J6MUxBVnRDSml1bjFE?=
 =?utf-8?B?eGRHWFBvdW9jYWxxMGt3NU82N0tnbGxRTUV6aG5CcHpwSlIzNm9jcmRsNlFU?=
 =?utf-8?B?NG9IR1RJMVlRTXM5dkJRNENBcTFTVkkwMmR2TnBxdUNUaHNKQllkcGIrMkFk?=
 =?utf-8?B?M1Zva25DU1RLWlN2MFVqVDI2T0piMmdoWjErRUtEcjZ0MEV4bk16SzhrRE80?=
 =?utf-8?B?THNKdFhQUDZ0dFozOUdtMEkyWnZRMTZhM1BFd3RpVjFqVlFLOE5YZDN2K1Q3?=
 =?utf-8?B?ZEZXWkhSUml4WWptb0Izd1FaWVVza3RhMUxtOVRERnBUbHlxUGdLRHFlakRI?=
 =?utf-8?B?eXZMS0NhZzVjSDlQdkhnQXNaUGtZTjJ6cDBhYUNkWjRaUCtEM3pUenBsSk5J?=
 =?utf-8?B?cDNMRG9lK3ZoUFNJVDdnTEM2Nmx5MHd6cXZ2U2RKQ2puL3RreGMwV1p5MFpY?=
 =?utf-8?B?emlWVHk1dzJuSlpsSlNrTGtRTTVreHNGMTdBTkVjVG5yL0thOWQ3bEswV0tJ?=
 =?utf-8?B?Z2svZXpnSVpvU0FWamxmQnNFUHBMMUZrTXNVaUFRWUxzcmZ3NllUUzF5dzlG?=
 =?utf-8?B?b1p1R1l2bDlUQ3VtM2dYcGZteTBKQWg5eFpiVWZsWU95YkZyb1FXWVdNcElH?=
 =?utf-8?Q?tgJnyREzWAgV8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <652A3F58F739C34190C6E75E478379B0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96c26ca4-42f1-4867-9fd2-08d896a288fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2020 09:13:29.9345
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2vEPD8o0VqKMg1zInOg8pFfmzQH1TsafB+SIVZXcb/aTNPjmewdfGyA94293OQh9jGcUpzOv+3DQWpXCh0+0+WehDNPTRucWh+X9rcYChno=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1520
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMDEvMTIvMjAyMCAxODowNiwgQXRpc2ggUGF0cmEgd3JvdGU6DQo+IEVYVEVSTkFMIEVNQUlM
OiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bmxlc3MgeW91IGtub3cg
dGhlIGNvbnRlbnQgaXMgc2FmZQ0KPg0KPiBPbiBUdWUsIERlYyAxLCAyMDIwIGF0IDM6MDMgQU0g
PGNvbm9yLmRvb2xleUBtaWNyb2NoaXAuY29tPiB3cm90ZToNCj4+IEZyb206IENvbm9yIERvb2xl
eSA8Y29ub3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+DQo+Pg0KPj4gQWRkIEN5cmlsIEplYW4gYW5k
IExld2lzIEhhbmx5IGFzIG1haW50YWluZXJzIGZvciB0aGUgTWljcm9jaGlwIFNvQw0KPj4gZGly
ZWN0b3J5DQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogQ29ub3IgRG9vbGV5IDxjb25vci5kb29sZXlA
bWljcm9jaGlwLmNvbT4NCj4gSSB0aGluayB0aGlzIHBhdGNoIHdpbGwgbWFrZSBtb3JlIHNlbnNl
IGluIG15IGJhc2ljIFNvQyBzdXBwb3J0IHBhdGNoLg0KPiBDYW4gSSBpbmNsdWRlIHRoaXMgcGF0
Y2ggaW4gbXkgc2VyaWVzIGFzIGlzPw0KDQpFaCBzdXJlLCBJIGRvbid0IG1pbmQuDQoNClNob3Vs
ZCBpdCBiZSBzcGxpdCBhbmQgSSBhZGQgdGhlIG1haWxib3ggZW50cnkgaW4gbXkgc2VyaWVzICYg
eW91IGRvIHRoZSByZXN0Pw0KDQo+DQo+PiAtLS0NCj4+ICBNQUlOVEFJTkVSUyB8IDkgKysrKysr
KysrDQo+PiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQ0KPj4NCj4+IGRpZmYgLS1n
aXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTDQo+PiBpbmRleCAyZGFhNmVlNjczZjcuLjIy
NDFiZGFjNDgxNiAxMDA2NDQNCj4+IC0tLSBhL01BSU5UQUlORVJTDQo+PiArKysgYi9NQUlOVEFJ
TkVSUw0KPj4gQEAgLTE0OTg5LDYgKzE0OTg5LDE1IEBAIEY6ICAgICBhcmNoL3Jpc2N2Lw0KPj4g
IE46ICAgICByaXNjdg0KPj4gIEs6ICAgICByaXNjdg0KPj4NCj4+ICtSSVNDLVYvTUlDUk9DSElQ
IFBPTEFSRklSRSBTT0MgU1VQUE9SVA0KPj4gK006ICAgICBMZXdpcyBIYW5seSA8bGV3aXMuaGFu
bHlAbWljcm9jaGlwLmNvbT4NCj4+ICtNOiAgICAgQ3lyaWwgSmVhbiA8Y3lyaWwuamVhbkBtaWNy
b2NoaXAuY29tPg0KPj4gK0w6ICAgICBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnDQo+
PiArUzogICAgIFN1cHBvcnRlZA0KPj4gK0Y6ICAgICBkcml2ZXJzL21haWxib3gvbWFpbGJveC1t
cGZzLmMNCj4+ICtGOiAgICAgZHJpdmVycy9zb2MvbWljcm9jaGlwLw0KPj4gK0Y6ICAgICBpbmNs
dWRlL3NvYy9taWNyb2NoaXAvbXBmcy5oDQo+PiArDQo+PiAgUk5CRCBCTE9DSyBEUklWRVJTDQo+
PiAgTTogICAgIERhbmlsIEtpcG5pcyA8ZGFuaWwua2lwbmlzQGNsb3VkLmlvbm9zLmNvbT4NCj4+
ICBNOiAgICAgSmFjayBXYW5nIDxqaW5wdS53YW5nQGNsb3VkLmlvbm9zLmNvbT4NCj4+IC0tDQo+
PiAyLjE3LjENCj4+DQo+Pg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4+IGxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdA0KPj4gbGludXgtcmlzY3ZA
bGlzdHMuaW5mcmFkZWFkLm9yZw0KPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yaXNjdg0KPg0KPg0KPiAtLQ0KPiBSZWdhcmRzLA0KPiBBdGlzaA0K
Pg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBs
aW51eC1yaXNjdiBtYWlsaW5nIGxpc3QNCj4gbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9y
Zw0KPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJp
c2N2DQoNCg0K

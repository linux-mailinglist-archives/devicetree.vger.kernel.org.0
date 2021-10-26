Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62CDB43BE15
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 01:46:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236415AbhJZXtO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 19:49:14 -0400
Received: from mail-am6eur05on2129.outbound.protection.outlook.com ([40.107.22.129]:31041
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S236222AbhJZXtN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 26 Oct 2021 19:49:13 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gDYwOLo+XRSrkt7TRPlw2SjYsYevS/7GGb2rqvj8of1nXgSPDnqpMYrDZluv0Z36iWt77OVN/cFeJ+zNg+qV5RR3Hk/vS1bzSpGpdtVT0uGno+si6JraIs+Zsh9gfXy+WKUkC55CIlFgRRUtvWzrzEC+uVBOIpNW2DnTVd47+zmL0rTeVf8kBuV/LA8VR+fHqjmCZKbJWZ0wy81XPYISK+1ZwqeOqPSOiaP8N07TWDjsGXc0C+5/pS7RrbMbQXB6WOV1sVZ4QmmJ2PXISiaPAELFwvfCtbIx2RwU4zjFJQ8payfbl3LMGPpGINtswGxSwMH8ehXWQ46zdwJHgpJYhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lNz4BA+SsCtpZ0PIwnIjibHmnSqNb6YH/Lws2M+Eaxw=;
 b=RxK8e2PQLoxRsOa7fUKL7C1nvJsnrS4zVO1rkGgvPp6GrHDuWL4Xw6aexlx5ncsjxsntAqQ5Ww5lRAW3IKKSscdsJVp0UB0ajVWp+IYInGwRA4AMak1UbT90WWnP3YR5pFxfTB+qQj2l8zQWOo1OIWAxwn/sy1kMQw/QIt25YJdMyd+rMnuOg1HWK3/BqjIo3VvTaAZ/8lJyBhjtYqhyQLJHI5GMxHuCk/cWYOMo5Prb6E8m3yIwYMlVI6r72VakfhTdR4msatn10MbNJGhYU9DERASto8WFiv1hlA7Buo8vxLGbCybVmq3QdCxH7TQ7E9FLL77AtAA9J+pGiVdcvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bang-olufsen.dk; dmarc=pass action=none
 header.from=bang-olufsen.dk; dkim=pass header.d=bang-olufsen.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bang-olufsen.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lNz4BA+SsCtpZ0PIwnIjibHmnSqNb6YH/Lws2M+Eaxw=;
 b=JowLCCiIIUtyTjl6LOnTVb/3oHoxn7A8vmYMMvFFBigzliqN/vd6BpXHzRq/IW9o5Agu1txA1FGFIKBqRrUCmvRlr/Hr/o0DLsgzFsphITESVcWNaYZx+HBehwHegoHcf0+3b2hthLtkU7GotBGhP3tYjHDoVuyl/fzymfFO6xM=
Received: from HE1PR03MB3114.eurprd03.prod.outlook.com (2603:10a6:7:60::18) by
 HE1PR03MB3115.eurprd03.prod.outlook.com (2603:10a6:7:56::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.20; Tue, 26 Oct 2021 23:46:46 +0000
Received: from HE1PR03MB3114.eurprd03.prod.outlook.com
 ([fe80::c19b:f59b:98f1:cd94]) by HE1PR03MB3114.eurprd03.prod.outlook.com
 ([fe80::c19b:f59b:98f1:cd94%5]) with mapi id 15.20.4628.020; Tue, 26 Oct 2021
 23:46:46 +0000
From:   =?utf-8?B?QWx2aW4gxaBpcHJhZ2E=?= <ALSI@bang-olufsen.dk>
To:     =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Florian Fainelli <f.fainelli@gmail.com>
CC:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "bcm-kernel-feedback-list@broadcom.com" 
        <bcm-kernel-feedback-list@broadcom.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: BCM5301X: define RTL8365MB switch on
 Asus RT-AC88U
Thread-Topic: [PATCH v2 2/2] ARM: dts: BCM5301X: define RTL8365MB switch on
 Asus RT-AC88U
Thread-Index: AQHXyoqwhtMaffeN/Ee9JssHkKJ1L6vl8mKA
Date:   Tue, 26 Oct 2021 23:46:46 +0000
Message-ID: <ba9c548b-9487-5bbb-0ff8-b081dbe8fd33@bang-olufsen.dk>
References: <20211026165703.17997-1-arinc.unal@arinc9.com>
 <20211026165703.17997-2-arinc.unal@arinc9.com>
In-Reply-To: <20211026165703.17997-2-arinc.unal@arinc9.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bang-olufsen.dk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b7ee1a8-876b-4351-4500-08d998dadf14
x-ms-traffictypediagnostic: HE1PR03MB3115:
x-microsoft-antispam-prvs: <HE1PR03MB3115938A0B93350EC5F7BB3683849@HE1PR03MB3115.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1201;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VHJUIXkNqMQhpvQZkjO+99EN9tU5OvZKkzLSemSdomSO95vsRP+NzT0uJjMRNtjHWVJGni3rmwgZIgKSxFxro7Xi/S8eIOwxy1xHMMKgmIp6Y71zWS51SbSygTGLmxwh/QOKYkoxcZ7oB4BTVXDY290bkH8OHlu2cLbuRTOi3T6nIkVLpFvYej9vaS5+177Sf+rI//O+oTyVAgo0/4EI+B2ms2HfhJ/aSrLcNPuyRTJzyncC7ZHSUlUeZbsvjk50CgXNFsrOuON8UMx4BCS+qfPJhfo41JOELnrdrAWqN7Q9aSgOXhPP/TAp91Ts85iJPbDYhSEUOQqlKSvk/GMBI1R9JtDtGPB7gbI/kY1av71AgCoLbEBj1AamCR6Ayc5jkdiLiV2xBch0gbjLCikwIqmp2yKbr7A07rHu7gblqtwriFlZiDyVWyXUd88k/K34I2yVsW445CK/Oo66W/0sVCcHktTGtTO8+4Nczg7EDZoiyvOT/EwS5wkCuAm+kvHhQD5Z1wcjrBck1a3SC+IcOqJV1//oWbmjmXNVGq4EHF9bdaUkFPVKADq8iNmuSbPXYNyLg+GqijAIrcH5iVuLgSf1DqHrlBaJ5GrkZc24w0NZO2H2mkuBBMYgqW0fE0tuBBqwfEeSK7CjoBMCjmgtvvtlguC5LOj//vAzuVd9dkutD0S17dRkbHA4GeDEmB0JL+bjjRaeDGMXxBnexrYIwcdOKGCaIZSjUvCb7GSs5AVcTErychrb6tJOPvdSd4FyMSwb4tKclucH253DMcaEIQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR03MB3114.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8976002)(53546011)(38070700005)(8936002)(85202003)(122000001)(110136005)(6512007)(4326008)(54906003)(6486002)(2906002)(31686004)(5660300002)(2616005)(36756003)(8676002)(6506007)(186003)(508600001)(66446008)(31696002)(26005)(66946007)(64756008)(66476007)(91956017)(66556008)(38100700002)(76116006)(85182001)(316002)(71200400001)(558084003)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TlBDWFdWb3JmL3NGVjhwdGxGZjJyWUkzeitFR0hBbTJtOXVCTkN5WkFlZzY0?=
 =?utf-8?B?T25Pa0EzeHlJTUZqMm1WZmhTbmZXMkRTN1lXLzQwNEZVOFhhZ0U2Y0JKMGds?=
 =?utf-8?B?emFFaU5mUy9kakxJOVNoZ094T1I5OGduQWdNYVY2bmJqOUdtRnlwZWNZQ1pu?=
 =?utf-8?B?ZDdJb2FnUmFwa3dSUDluZysvcnplZnhlSUFtWnZaS0JhN0VDYjF2VVBuT0hT?=
 =?utf-8?B?UWljNXk1clFFSVJ2R3JzYndYcFJyTHB3eURIWmlzQThHWmJCUlRTc2YvVDAw?=
 =?utf-8?B?T2dONUdoUW5CeGlSVkVmaWEwaUFnL0dvYTl5UDBrRW9Ka0o1MXA4ZnliRXVX?=
 =?utf-8?B?VlkzRDlnZE9SWFB0T2x4cWcvbnpIVXA3V20waEIxV0tDeWJyMHcyOU5Vc1BK?=
 =?utf-8?B?KzlnbUNheTRaOExaZEFjbnJ5dkxMRzNVclk5NTl3VE9TaTlwckppcUFhN1FI?=
 =?utf-8?B?R0ZWWjJaRDhJUDlQSGVsQWg1YkNaOXBhNGx1UTlVWlZYUk52RjZKWE9sSERK?=
 =?utf-8?B?TXV6c2FaWXJNNXk0aTQyZFRtVlorc0F6UmhsdmxDUGh1OEJwc04ydkFFdkpj?=
 =?utf-8?B?d1BmcUVtaE5nbnNrTEhhZlF0VDl5Sk1qUHpGZEt5U3IxdVdUSWlkV2dmTEFp?=
 =?utf-8?B?Nm40NW1DNTNaSFpZL2hSQ3lSemFuMU1XOFFjQnRDRWIwbGQxTi9UdkdvVnd3?=
 =?utf-8?B?V3UyUWdYbElBUi9GdlZnUzlNU3JOS1J3MzFCblZaZE9UcE5TNUU4blRDV2dE?=
 =?utf-8?B?QUZ0RUJQU3RUZGhVMjVJSTJxcXowT3NEbFRXd1VWZ1M1MjhZWXNTaElicVgv?=
 =?utf-8?B?Z3RuOU1ZckRSc2tPWE1CdjVPYkc0NDNQcWFUcURRSSt0UzEzSVFJUDhJWnVi?=
 =?utf-8?B?ckgxQ1RLRHVQMXNudkhrM2RVTEdScDJ6ZEdaN1Z0NncrVjNXZkhyY00yN3E0?=
 =?utf-8?B?Nm1lOTJKR2JVNHlTcSsyQkZwZ3YvbE5nZ2UvQ3dYcFRVZVoraG8raHR2MnRy?=
 =?utf-8?B?Z09GVi82cEpyd2dubXBMRXVaRjZVdWUzdTBCRHAwUEVPeEdyd081ZC9hcElN?=
 =?utf-8?B?R1hLdjNwZFpqTHBXRGw2NGxkclkzajFIZHNZL095a3NxQmlWLzh2MjYza1NR?=
 =?utf-8?B?aS92UStTUTNxSmNCMGRITHFmZ1QvNWNSZ2RXTStJZXRWalZ4Z1d1RXBmK0Rq?=
 =?utf-8?B?RDU0dFFkVVh1U1ljS29yUmNTV3o4S0JrbkdDa3B2UC9XdXJiREtCRHplc3Q1?=
 =?utf-8?B?R2pDazU4bC8xS05TUzJ6SnZJd3NqZHRxNlRUWjBFZ1F1SzYyYlpOVUo4ay84?=
 =?utf-8?B?dVVvS0NCdlJVdVo2RFhUUFlZVG9KSzUwYkRDMytQb2pIb25pRDhDZnVVQ2NX?=
 =?utf-8?B?M1ZMdDdJUGFvY0VEQjVGY1FFNEQrdlJDWlBIdElPSUhqSTYxd05MLzhaYlJr?=
 =?utf-8?B?YzZFblZFQndETzZhbHFaT1RyZ2VsYk9mdEVqRVFweStiY2drVTk0NFBWRWxF?=
 =?utf-8?B?VE5UcXdJbmZSbTF5TG9ZZ1h4eFdrdmFNQVNMelRqeWgvWDhLVGhGVCtLd29S?=
 =?utf-8?B?NzNmRkwxd0xDTGI0cUtsWjZkVzJxaG84czhJQmNreW0vZ2QwOVkwK3hEQVRy?=
 =?utf-8?B?SGEwcndldnZuNWUxaWtpK3N2cGliQWdiTFBKWERmOXpGdmJYd2tLRWh0bHFk?=
 =?utf-8?B?Rk5iNHJwVVZWTG9nNWlDWmVDdmRMZ0tkdjF1bm1zZDNKVU53TlBFaEFVdjdX?=
 =?utf-8?B?TlhzNE55djVYMWhJV0I4aVRsNzdmZXZFMVZUQmJkRUlPbHduZU1kRWxSOGFT?=
 =?utf-8?B?bmNPYnBzdmZ2cTFOcHlneEtKTTdBZWdCNy9IcXc4QnBISnpxUmpsOVk5bmZY?=
 =?utf-8?B?eVpEbndINXRDWDA4MWFtTVNGOWVyY0VVa29EWkhBbytJMTdyb044TFp3V3ZB?=
 =?utf-8?B?NjVSdzc1N24zajU2Tkxmb3JTbi96QmxUNmZrUFlRQ1RONDlKaVBmeml1SVNY?=
 =?utf-8?B?MUduVUtWVENxYnpCNm9Fc3NvNHRuNENHaGhwSjFjMHFDbVFTTUJOTUw5UFhR?=
 =?utf-8?B?cmNla3FYYk5nWW5BT0VSeWw4WDhvZitrV0xGdjFSMmgvM2ZmSnpoK3F4VHR4?=
 =?utf-8?B?MmNoK3FzZ0p6ejYxMWZFQlNsOUdOUjNtRitWNC9LZHZicDJlUlRpODZYSjlM?=
 =?utf-8?Q?nN5rEkNRZJYsTZflqq9bZts=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D5C032CF9F2D034EA32343BDC61BA587@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: bang-olufsen.dk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR03MB3114.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b7ee1a8-876b-4351-4500-08d998dadf14
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2021 23:46:46.1236
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 210d08b8-83f7-470a-bc96-381193ca14a1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tayBIc/ER4lzbZ1mwbMPtaiYCat6PPS6VT8hAS2vt80RYtg1h+jYxY7gkL6mi3NQh9ZPBC3l/URwLSBtYILonQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR03MB3115
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMTAvMjYvMjEgMTg6NTcsIEFyxLFuw6cgw5xOQUwgd3JvdGU6DQo+IERlZmluZSB0aGUgUmVh
bHRlayBSVEw4MzY1TUIgc3dpdGNoIHdpdGhvdXQgaW50ZXJydXB0IHN1cHBvcnQgb24gdGhlIGRl
dmljZQ0KPiB0cmVlIG9mIEFzdXMgUlQtQUM4OFUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBcsSx
bsOnIMOcTkFMIDxhcmluYy51bmFsQGFyaW5jOS5jb20+DQoNCkFja2VkLWJ5OiBBbHZpbiDFoGlw
cmFnYSA8YWxzaUBiYW5nLW9sdWZzZW4uZGs+

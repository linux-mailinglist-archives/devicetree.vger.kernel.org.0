Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11894467A21
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 16:17:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352748AbhLCPU5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 10:20:57 -0500
Received: from esa.microchip.iphmx.com ([68.232.153.233]:51653 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229655AbhLCPU4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 10:20:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1638544653; x=1670080653;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=N60uONHgD21jxvD48od8dLeGR98ahAgDecuw/71GwMw=;
  b=dZHD/ncqkmEDrIf/M3TxJk1a2p+mTTTbXv+S4k34/QVC5pK1mhjN/hLz
   qf5JUmC+9iS+EtwAiNRNbKgZazM793632KWJ7kk8a0MjeDmXx5tj8FXdJ
   bP2lZT18pLnamuuf/YnoUTGggU5tyIyZ0uhgmfTTPOWrggALUuk+/Sd0W
   PX3JyRMGZuVy2mvA9HFoykeTiWVracCeZWXfyIoUSIL+W/43wb2lNCD8m
   uFgnNxPS0Rh9+RWYW6xEuahkYUbzJp75FS0RLcYKd+zf+Yh8Mhq+jNSot
   rZsVPgEQXbyvub9FpkrTBUTN40zWLsq6v0EcpU/pahrvunFUjF+UZZEE4
   Q==;
IronPort-SDR: IkOhhxGUvJfSy6OSexBwGZtzfmERqtCr/eTARXguOmcBIKVIg2641Rug9lQCeKiFEFmIFukQjo
 8Vtb/3/GQi3E3576XBl2vKtFOyQ7Kz6EjPTd5hvSXp8BacyKxkRbrUIGDII29CFWJ2yhNsc0zW
 /N/ovRWduIyz8l9O2GF3yM2lalA/6GholSL+9EK7TNnd4JVit/Uq4b0a07vsecg2ALt7o4StSF
 Q+MQh6fokD7QTQ5vE2b7zyoIJGIWvhlZwLzwn6gUsCFtaO2FzOla2I0nA3FHjJ9ZLRm9xSWP3n
 V4B/GWGUFmhDpFNvK9U9M55w
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; 
   d="scan'208";a="145443528"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 03 Dec 2021 08:17:21 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Fri, 3 Dec 2021 08:17:18 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.14 via Frontend
 Transport; Fri, 3 Dec 2021 08:17:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YBiDUsdwEnMArjMX7/Ziv19nthyXTt/ISQvH3NVDxPriUtqxNR6giAxM/SlNUryhsol63JUlZoSNjg9zClNtEVIYhDp1fDyDW7hg3qOBLR+xARqbrqSEVRR2uoUwAl46p/lzeIncREauhXpOrcF4/GflOUOPpJpmvDhzC1XJU6l1nZvsZo+71aePUrMSn995RqzE1HgN9CeTr+o/IYPR4YOHFQvci1C9Bwtd0404uKLr3QGJYOZkjs8fdL0N5rxROkxBbJerfufziNyv+syBu+rjCmgSwCjW8d4+XILQmj64Y4GvWiITLUShVvpjiOcliio09/TpyFJmLpYBKImxGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N60uONHgD21jxvD48od8dLeGR98ahAgDecuw/71GwMw=;
 b=Z7+gp7bRvZKbkgBI4svBJIq3doPCkXTkRDE4m0BIqPmCSFkJccgFq+JddvWAjhuDmFE+M/sZendwzY77cAdZLJ8QJCMJBNVYxCs/pM6901qGHTtkQPyRR8K6haiBTvOSVjUgU9y/8jE5rz8Gjt+glNepMhSevRI5HHTS+bJwQXgOeR74c50WkaWPbonMrWnwcHUjv8jfetverR/J4rDLE8JjnwycPRinkoP0FnTJs96fDvsCS0l+cl70qG20WLzN8CvCrwHcBUUcIgWcpApETYKrKzueY5HLIhzLRmNL8b/KPeG/Ql8oJi39b6PDehUWzSc2g3lxe7XSpLSip5/wPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N60uONHgD21jxvD48od8dLeGR98ahAgDecuw/71GwMw=;
 b=csO2RP7ZDnWxxEo2Zd9zQ3/NPlh0fSiHW7IYDLxONK37Mumh6FX9U81BK89sxcTtq5HJ7OyhmQdRZGlcbrRGOxvFfDfKvleAB5rGG6RkJWeQVjVd/RNexcSuwo5MCvU4wpEonRHWR5bXy94fxsXjhU3voolZUMkWwF52vyKjpKg=
Received: from PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8)
 by PH0PR11MB4933.namprd11.prod.outlook.com (2603:10b6:510:33::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Fri, 3 Dec
 2021 15:17:17 +0000
Received: from PH0PR11MB5160.namprd11.prod.outlook.com
 ([fe80::f896:5b6a:7c35:fe37]) by PH0PR11MB5160.namprd11.prod.outlook.com
 ([fe80::f896:5b6a:7c35:fe37%3]) with mapi id 15.20.4755.016; Fri, 3 Dec 2021
 15:17:17 +0000
From:   <Conor.Dooley@microchip.com>
To:     <geert@linux-m68k.org>
CC:     <robh+dt@kernel.org>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <damien.lemoal@wdc.com>, <Lewis.Hanly@microchip.com>,
        <krzysztof.kozlowski@canonical.com>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH 4/9] riscv: dts: microchip: Group tuples in interrupt
 properties
Thread-Topic: [PATCH 4/9] riscv: dts: microchip: Group tuples in interrupt
 properties
Thread-Index: AQHX4hGOIk/aasNjyEiJtWEkmS5c5awVf0EAgAtjloCAAAshgA==
Date:   Fri, 3 Dec 2021 15:17:16 +0000
Message-ID: <c98076be-42e8-234c-a168-5acdb87829c6@microchip.com>
References: <20211125153131.163533-1-geert@linux-m68k.org>
 <20211125153131.163533-5-geert@linux-m68k.org>
 <be6a6a8e-0642-80b8-5503-cb4d059ee278@microchip.com>
 <CAMuHMdXO8A0ZPq6ngjuFmUb-8RJ69pkA2eAtcskham58RsmSpA@mail.gmail.com>
In-Reply-To: <CAMuHMdXO8A0ZPq6ngjuFmUb-8RJ69pkA2eAtcskham58RsmSpA@mail.gmail.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 460899bc-c910-4b01-d1a9-08d9b66ffe23
x-ms-traffictypediagnostic: PH0PR11MB4933:
x-microsoft-antispam-prvs: <PH0PR11MB4933D106B13F0E6B24C35B4C986A9@PH0PR11MB4933.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DEVEgqdkCXb86NGhlo6tG6RWwlKGt+3TRqDXcmfISc1bLpcgztSZAeSu/LX0KOh3ybPLMrddtQ8i8m6Ph1esxOI9/MbeTY2AH5uZUdEusQ0N6dya0fr01oJPjqpMi62gzxrV3wQTE/jtRsRBQNVkwwc7ofYYkuK4RrnZhmxyzLskQDDEob7E/zobzhXGYHrItK/cC0Z/Yj/QIS3uc+5LsKohf5/8U18daQwH3SXf516QtcKQoF20Uad57sE6t5D0WgVAvGviyHdr/AujqhJxBwETiGu7UNED10wRLm5TutZrX09jnJy00j2bz9xNK16xCTlJ+ksFLViWZpMvqd7noywRnt1qkayrPgzQnqK84dDTaeOyk4BR+0U14zgfVZPd8nztiPshve0O5aOLxzzMngY0gju4oVfNibQCq34a0dGwWXVd2C6Gd32VqIeXoOuSkisiPacaXuF+kR8xynTfVDe46QKSBI87idfEjJzFILUo2/YhVBW11AkYP7irWJ6LXfaPrsvMtGdyDCvQma7rpWHbGmZj+JG6ZNyjRWjw/6ia1O87N7C7NjZSqnjO239YClR/OcOyreI9TOlJI/agdL0E4NmpsHNvpZxIRHB4tPGOq112+K3gMY9OQ7dEVqQmJQyO0l5Ndc8gxPuQFdVpI/PRJ8TMkxuQsDni6Bvjr13FL4RRfWBW2ojsx1I+LpLo3XtVPh+D3mYIuDtfx/G9PnR25QzdaezmSa2QiUAK+c16dN/izRbleeH5toZGMFeKxCkGP28NA+1FJw1uNU9IGQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5160.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(508600001)(6486002)(31696002)(4326008)(2616005)(2906002)(6506007)(54906003)(186003)(31686004)(8936002)(83380400001)(36756003)(26005)(86362001)(6916009)(5660300002)(91956017)(6512007)(316002)(76116006)(71200400001)(66476007)(8676002)(122000001)(38100700002)(66946007)(64756008)(53546011)(66446008)(38070700005)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dmxteC9Bckhlc3pLcWZ2QjJwZW44VzhpZS9MRTl1MEU0NkthNG1vWVFCRjJF?=
 =?utf-8?B?UHE0dFBkSmkxM09GbzlWdXhOd2ZlK0I0Z3FNSTVEaVEzRzNEaVVGcEEzL2VH?=
 =?utf-8?B?c2MxWHlBN3RGYXRzakFodXQ4MFhMQ3NPVVVDM3JrazJVOXdSQ201Ry9ZWHBR?=
 =?utf-8?B?VWFsTVVIWTl4L0tCUGdNN2tMb0N6dVVGL2xyNk1zdEZEMEtjWDJ0NEhWSTkz?=
 =?utf-8?B?YTcxMEdsSXA0UUtKWkYydDFhOEJiRG1aL3dGaHJCczkvU1lucmloUXk5Uklk?=
 =?utf-8?B?ZGRlUm8wY3VpV21GV2pVeGR2M3loODRNeEFGZUlabmNSWHRRNG53SitRNGVK?=
 =?utf-8?B?RVk1VFRSWXljd1VzT3RobnNrNkJna05nbStCeVczaTRmbzJvUTc4SFR2OUNJ?=
 =?utf-8?B?UEgvQzhoT3NKcjRtc2ZVZ3dHYjhKNEdoRUpGTXNLM2lGY0RXRmxYbDFHV1VQ?=
 =?utf-8?B?N0p3Nyt3Z253em9uK28rSzJWNjJub2p5SVVjTGI4QzRzdEFzczBVRHdDSzhm?=
 =?utf-8?B?d1haYnA5RUVodGFjL1JHT3pDUW9LcFZ2YjJiY3ovRlZ5UG94ZEhpQ1kxTW5C?=
 =?utf-8?B?VmtqMWNLczRJRXZ6WENrcWtaZFd2d1VHZVlSM1FCV29uVWQ1Zm5BQksvWDJz?=
 =?utf-8?B?aVVod2VINDZlYWRPbHdRU3FxVVJ6bERWOGRvUmhmN0VONHpsWmRwNFNKYUk2?=
 =?utf-8?B?SkxUYkpPOHJHYlkvOUN1OFRJQVNSK0RuaEtsNzFoa0lkWlQycnFOZFpUWkl6?=
 =?utf-8?B?OU5JYW5QZFRqaEd1N3hDWUE2WWs4cEJNQzlzdVhLSjhoTmxJTzYrQlhpZXpR?=
 =?utf-8?B?enI1aXFxaVJXNE5MS0cvMDQ4ak5nREdSeDlqRFRKR0hwRnNFWVVWT0ZnRHM4?=
 =?utf-8?B?bVlhL0lnaE82V0U3dlgwZ0dmOHM5VXVsa2FDb0xVTXA1cjlHdUJpbUdlZ05C?=
 =?utf-8?B?VVF5eUVhZ1NZOFptU0lNSC9mWDU5S3M2NjlYa3pKSnV2RjB4aTJGcXQ1dUQw?=
 =?utf-8?B?SWZiMU1uZE5NdkpRSjJRa0V2bmxRaHhPcGNKekw3OS9YUmRsOXp2anVlUENs?=
 =?utf-8?B?a0s2dXE0dlk1UnY5MFltY1FtZEJib2dUTnZiRzFIYlk4Wm94L2l5dWlEaHoz?=
 =?utf-8?B?bGl0bE1LdlQvMXpzdGpiSXBiUXNyK3d0UFdkR09rTDF3TTY5alNWQS8zQ2NH?=
 =?utf-8?B?V01CNWN0TFZIYnFuZHd3cHV0LzIzQ0RvQ21GNlZ2V1plbkhreUFtTkg1WVZC?=
 =?utf-8?B?K2ltb1h6NlpGQkhIeE14bGU5Z2hEV29WNUhJTytrWEZrVlpPc21xeFFIMEhq?=
 =?utf-8?B?VnpBZzdKelRVek8zVEJKY1Y5N3FYRUREVnBDbUg0Nm5XYXRJQ1NGSDRTMVpR?=
 =?utf-8?B?di80VXRGSEtVaCtwVytPRUJCdkF2ZEo0S0xIUG8rUm9CRFo5Syt5TVFFRkdY?=
 =?utf-8?B?MExZNVJiUzBlNnBiQ25PNGRJODNCSWltUXRKZTU0eGN2U2RpSFgzalV1WVlZ?=
 =?utf-8?B?WU5lTUw5Q3NxQ2FiT1RHMitsaGhkMWNXajJzWGVMNExZNHlVVUFSNFNMcllD?=
 =?utf-8?B?a1UxWVFXU29tZVowYWtoY0lGWjdpK211K0xjYURlMGYxbE0wenUrTE1qNnlR?=
 =?utf-8?B?T0tldlpvZ09GNVYveFZkT05oaHBSRm1zTytZYUpCMGdVZWtxYi9QSjkzVW5Z?=
 =?utf-8?B?U2g4U3k3OXNOU3Jpdk56MGNCODd0Z28zcXVzQUgvQjJ2NitYZlFzWExKdnVy?=
 =?utf-8?B?ODBSVlhKcjNTQkl0YWZWZjZuK25FMnlXWVphNytMa04vY1V0UVUyM3Rpcnh0?=
 =?utf-8?B?NGhoTDNJUlNScGJnQktBYXVTd1VSSW41T3IyTjhzc1QrNlE1enVqRG1pN0h0?=
 =?utf-8?B?UU13dTVsOTN6amJORkxVV1MyVTVhTTdCQ2xJa0lyQzJYTGtQRHA3SDNzdDk2?=
 =?utf-8?B?bkVQb2FtT0lxWENjcGg3YS9Pc2JtYjBZeng3WHVDYlVHUHpRNXZaVzFkcXAw?=
 =?utf-8?B?WDR3UmUraTNqMW1pb1MyUWl6cUViVHE0TzBncldQeHZ5NW9yOHhSM2J2RmR1?=
 =?utf-8?B?Mi9odkpjTTRZNUF2OFZHVm50MElDQzB1cUg2cFB5OHE4WXlGYmFXUjZRT25M?=
 =?utf-8?B?dHdPRktBRG5pRGZoZFRVL1BybFd5Njc5UjFtbXdpR1pFRGNTSmVZQVJaV1dl?=
 =?utf-8?B?azdsYVRUSlRmMVNxZW1oVzAvYXR1Y2ozbEMzQXc5VjBtZ2R6eDRhRHdycmVV?=
 =?utf-8?B?d0Zyay81ZUxlSXNUZkNvVlZYeGh3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <079ED9C0BA20664B968203E984EDF690@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5160.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 460899bc-c910-4b01-d1a9-08d9b66ffe23
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2021 15:17:16.9607
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8vMp/8SgGS9EoZNrDh553OpL+9zcgmGV9whrJCyU2sEJY++HP8AmUpcUdElc+DmDZT1FNDuV5VD3vl7En0KoCc2POe8PVOYWD/dYvoNWuWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4933
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMDMvMTIvMjAyMSAxNDozOCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOg0KPiBFWFRFUk5B
TCBFTUFJTDogRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5sZXNzIHlv
dSBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUNCj4gDQo+IEhpIENvbm9yLA0KPiANCj4gT24gRnJp
LCBOb3YgMjYsIDIwMjEgYXQgOTo0MiBBTSA8Q29ub3IuRG9vbGV5QG1pY3JvY2hpcC5jb20+IHdy
b3RlOg0KPj4gT24gMjUvMTEvMjAyMSAxNTozMSwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOg0K
Pj4+IEVYVEVSTkFMIEVNQUlMOiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50
cyB1bmxlc3MgeW91IGtub3cgdGhlIGNvbnRlbnQgaXMgc2FmZQ0KPj4+IFRvIGltcHJvdmUgaHVt
YW4gcmVhZGFiaWxpdHkgYW5kIGVuYWJsZSBhdXRvbWF0aWMgdmFsaWRhdGlvbiwgdGhlIHR1cGxl
cw0KPj4+IGluIHRoZSB2YXJpb3VzIHByb3BlcnRpZXMgY29udGFpbmluZyBpbnRlcnJ1cHQgc3Bl
Y2lmaWVycyBzaG91bGQgYmUNCj4+PiBncm91cGVkLg0KPj4+DQo+Pj4gRml4IHRoaXMgYnkgZ3Jv
dXBpbmcgdGhlIHR1cGxlcyBvZiAiaW50ZXJydXB0cyIgYW5kDQo+Pj4gImludGVycnVwdHMtZXh0
ZW5kZWQiIHByb3BlcnRpZXMgdXNpbmcgYW5nbGUgYnJhY2tldHMuDQo+IA0KPj4gSSBub3RpY2Ug
bW9zdCBvZiB0aGUgaWNpY2xlIGtpdCBwYXRjaGVzIGluIHRoaXMgc2VyaWVzIHdlcmUgZmVlZGJh
Y2sNCj4+IGl0ZW1zIGZyb20geW91IG9uIG15IHNlcmllcy4gSSBhbSBhc3N1bWluZyB5b3VyIGlu
dGVudCBpcyB0aGF0IEkgZHJvcA0KPiANCj4gWWVhaCwgd2hlbiBJIGNvbW1lbnRlZCBvbiB5b3Vy
IHNlcmllcywgSSBhbHJlYWR5IGhhZCBtYWRlIG1vc3Qgb2YNCj4gdGhlc2UgY2hhbmdlcyB0byBt
eSB0cmVlLCBidXQgdGhleSB3ZXJlIGluIGFuIHVuZmluaXNoZWQgc3RhdGUuDQo+IA0KPj4gdGhv
c2UgZnJvbSBteSBWMiAod2hpY2ggc2hvdWxkJ3ZlIGJlZW4gaGVyZSBieSBub3cgYnV0IG90aGVy
IHRoaW5ncyBnb3QNCj4+IGluIHRoZSB3YXkpIGFuZCBiYXNlIG9uIHRoaXM/DQo+IA0KPiBUaGF0
IG1heSBpbmRlZWQgYmUgdGhlIGVhc2llc3Qgc29sdXRpb246IGZpeCBleGlzdGluZyBpc3N1ZXMg
Zmlyc3QsIHRoZW4NCj4gZW5hYmxlIG1vcmUgZmVhdHVyZXMuDQpBeWUsIHNvdW5kcyBnb29kIHRv
IG1lLg0KDQpBbmQgc2luY2UgSSBkaWQgYnVpbGQvYm9vdCBldGMgd2l0aCB0aGlzIHNlcmllczoN
Cg0KUmV2aWV3ZWQtYnk6IENvbm9yIERvb2xleSA8Y29ub3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+
DQo+IA0KPiBHcntvZXRqZSxlZXRpbmd9cywNCj4gDQo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICBHZWVydA0KPiANCj4gLS0NCj4gR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBv
ZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZw0KPiANCj4gSW4gcGVy
c29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYg
YSBoYWNrZXIuIEJ1dA0KPiB3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBz
YXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuDQo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzDQo+IA0KDQo=

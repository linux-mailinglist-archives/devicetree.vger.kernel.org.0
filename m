Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D34D4774E9
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 15:47:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235993AbhLPOrW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 09:47:22 -0500
Received: from esa.microchip.iphmx.com ([68.232.154.123]:7604 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229979AbhLPOrV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 09:47:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1639666040; x=1671202040;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=X4J4GUylsmvSlLoj3CHD+FA8xpCPokia6e4vKN6su+0=;
  b=xg20Luy1vq0ppcUvYIIrOWPC7YHyAuUcVsCqlvf/40U+dDwXCKia61Ce
   /n+cyxQQA1LjCw1yQ3VV4vYYLrdZCRf/JRvQPULlQDkKVdh5+JGFazFzi
   aRF0C28xDEjcExT+sgs01fBZPIHKz1ESHXeJK/Go5Vfkw4KMXiuaMlrSh
   w65GO4Lf5R1UfXpTAZV8JSlwYpQSyaNjAkCKw5Rr3p9PBxvQ9/dWWw5JL
   TVTgN+Vlvxl190ubSBlH35k4y5ra2LspvPuWtOxDQQ1qCj6fE0uirNLih
   7E/AW7zqrq6vAOwLBgrzWnIDE4cKJ+ZGz5AkdrhC6Kf+sJy674l032iIo
   A==;
IronPort-SDR: oVoluIiDoCcczI8tREnpHu/yDLYdE60YU+R4mzTaoWpA0l75ycpsKAe70a5HPLl/ZOfJez4pc9
 Bi2JKvZYgATpiACqjckM0sa8y69HYyUxDeUgGqXOzFTl9slWONTD0EVrCvfNO9ZxzeeQDVixDr
 BEbPcIgeEqTkmNCbJk3ef8nxrYzNjgqIOC0r/De7NryGPAMYIucllvTJDT4Kp7YCYfpH2eBJnf
 RHtKby/FD851HtTGEKTSeoOBRp1M8e/BP/6hK4xgIOMw4ItGTMw7gP5ljf49Ya6c5Gy+XuR+eo
 emOuRbuvT2WKLxicNwuJDd9z
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; 
   d="scan'208";a="140000679"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 16 Dec 2021 07:47:19 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Thu, 16 Dec 2021 07:47:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17 via Frontend Transport; Thu, 16 Dec 2021 07:47:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WYD2DmsXePeV4u0tPlp3Hqr3K67aqcPjE+jjCUaHslRiHTSGM/L4K6em48lMyrwQVi9HysrvgXYOVbF3Zv/sEZX9aXTAO+QJC5mImacRQDr+Sdkk5jIWYnBKOwldwl6cbR0vsvhTBpQCQHrao2c+Xr+c6cHpSEFEdj1FJJ7S9MuCudtkbo4JxZIKIQHEZOTZbVnyUAqzDsB6i5POjfuSUhTUWXFbv5kuItjdw5ECUQ/fLBFPXVjeN2riO60WmgStvDpNuMawZGOhl1LBGyPcTNgvQD5IUW5HvHZiQ6Zty7UVdwXQS6p6pOGRSbYWhOm407gSx/VsI7dKpNTcAeIjpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X4J4GUylsmvSlLoj3CHD+FA8xpCPokia6e4vKN6su+0=;
 b=b6BYGzX6Ip0lhUWz/TZ024EtCtjlaV/nfo8ZchUSxLtE+1xb1Lhf/ra2m3E38Rn79JUTVTAuttuH9x1DQvgGYd8Ik248pOXtMVZ+4Op10y+UFs1xe7IV2cC6/hwcRywEcHfxAiA/DUv5WO59yUPIW/QfdnWsvlDqIOnfiWFotekH8qIyxlLUNMH4pyDDFyn911/Sk05Nlgcm1nXaGOKhDNCbVwkdgRT25J6O/42+w2XbwdFp/5WrxhRKT0QgoCwEUREkgvr65kNkbw+vpC4DRa/bkYPcfQLkRlBHWNzUIsXhmOEpQfohlzcH7HEP6yk3qUtAolJ/P+mTHQYk/edjdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X4J4GUylsmvSlLoj3CHD+FA8xpCPokia6e4vKN6su+0=;
 b=dvxYqmlTwufucUUxZN5i43rAoxACdeMMWBryFcBZbx1tOz79oiR8UjGiZxgMtjrz7sEH0O0coiSWYVfOIsFv8We/P4TgWyQauYn10mt8WTZgaohCIfJxHN1Ehn3Th7fstUKkhWqaggdXKePTdZHY5OF1rbhcWJ6XwZHo6fi4Ekk=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:95::7)
 by MWHPR1101MB2173.namprd11.prod.outlook.com (2603:10b6:301:5a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.15; Thu, 16 Dec
 2021 14:47:14 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::a192:c9ae:1f83:797b]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::a192:c9ae:1f83:797b%6]) with mapi id 15.20.4778.019; Thu, 16 Dec 2021
 14:47:14 +0000
From:   <Conor.Dooley@microchip.com>
To:     <geert@linux-m68k.org>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>
CC:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <Lewis.Hanly@microchip.com>, <krzysztof.kozlowski@canonical.com>,
        <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 06/11] riscv: dts: microchip: mpfs: Fix clock
 controller node
Thread-Topic: [PATCH v2 06/11] riscv: dts: microchip: mpfs: Fix clock
 controller node
Thread-Index: AQHX8oIfC2dXpuuA/U+VRgIIT9gFf6w1MyOA
Date:   Thu, 16 Dec 2021 14:47:13 +0000
Message-ID: <a7442a30-a982-4e3f-e7f3-3e614fe5256b@microchip.com>
References: <cover.1639660956.git.geert@linux-m68k.org>
 <ceb8d07363ae67a1dc1f1807d9e2709076607d24.1639660956.git.geert@linux-m68k.org>
In-Reply-To: <ceb8d07363ae67a1dc1f1807d9e2709076607d24.1639660956.git.geert@linux-m68k.org>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 46bf5524-7fbe-4c79-7138-08d9c0a2f2cb
x-ms-traffictypediagnostic: MWHPR1101MB2173:EE_
x-microsoft-antispam-prvs: <MWHPR1101MB21739DA3A7554F1A8957EEFE98779@MWHPR1101MB2173.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pN1l04+EbOq8PKQQ0ImsDaB0Sm/ggSzBJyKJOYlOZU72t8c3aH0XcSnQKprI4qzyhmAat+U76tBmZdxXzsuBs6d6xYPPsfJD6f/etDREoK0f39Zo9zCMhpwHTAnjk72a32ZQaAKdAPby9MGB2uWr1jwD+de5kRyng7V7kxJBOJnCWdeN160sBxyvcgfFnEqnvIGqfJTwn9/vIkVp7qhJobhRkz9LYBarbF3l9orKsDk6ZKKTGhE0cS+ga7bKwWXW0pELEHKWj/pjfMfLpPUvb+/KyUdMZNlhTC5MQQQ/mhoebpcRLBFMxQdhF6Xgena2k4FNhfqVYr9ldyjNAQNaFx9VgW3/jSg7jk48C/JV/qRs9xi4E6c57iy+w5qAxob2JFF8Ne90yzSx/vSV3jzGTXyBRDOcvynMqeaykZxga/P7Nmqc6e31vt31BtHEOvstsE2xoYHYipsaZl21TB2pjbB1Zgp9C8/weAKQzfWukBdWS40qqMwpDooLg873heyP6v4ozAOucLd+5ZdSkneFiekUyp9B+8pYykxv5Ym9xo2tk4kuosf0yVQZ/M024e/0Ifu/+92rrWc382eI/wyiIETDAdz9vYb/zbJISFw7jMoedMiacDJP1I27TFe3PW2t8lvmZofHiGMZnpsiRO4DdegISRh/aKgmm/vzKMfAuD386O/DkHOKnyza2rn742YySFDRNQGtc768Am6/Ue/9iAc2tUCYFDIiuuG3J6G/vEFSmZ9aby/Gro3X6F0mRXC8QBslcocbWjsIEeEXIyE31A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(5660300002)(8676002)(6512007)(2616005)(76116006)(83380400001)(91956017)(64756008)(66946007)(54906003)(26005)(186003)(8936002)(508600001)(71200400001)(86362001)(316002)(66476007)(66556008)(38070700005)(110136005)(6506007)(31686004)(66446008)(38100700002)(122000001)(6486002)(2906002)(31696002)(36756003)(4326008)(53546011)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V1pzOFRLZGlBUk9LNlpwcDY5OWkyNitYdVBaQ2tnd3V1bTNxZ05SOWwwcWtB?=
 =?utf-8?B?VlJjQkZoYlVrRUkxajk5c25RNGVpSVlMemNlVmNGU2RZUGN6UzRxQWwrZzBU?=
 =?utf-8?B?Y0pyT2pIdnNzeDJhdUhhK2s5Q1JzUUlNRUN5a0pLTWVNMjlEeXl6ZEtzdzhR?=
 =?utf-8?B?S21RZklva0lCL3hZeHdESVM5d04ycGJqLzlFZlZLUExBN1lVanlranJvRkVi?=
 =?utf-8?B?cEtGcVd6c1RNUUtLME8vRGFkUmEvWVJIVlZPRjE4cWMzd2tmVVFPY2ZNUThG?=
 =?utf-8?B?N29qQk13QUMvN21WN3lsU2hiWGVrNk54bHI4dm9DakFqeW1NSlFFUWhPVC9M?=
 =?utf-8?B?SE03MUtiMmZYanZONlI2K0lXV09CQ1R2UjhveTFVYUxMOGljeE9COWp4ekt2?=
 =?utf-8?B?SDFES0VPSjRIZXJJQURNNks5UWNPNlRIQURRUndEZVFXb2haL0s4MWRCSkI1?=
 =?utf-8?B?aC9vVC81MnVlT1N3Mlk3QXpFNGtpMFhiVWF3K1JDME0rYkZsdys2dGo1Lyt5?=
 =?utf-8?B?SVB6dmlVejQ4OUt5RFlUc1B3WjJZTEVpWjRJbDBSWUFRSmFQZktLd1hOVUp0?=
 =?utf-8?B?REhhek9hVEljV21HRHJLK1lkZUVhd1dUbFNXVUY2NXJWeW1hc2NLUFBzNmxa?=
 =?utf-8?B?TFJaMUNtWUFHdU5rRnlyZllVbExwK2lhV0pJTXgybkNlamRub2lQUnUxOVFK?=
 =?utf-8?B?QWlsbEFSWFFiYlAwSVdjNlZRdFA3ZW8rTVlvWGNuNmNxaHBxUjV0OXJTSFBS?=
 =?utf-8?B?aDRUSGJQUHY0RmdiaXZCdlhIdTFVdFVXUzlIaEVTVkg3SW0rVnJaVEwxWCti?=
 =?utf-8?B?N2xzejcwVnA5eUN3WnBWaks3UlBmeGtUVHhaRHdVV2QzYU5PU1hsdkV1bG9M?=
 =?utf-8?B?OXluc21UZlpuZnVoOGFqc1dBYlhoaVQ5cG81enBuSVRkR0M0alBMd1o3WW85?=
 =?utf-8?B?Q2FXT1BUK0pHNkp6RWxvR3p2ZGFFdFFmdnJ3MCtCaUFjK2ozOXZqL0F3WVhs?=
 =?utf-8?B?SDNwV1EwUDJxMmNWTjE1SHgzQmRCbUNaSms0d05JT1NrTzNGOXlVVklWbUwr?=
 =?utf-8?B?M240SUg5ajZXdDhEZzEwbGNaMFF1SXNVMVlRL2Y0T0RqdXBxM1RHR1NJRE1Y?=
 =?utf-8?B?NklBbXBSL2Z1bGNoWmxlenB2TmlsOXJiMlppTHVTSGREbDN4QlNDU1RHQy9i?=
 =?utf-8?B?ak9ucm1WZzVFZEhublZTSytWeUFaWlJpU2RBY0VyeDBhK0xLcERpNzQzeVFh?=
 =?utf-8?B?cFdpcGxQUyszeTVraTk0QmhOcWJtOTZqL0lyZnlndVJLczBJMlI1QTFGYkN4?=
 =?utf-8?B?OWlKOWI4eXBtcTNPZ2hTclZMMUVaYk10NW9jdXM2TVNla0dkbnM0L213TTFo?=
 =?utf-8?B?cHFSaVVReXNDYVAwMnNPcFZoYlVmRVg2aEJBdEJsLzJkVTJuZnQyQWl6WjlC?=
 =?utf-8?B?OTFvWWNRc0h2WGp2RTI3YzFteGQ5MDZIMldIZHlDWnZoMHV1Nk5NVkRTVm54?=
 =?utf-8?B?TjJHNkFnQUdlcGhOVTcrbTkyaVlFdWpiUlJ3SWlLTHQ0emtmZ1VYWVErKy9x?=
 =?utf-8?B?SUEvaENZbzFrQXpLYWJlNjBUSnBsMDhISERVZElheUZaU3pNbHdBVFBqOEoz?=
 =?utf-8?B?ODRPWjVudExjYlpBdG1hZnVFTEN6YStjdjlnbjBraS8xY1A2WXpIQVRJMFpU?=
 =?utf-8?B?UDkwVGJRcTZnajRxcTd2WTNIL0k3WWErNEJjTlBkd2h5L2hPUnB1M2dpL1Jh?=
 =?utf-8?B?TndvM1Zvb3NKZWQ5VUMwaFBkY3A5dGk0ekZyWlBDdjIrR3R1Ni9xWHo1TmJ0?=
 =?utf-8?B?b0J4R3k3VGxUVTRFTUd1VDJVV3l5VTlLS3hqVzlvUUk5YzVQQjdmaGswa1VD?=
 =?utf-8?B?NmY4UlZGeFRhUDd0SW10R0NoVmZOYTRvK1lJQng0OHF2NVFjZlduWjBBV3Av?=
 =?utf-8?B?VHByZ0N1Wlp2blRCWFNKN3lmSFl4dkEwcnRZS0xOUWJCbWlOR2xzb1B1bVpV?=
 =?utf-8?B?MlJ4ekRLck0zQ2xwUGdka2dmaG1iNFhLclVZdzQ5b0lRQUJkU0FBYnk1QXFC?=
 =?utf-8?B?c2krTFFvTFR4WHF1NzQvZCtJYTVQR3ovZmJVbGFJS0pSVGdQZHozNEVQaUdt?=
 =?utf-8?B?TElWT3FHTVRveFMyQlFyZ3dSL3ltZW5LZ09SYmMrZ0ZCTXVNOWluQlFlQUh5?=
 =?utf-8?B?OGE4cHBCcmRVdjJMVktOQXA4Y2g0TWU0c2EzUjc2b1pNb3VDWTVTQWJ1anox?=
 =?utf-8?B?VHdWY2NFK3ExK2FsVnRscTJpRFZBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6834FCA92CA05940BA7BCC3B1D14BF04@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46bf5524-7fbe-4c79-7138-08d9c0a2f2cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2021 14:47:13.9197
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: My9p0nGGRE4CtNPYICMRX/a08X29tsODWMLM0v/vmuTdUmj4XPDEYvwDAcaEu1gm+17NrHQFyBgTkk1qBB4OhV4bJIvPmxRxZot8/LYA0RI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2173
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMTYvMTIvMjAyMSAxMzozNywgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOg0KPiBFWFRFUk5B
TCBFTUFJTDogRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5sZXNzIHlv
dSBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUNCj4gDQo+IEZpeCB0aGUgZGV2aWNlIG5vZGUgZm9y
IHRoZSBjbG9jayBjb250cm9sbGVyOg0KPiAgICAtIFJlbW92ZSBib2d1cyAicmVnLW5hbWVzIiBw
cm9wZXJ0eSwNCj4gICAgLSBSZW1vdmUgdW5uZWVkZWQgImNsb2NrLW91dHB1dC1uYW1lcyIgcHJv
cGVydHkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxp
bnV4LW02OGsub3JnPg0KSGEsIGRvaW5nIG15IGpvYiBmb3IgbWUgYWdhaW4gLSB3YXMgaG9waW5n
IHRvIHNlbmQgbXkgdjIgdG9tb3Jyb3cgdG9vIHNvIA0KZ29vZCB0aW1pbmcgb24geW91ciBwYXJ0
Lg0KDQpSZXZpZXdlZC1ieTogQ29ub3IgRG9vbGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNv
bT4NCihJIGhhdmUgYm9vdGVkIHRoZSA1IHBhdGNoZXMgZm9yIHRoZSBwb2xhcmZpcmUgb24gbXkg
Ym9hcmQsIHNvIA0KVGVzdGVkLWJ5OiBDb25vciBEb29sZXkgPGNvbm9yLmRvb2xleUBtaWNyb2No
aXAuY29tPiB0b28/KQ0KPiAtLS0NCj4gdjI6DQo+ICAgIC0gTmV3Lg0KPiAtLS0NCj4gICBhcmNo
L3Jpc2N2L2Jvb3QvZHRzL21pY3JvY2hpcC9taWNyb2NoaXAtbXBmcy5kdHNpIHwgOSAtLS0tLS0t
LS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgOSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9hcmNoL3Jpc2N2L2Jvb3QvZHRzL21pY3JvY2hpcC9taWNyb2NoaXAtbXBmcy5kdHNpIGIvYXJj
aC9yaXNjdi9ib290L2R0cy9taWNyb2NoaXAvbWljcm9jaGlwLW1wZnMuZHRzaQ0KPiBpbmRleCBi
MzcyYmM2NDU5YmYxNjNhLi5kOWMxZGVlM2ZiMjViZWI4IDEwMDY0NA0KPiAtLS0gYS9hcmNoL3Jp
c2N2L2Jvb3QvZHRzL21pY3JvY2hpcC9taWNyb2NoaXAtbXBmcy5kdHNpDQo+ICsrKyBiL2FyY2gv
cmlzY3YvYm9vdC9kdHMvbWljcm9jaGlwL21pY3JvY2hpcC1tcGZzLmR0c2kNCj4gQEAgLTE5Nywx
NyArMTk3LDggQEAgZG1hQDMwMDAwMDAgew0KPiAgICAgICAgICAgICAgICAgIGNsa2NmZzogY2xr
Y2ZnQDIwMDAyMDAwIHsNCj4gICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAi
bWljcm9jaGlwLG1wZnMtY2xrY2ZnIjsNCj4gICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9
IDwweDAgMHgyMDAwMjAwMCAweDAgMHgxMDAwPjsNCj4gLSAgICAgICAgICAgICAgICAgICAgICAg
cmVnLW5hbWVzID0gIm1zc19zeXNyZWciOw0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgY2xv
Y2tzID0gPCZyZWZjbGs+Ow0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgI2Nsb2NrLWNlbGxz
ID0gPDE+Ow0KPiAtICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1vdXRwdXQtbmFtZXMgPSAi
Y3B1IiwgImF4aSIsICJhaGIiLCAiZW52bSIsICAgICAgIC8qIDAtMyAgICovDQo+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICJtYWMwIiwgIm1hYzEiLCAibW1jIiwgInRpbWVyIiwg
ICAgICAgICAgICAgICAgLyogNC03ICAgKi8NCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAibW11YXJ0MCIsICJtbXVhcnQxIiwgIm1tdWFydDIiLCAibW11YXJ0MyIsICAgICAvKiA4
LTExICAqLw0KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJtbXVhcnQ0IiwgInNw
aTAiLCAic3BpMSIsICJpMmMwIiwgICAgICAgICAgICAgIC8qIDEyLTE1ICovDQo+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgImkyYzEiLCAiY2FuMCIsICJjYW4xIiwgInVzYiIsICAg
ICAgICAgICAgICAgICAgLyogMTYtMTkgKi8NCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAicnN2ZCIsICJydGMiLCAicXNwaSIsICJncGlvMCIsICAgICAgICAgICAgICAgICAvKiAy
MC0yMyAqLw0KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJncGlvMSIsICJncGlv
MiIsICJkZHJjIiwgImZpYzAiLCAgICAgICAgICAgICAgIC8qIDI0LTI3ICovDQo+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgImZpYzEiLCAiZmljMiIsICJmaWMzIiwgImF0aGVuYSIs
ICJjZm0iOyAgICAgICAgLyogMjgtMzIgKi8NCj4gICAgICAgICAgICAgICAgICB9Ow0KPiANCj4g
ICAgICAgICAgICAgICAgICBzZXJpYWwwOiBzZXJpYWxAMjAwMDAwMDAgew0KPiAtLQ0KPiAyLjI1
LjENCj4gDQoNCg==

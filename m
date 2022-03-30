Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EB7E4EC547
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 15:10:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344957AbiC3NLx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 09:11:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241350AbiC3NLv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 09:11:51 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C302821546A
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 06:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1648645803; x=1680181803;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=nGC1c2tvgqdHgbcwtJhveFGAFKFbFQ3DWqFMQ/Kpoqg=;
  b=yRJjT+eTyadIqy2wgIlsA+ARt0W0HN2rHpN79EZkbUId0blhcqqTlwcF
   RUo9UmJSHQt35n67G47eoS8zsioDx1Jr7tFZ1Fpygryz6/6iv0fXbbTGn
   HcnRSkK7ss+QShbYDxAym782UyPyEjT9adMxtSiXtyDgn6RBHqBCPYBok
   xAB6xqKzTp2x5tRmKThlvKOD3PXgZGxiX5vGWloD6llK9cF/ZASfity+O
   BDUtKKT8Xsg+pAxyNAKGvzkaVMy0EEXKjNNTCQtqF9TEta5Fzfd0mV/Lu
   rl+rQqv2L7jGvwn+ukRcNv/DZQ1iZ8djNV3K+s7GtdS3AHiT12XlmSMiB
   g==;
X-IronPort-AV: E=Sophos;i="5.90,222,1643698800"; 
   d="scan'208";a="158674586"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 30 Mar 2022 06:10:01 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Wed, 30 Mar 2022 06:10:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17 via Frontend
 Transport; Wed, 30 Mar 2022 06:10:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d/NIWc9Hi6UcRG36puOglmLZmvrwPKuvsctk5sLoXMbJ9tfqHwVqrubLUmt+4rH/L8RckGEq4VZs57slycMQtpJ/IizG79/4M315+jlUOG28LJwo35GSuZs/AaUO7ag1nfssXKQ2lzGOZ1PXWE5ldS7S/f+yVzXU3kfW4GmgJdLUvHPED9Bb4x76qDTeskH9uqXYGz+i9pq5W65tHd10KRyzPdPlppMOJ1RVlnj8VwNz55CuaPJQU7srL97vZjtxlVo+H+77kG8O9PwLP+nzVpqMAli/+zZxN6T0f6Elpj64orMyXXFc6LAPy1N4mBnOx6xiosKpCzy7Qi/O3SbdmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nGC1c2tvgqdHgbcwtJhveFGAFKFbFQ3DWqFMQ/Kpoqg=;
 b=D5iIqx/OKQTvljjPLZzaHEf2atNpXE7S6upniiwCocjlFjr0JLciJ62DytxtUj8kCX0y8PojfQ/2pMdvy0or4xFEj0fMikVBY/FkHHkpCtRiKGZfGK25+Rl0cmLo94eu9LEATTSMaSPDVAu+QlWGWI3drFf0JL+9qYVNKPPn5qKWX29sqxoLjtIjQyXt2FLP1FTobfRXvZG+Y7ePBx5+li7wS1GYuTI9lvT1oj3BqyzzFwVlfGKSCn6s3y0l1OxrZtg2DjbZDEZmjC0k0wFJ0omWMF5ZYoAypOfAZB2Z6nZbuEw/SDfuoIBRQ50XVbQKSjwjqTd314Vfi7LoCupgng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nGC1c2tvgqdHgbcwtJhveFGAFKFbFQ3DWqFMQ/Kpoqg=;
 b=aBf6tdMouYCdfYD1pdKrLDRKgsWi5a7xqoXcCX6i7Ifff/seHYVuiRcXNPNT9lsg9x2ferqEpzzpJwZeYpHzpFIIgpnaWLFcJGSwWOQagHlkGITGJszi9B/pYuS0qDaOaj4zdL1du4BK1l+1XE+k+g0x2OpwABK9WFPXNN65HFI=
Received: from CO1PR11MB4769.namprd11.prod.outlook.com (2603:10b6:303:91::21)
 by SA0PR11MB4621.namprd11.prod.outlook.com (2603:10b6:806:72::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.17; Wed, 30 Mar
 2022 13:09:56 +0000
Received: from CO1PR11MB4769.namprd11.prod.outlook.com
 ([fe80::6d66:3f1d:7b05:660b]) by CO1PR11MB4769.namprd11.prod.outlook.com
 ([fe80::6d66:3f1d:7b05:660b%6]) with mapi id 15.20.5123.021; Wed, 30 Mar 2022
 13:09:56 +0000
From:   <Claudiu.Beznea@microchip.com>
To:     <broonie@kernel.org>, <Nicolas.Ferre@microchip.com>,
        <alexandre.belloni@bootlin.com>, <Codrin.Ciubotariu@microchip.com>,
        <robh+dt@kernel.org>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v1 2/2] ARM: dts: at91: Describe regulators on
 at91sam9g20ek
Thread-Topic: [PATCH v1 2/2] ARM: dts: at91: Describe regulators on
 at91sam9g20ek
Thread-Index: AQHYRDdz1tzVjkkphEOu0x9m1wAaqw==
Date:   Wed, 30 Mar 2022 13:09:56 +0000
Message-ID: <cfdfa402-cb6f-2482-2ff7-3aa6cb488136@microchip.com>
References: <20220325152715.1597893-1-broonie@kernel.org>
 <20220325152715.1597893-3-broonie@kernel.org>
In-Reply-To: <20220325152715.1597893-3-broonie@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e1dcfd3-2ba6-4157-2ce5-08da124e9636
x-ms-traffictypediagnostic: SA0PR11MB4621:EE_
x-microsoft-antispam-prvs: <SA0PR11MB46210DB271423480CE37E588871F9@SA0PR11MB4621.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M100UTwxhNZbMhrpgASnIF1wOCtvMox45BKPFhSOjdacGZfwsGUzrj872Zj8ixBifN/JD3dRd6UPKKrfsQXwijzctM8wc9/Dm4+/7Gfw3w30I37S5pf49XKCgQPNVLubS1Etlz0fwD2M84YZ2DK1nn2K7Kc/Rh2Prk9RqjXfb2r3bUeS5P8eng8d1P8jzlpOnUGUjfFrde5+8gwDYeiC8WMATvZF5VgPq12KxJ+IQ9uUSuvs4FIg00+tTui0uMQInhluZN5T30XBB4JfJaQ6ulv3UhMWPg8FvXWso801CF/PE10aCof1HDaBn8OG73FLgGWhyEw41pfOiRc6sTyp8Wdc840QrilvwJ/b42EpUm3y5g5X9BxMZGJL4H/UBfe2LypAf0amDbLOM4u2wFOEZSsrNNHj7D2AxzRGIjr+s/xndWE+clmZlVX26an4RU5q5Q66nwo26L+zGzU8hYAZRo0K1NFrUfwRnfJFD6Bbt9yIToQHIEkkdAwRblgZFb6mesOXL6FrqV9tpk4P5DC8e7eARdojT+LC6MqCIsSwsDuREblHHBH2rjRgDaTdLfD+lhrQtSm9Fzsowexdq0DRHL3Nwe8sFguribO455EzqyXgPATTN9bl+f3iSJEMeXBFIkTRYy3ffbZRoiYPWGAdk5ZobCEpDK7kizdbRdxnj2t8IimVCEXlIF9Sb01lOJaQWWMZWXiRae2RWPo/wNidBK+28GMkjsoGOLeNKwcCHqPaYvwLdBy1PRhR8kv7D7wIUDVa8HezgX1UBJgHGeEQfA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4769.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(2616005)(6486002)(26005)(186003)(508600001)(2906002)(31686004)(122000001)(71200400001)(38070700005)(8936002)(53546011)(8676002)(31696002)(66556008)(66446008)(86362001)(36756003)(91956017)(4326008)(38100700002)(110136005)(316002)(5660300002)(66476007)(6512007)(54906003)(64756008)(76116006)(6506007)(66946007)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RkdDREdiTmw1RUxkZnN0dWYxWEowM1A0Sk1SeTY0NjFKTGZ0ZkJIYkx0T3Fw?=
 =?utf-8?B?OXUvTWZqcjFYUkFVa3k3bUZaaVZZOVdCcWJsN3hFMUFhRjI0UnVlYVlqc0lW?=
 =?utf-8?B?ZE5aSXVaYUMrbDdSN3BZdjE3aWtGK2NOYXBKNzdoc29EOGtHTSthUWszaVJP?=
 =?utf-8?B?cERabnNCWEpybDh4RkhhTGd4dWpQYzdldXJOcnlQL25ndjlnL3Rkak9mT1ZE?=
 =?utf-8?B?WEdhZHZ1M1VhWTJJNng3aC9jbFdGUGpwbGRGdHQyYmdSL2ZLcFRtVUlySlFw?=
 =?utf-8?B?b2d5TWlIakhXWUxOSlVEQVFRd3FOS2MrUXZaRFgvWG44RXhPN2dma2FWRHJ1?=
 =?utf-8?B?RW5salhRRE5BQXJoUGV1SlFQUVJzei9oM3VOVzZZSGdvZkZjZDNLdm12TSt3?=
 =?utf-8?B?eTJKenZSZEVzbWdpSm56ZURkMzVKWDlVWnY4QmEwTkpPTWpid0ZXNkRHL2pQ?=
 =?utf-8?B?S2NHTDNVU3AvcUhra2cvdnNzblRBY1J4azBaTUN6T1Z3S2NLNUdxbm1uVHYx?=
 =?utf-8?B?NVdOUmtiemdkS3FqRjZQZ01zTVo2MWliOU9Xbm01YUxISWtKQkhpQ09oUENI?=
 =?utf-8?B?OGkwUWFFWVNYeXU4OFVMa0FsdXBlTFRRbGN3S3BCRWsyc0tNeG1YYlI1dEMv?=
 =?utf-8?B?SUQ5S1VhZUJIQjdPRTFDZm02Vkt4d240S05vbTh5SkhMaHhTTEJnWFllaUxY?=
 =?utf-8?B?OFdlSjV4SXNmNS80ZVZPY045UExTZUYxalpHMHNuakIxTDYvdXNMYWtlZWpm?=
 =?utf-8?B?QWtyMkl3WFZiaUVOQm9vcGxEYk8vOUtPUmwwaSt5WGZtY0lVeS9PSWRpdSt0?=
 =?utf-8?B?L2lRYXU5MEw1c1lDbXFXOVVxZDY5RElkblVMSEpVNmZiaWNDc2dDUmZXVkVK?=
 =?utf-8?B?anUvNlFsQTc0My95c01la2NlYzIvWnJtNkZvTW5rdGN1MUpxcWdONFhtY1JU?=
 =?utf-8?B?SXQvQ0R4U1VudjFDTXlMQUkwOEJQYUxEQjNma0Vsa0hXN2lYVC92UUhGaGZx?=
 =?utf-8?B?TnArZFY4dnNjUStOR3doc0RGT1FhQjJGOEJ2ZTFvR2tvZnBtMjVIV0VreTVI?=
 =?utf-8?B?a3dNdHU2WXdYNW9GV0R2OWp3ckJpN011UGpnbGJyRjNyRVJQT2NOdnhlTE1h?=
 =?utf-8?B?R214cCtGYmhQTkZQVXJYRE9DY05ETFBmOHo5cXNTYWw3d2VkSnVnUWtMelE3?=
 =?utf-8?B?aVE0Q1RvR2xUeVVnbHZJZFhMMnJkaTlQODFvN1E2NU1vdzAxdUFFUUl0bFYy?=
 =?utf-8?B?U1RmMS9sWWIxRzliVllqai9yb3pNczhsQU5hMml0OWZINlU3WkZPR1JLYk1P?=
 =?utf-8?B?OVhZM0RDVjN4Vk9peGxwWE1JNmd4NS9vWVoxY29SaERFcDFMY1locjdYM0JO?=
 =?utf-8?B?bXdTZmtvNWdMMXBUMG9nalFmSHQ2VThaQnJGdlVIMld0MU5BVzBZSlNLNXVK?=
 =?utf-8?B?bDlHVkd4SDNaY1FtdTJRK3E3RlFZV1U1d2RNbnd5c1NBMlVMZFFubGZ2dUly?=
 =?utf-8?B?WjhpRXd4VXh6aFBmNnloRyt5VXpRUm5qdEtSN0FMZXFmNnFJUjV0bVg3Rzdv?=
 =?utf-8?B?RncwNC9GSFkxZk1QbmE0V0VlSyt6THpLNnFxQWxQM1RXR2xWTDR4TEFLYnov?=
 =?utf-8?B?NGVhbDRrTWthdG03cW5KRTAxWVBIaHJYOGRhZlRPN2gzVzQyZUtZbk9EMmRQ?=
 =?utf-8?B?QklPcFR3VlUrK1I3NzgzcVpYMjV1dzdLSmdweUNBN2FIN05jOEJkVVFiVEJk?=
 =?utf-8?B?eEl6TzBuYkU2TDRmLytUSG9pUTI0V2tIcVBSOU5raDBDZlNMd1RkamFQbEtj?=
 =?utf-8?B?MmZzNnJSRzJwb211WVI1UWtlRldwNlRtUlZyeU9yUEpqTDB6bmpJN1hmRFVq?=
 =?utf-8?B?cGdTYXNHQjVyTlBKUEplQVFBdE1ia2hxOWdhbXNjdjdDTDlrb1NXOVdwQnY0?=
 =?utf-8?B?OXRtWHVWK2FjRzRrS2RxcHZqM21NMG5Kem5oSkR2alF2cEZFakpSUEF4RVlz?=
 =?utf-8?B?eEVyUFdrTWhqVXhhdHMvWFNReG9RdSt4NG5YMVhqR1JiOWN3WEQwQWUvSTRE?=
 =?utf-8?B?U0JwNlE2cytJaWU1QlJ3eXFySE5TOUZXRko4NTF0RWhVNzg0R3AvTHV6OTZS?=
 =?utf-8?B?cU9pRVlQTyt6aUhwRzhGcENlcFljQW9hdm5HMkZ5dzEyTzNyQ0lneGkwY2dz?=
 =?utf-8?B?N2kyaG9QSlMxOGdVZ0VEVWFrM1lYMkNYMGJ2YThCNkROcWYrY2ZQSDZDYXdm?=
 =?utf-8?B?UUV6V3BMUDdWbkMwdms2VXF1L2dWemhuemJQNHRTTWRZeDJzT2xUV2F4dU5i?=
 =?utf-8?B?VGZRdWJ2ZjZaUHpTTWtkbUZ3VmhSbms5VGJYL01zdWJDZHE2cUYrZTlmR0M2?=
 =?utf-8?Q?YYLCuLOeH5V6NiJA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9AEE67E8289B8A4C891369619A46966F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4769.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e1dcfd3-2ba6-4157-2ce5-08da124e9636
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2022 13:09:56.2603
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RmYs1BkUY/1pHvN6HQXLo/qvFSU4DvaToKTmdluBoq7RJz9uX4983lYybsG/oUGZdSWgqtpOvmYHzFASthNQhWKVSNNIc2e5bvF+uwp8uos=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4621
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMjUuMDMuMjAyMiAxNzoyNywgTWFyayBCcm93biB3cm90ZToNCj4gRVhURVJOQUwgRU1BSUw6
IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25vdyB0
aGUgY29udGVudCBpcyBzYWZlDQo+IA0KPiBUaGUgYXQ5MXNhbTlnMjBlayBoYXMgbm8gc29mdHdh
cmUgY29udHJvbGxhYmxlIHJlZ3VsYXRvcnMsIG9ubHkgc29tZSBmaXhlZA0KPiBkaXNjcmV0ZSBy
ZWd1bGF0b3JzLCBidXQgdGhleSBhcmUgdGhlcmUgYW5kIGN1cnJlbnRseSB0aGUgd204NzMxIGRy
aXZlcg0KPiBkb2VzIHRyeSB0byB1c2UgdGhlbS4gU2hvdyB0aGUgc3VwcGxpZXMgaW4gdGhlIERU
IGFuZCBtYXAgdGhlbSBmb3IgdGhlDQo+IHdtODczMSBzbyB0aGluZ3Mgc3RhcnQgdXAgY2xlYW5s
eS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4N
Cg0KUmV2aWV3ZWQtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYUBtaWNyb2NoaXAu
Y29tPg0KDQoNCj4gLS0tDQo+ICBhcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOWcyMGVrX2NvbW1v
bi5kdHNpIHwgMzYgKysrKysrKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzYg
aW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFz
YW05ZzIwZWtfY29tbW9uLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOWcyMGVrX2Nv
bW1vbi5kdHNpDQo+IGluZGV4IGNhMDM2ODVmMGYwOC4uODhjZjNhYjQwYWE2IDEwMDY0NA0KPiAt
LS0gYS9hcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOWcyMGVrX2NvbW1vbi5kdHNpDQo+ICsrKyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05ZzIwZWtfY29tbW9uLmR0c2kNCj4gQEAgLTIyNSw2
ICsyMjUsMTEgQEAgd204NzMxOiB3bTg3MzFAMWIgew0KPiAgICAgICAgICAgICAgICAgICAgICAg
ICBjbG9jay1uYW1lcyA9ICJtY2xrIjsNCj4gICAgICAgICAgICAgICAgICAgICAgICAgYXNzaWdu
ZWQtY2xvY2tzID0gPCZwbWMgUE1DX1RZUEVfU1lTVEVNIDg+Ow0KPiAgICAgICAgICAgICAgICAg
ICAgICAgICBhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwxMjAwMDAwMD47DQo+ICsNCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgSFBWREQtc3VwcGx5ID0gPCZ2Y2NfZGFjPjsNCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgQVZERC1zdXBwbHkgPSA8JnZjY19kYWM+Ow0KPiArICAgICAgICAgICAg
ICAgICAgICAgICBEQ1ZERC1zdXBwbHkgPSA8JnJlZ18zdjM+Ow0KPiArICAgICAgICAgICAgICAg
ICAgICAgICBEQlZERC1zdXBwbHkgPSA8JnJlZ18zdjM+Ow0KPiAgICAgICAgICAgICAgICAgfTsN
Cj4gICAgICAgICB9Ow0KPiANCj4gQEAgLTI2MCw0ICsyNjUsMzUgQEAgc291bmQgew0KPiAgICAg
ICAgICAgICAgICAgYXRtZWwsc3NjLWNvbnRyb2xsZXIgPSA8JnNzYzA+Ow0KPiAgICAgICAgICAg
ICAgICAgYXRtZWwsYXVkaW8tY29kZWMgPSA8JndtODczMT47DQo+ICAgICAgICAgfTsNCj4gKw0K
PiArICAgICAgIHJlZ181djogZml4ZWRyZWd1bGF0b3IwIHsNCj4gKyAgICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsNCj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRv
ci1uYW1lID0gIjVWIjsNCj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0
ID0gPDUwMDAwMDA+Ow0KPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8NTAwMDAwMD47DQo+ICsgICAgICAgfTsNCj4gKw0KPiArICAgICAgIHJlZ18zdjM6IGZpeGVk
cmVndWxhdG9yMSB7DQo+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1m
aXhlZCI7DQo+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICIzVjMiOw0KPiArICAg
ICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmcmVnXzV2PjsNCj4gKyAgICAgICAgICAgICAgIHJl
Z3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Ow0KPiArICAgICAgICAgICAgICAgcmVn
dWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47DQo+ICsgICAgICAgfTsNCj4gKw0KPiAr
ICAgICAgIHJlZ18xdjogZml4ZWRyZWd1bGF0b3IyIHsNCj4gKyAgICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsNCj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1u
YW1lID0gIjFWIjsNCj4gKyAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnJlZ181dj47DQo+
ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxMDAwMDAwPjsNCj4g
KyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEwMDAwMDA+Ow0KPiAr
ICAgICAgIH07DQo+ICsNCj4gKyAgICAgICB2Y2NfZGFjOiBmaXhlZHJlZ3VsYXRvcjMgew0KPiAr
ICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOw0KPiArICAgICAg
ICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAiVkNDX0RBQyI7DQo+ICsgICAgICAgICAgICAgICB2
aW4tc3VwcGx5ID0gPCZyZWdfM3YzPjsNCj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4t
bWljcm92b2x0ID0gPDMzMDAwMDA+Ow0KPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1t
aWNyb3ZvbHQgPSA8MzMwMDAwMD47DQo+ICsgICAgICAgfTsNCj4gIH07DQo+IC0tDQo+IDIuMzAu
Mg0KPiANCg0K

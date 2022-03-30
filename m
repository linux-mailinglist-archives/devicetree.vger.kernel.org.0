Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69EAC4EC546
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 15:09:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345587AbiC3NLm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 09:11:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344957AbiC3NLm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 09:11:42 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9047D20C183
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 06:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1648645792; x=1680181792;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=kv+Q3CdBO/j3M4nVAsEj8456W95w6Op+Qhbfv8Y1O+8=;
  b=VZXbO8BqmKxUJ4O1qNr5Nq/eY0kdRA/rJaMBTOWHiYs80ekSoMdw43S7
   V4olECHbaGEqS4+OlJ5m6qNUZ1zLn7j7pwA2CwGa3bxj/QjLxGQRD5ZV1
   kJ3drZuYsibc4NAZfTGSPabWKvqPwiKxRwgKCDBGA+Q7/XZ0ZmgKJ+zKb
   3LM1aEU8plbL/U2+MEyjOr/cVP/3LE00rUo/svI4AVn1PL8fblFXI/n9A
   4D/hm27+ni+HigKjOJ70TSRINesjuJ2/xlZmCNQZ0LvJjN9Y9vFXavGjz
   Vwto9KTDuVVxZNlrIJNUyY8zMguvX1jFeS6NTg8UC+rtJHxoWHTDfb1NE
   w==;
X-IronPort-AV: E=Sophos;i="5.90,222,1643698800"; 
   d="scan'208";a="153762300"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 30 Mar 2022 06:09:49 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Wed, 30 Mar 2022 06:09:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17 via Frontend Transport; Wed, 30 Mar 2022 06:09:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M6rxzAsPJDqE8o9lXDMq/g7o526HnFhGqGHZTdUoDKssIG200WJ83XC7YFUuPdSbSfDNbYnp3jkXprN5HrHEeMWYMt745bGTJYUpQhZVcxQQbXJEwrSSLqX3SPzU52Sf6z/PpATeO5F7JZ5mSPA11PjxHCjQ5UN+gARClZaSPV5P+z2kX35Noo0JZdio1p+mMw/JNoNz1rWaE+xfB+JtjjOZw9pdhTCLp2yMEujilkaZCQEpNqQ/GS1sTQIi4Auz+fwGwv08G5IRdSQHY/LjrAY38iRO8PkSQROLSktg2hKHX5Q2dbnr+BAzCC/fDtH4l89QdPfPsgGk9TglQEfwwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kv+Q3CdBO/j3M4nVAsEj8456W95w6Op+Qhbfv8Y1O+8=;
 b=iUlGTnkgdujYBjNi+q8doNI0fdFzoH5NtJplOWWoLfosKiteqXcTTl+MogZbKkK9qYDIN0gxYOP9verIVU5iK4H4BeCIr7cLr4IX1Aa+J6StFDV6dv4je6Z0qRhxIJsBeIKSHkCOMr/Xh9qxavFAp7Fnt3PboEym+fRO5R7zTcbsJ8Ck8Vsx5MmUe9sv1peq8A6nUKP0GGqHMbKr5Z1+Zd9T9IhVPddD9XofT3bGrwFdWjKkv7e7TvJBfqRiVG3aEKYX8Xu6Pj0h2S5zMekTB1yDNKWep8x9M6LtxHq4iwI17bLTW/0yEl2YwwmSlW9wFTk4RuW8F3W0nrzie06P7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kv+Q3CdBO/j3M4nVAsEj8456W95w6Op+Qhbfv8Y1O+8=;
 b=OCvAnNhNNqW4fXGDmzHmbGz2neECQhzHNVzWrGIEjtDEQzFyoKOKBsTCWhFXeva+JX2KwHmij+8Mqp4+6WVPGqhgWMpNUNa40x29eQiQlcJh9nExCPfyRFmGfYciqu3TYRCTHh/QmU6AXe5DVawm83eRA0DFF4AuT2oMGiPVGYY=
Received: from CO1PR11MB4769.namprd11.prod.outlook.com (2603:10b6:303:91::21)
 by SA0PR11MB4637.namprd11.prod.outlook.com (2603:10b6:806:97::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.19; Wed, 30 Mar
 2022 13:09:47 +0000
Received: from CO1PR11MB4769.namprd11.prod.outlook.com
 ([fe80::6d66:3f1d:7b05:660b]) by CO1PR11MB4769.namprd11.prod.outlook.com
 ([fe80::6d66:3f1d:7b05:660b%6]) with mapi id 15.20.5123.021; Wed, 30 Mar 2022
 13:09:47 +0000
From:   <Claudiu.Beznea@microchip.com>
To:     <broonie@kernel.org>, <Nicolas.Ferre@microchip.com>,
        <alexandre.belloni@bootlin.com>, <Codrin.Ciubotariu@microchip.com>,
        <robh+dt@kernel.org>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v1 1/2] ARM: dts: at91: Map MCLK for wm8731 on
 at91sam9g20ek
Thread-Topic: [PATCH v1 1/2] ARM: dts: at91: Map MCLK for wm8731 on
 at91sam9g20ek
Thread-Index: AQHYRDduRmW9c3XWJ0uhfbIWAMtM6g==
Date:   Wed, 30 Mar 2022 13:09:47 +0000
Message-ID: <757e899d-cf01-c410-dd64-72bc4cf12fde@microchip.com>
References: <20220325152715.1597893-1-broonie@kernel.org>
 <20220325152715.1597893-2-broonie@kernel.org>
In-Reply-To: <20220325152715.1597893-2-broonie@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb675f43-2304-4cce-711d-08da124e90cc
x-ms-traffictypediagnostic: SA0PR11MB4637:EE_
x-microsoft-antispam-prvs: <SA0PR11MB46372C88F1CAEC136E4F6B57871F9@SA0PR11MB4637.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WKtQsWtJ8pbwfGB1BTs3cd7JLnjpSYvDCGeTNDQ8q80Uo2rwAeF1gY90stlWVVz/p8ZW2ad5sq8q5VsV0ckBlKss4l4cJ7gk8WO6WummgOKDRZX+GpS3UIrw4AeF2UMQR2NgRticc4A17yizmYOOOQrp5yO1xjEIsl6nQyj2Xd3IIcDOfOEHeeaxBP7IYJpD9WSoDCaUDw3ieWmGD1NbvP+yWc/pUzzWlGvEml/YA3LOOLQ1fX06WOnZdD56YTd2AK/ouQbrjdE5DdLW/yYc0VLW8xyOWKaDZ2jzoi6B103du5zbIkghQHFyD9mc+254WwOQ51OYCkimVYF3p+XNd93DJMQdMcmb4myxKdPsUCrWPayw5Co6nocPmrvby1JmR++4i6AlZKXr0dHZQ6Kemk7HjiRQnP4LzqaRaF2QuybWnPfktplrlgY9m16siOKmsJkudSf/eNLyT1VZVi1pbulv3eVIv679HBRQE8hoL4e/FFOY8ajr6pWexU9F3iRTCh9QCtk3sNC4loK2BPwOVH2qUPLuRR/olMTyIzGs4x2e08oj4h3caMGxAv1QCc6yTdAU2TO18Jzor3l0VnmaXu0rpDxJ02YVOS//SU1BJTFzd45IJJES35m25IIP45cLFWup5X7I6HFP5WS5kW3EIdosTuf0zuEH5CWKQetpQyEK1WX/gKr8sl/c0lgCwStpwyqJg8RazH5QiR7JCCxjXqY4ZQW2ABUpEz+0XBeWmD8JcEFD5J6s22pGSJszjRb2EpWiJg12Fvkv58p9EJk+4A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4769.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(38100700002)(122000001)(38070700005)(66476007)(66556008)(91956017)(64756008)(66446008)(76116006)(66946007)(4326008)(8676002)(8936002)(316002)(5660300002)(110136005)(54906003)(2906002)(31696002)(508600001)(71200400001)(86362001)(186003)(26005)(6512007)(36756003)(6486002)(83380400001)(53546011)(6506007)(2616005)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RXF6Y3NVQTBEYnM3Yy9YQ2U5ZkkwZ1M3YTdnTUVNZTJiZ3VLV3VDc2tQMHdF?=
 =?utf-8?B?RURuVFBSb3lZNXQxZ2JKVlRYVVpXOWtIR3ZmTjBxRXB1S2pVVFArV3J3R3Rz?=
 =?utf-8?B?MldtNE9UMHpxU0x3YS9paEtleDN6NFNpQXVoVGFVcWxqSEpLZDdhZWFDb1FZ?=
 =?utf-8?B?TnBmZFFzcUZ0M0p2b0JvdUd1V0JkZlUvdlNPT0NOdHVRKzhsVXM3djRXTEd4?=
 =?utf-8?B?K0ROSEpSK1RMU0FveHhtTzhucGNMQk9kenJXdjlLTUdiMnc2Q3UwRnM4M3ll?=
 =?utf-8?B?b2RWK2F0MHA3Y0ZEdGc3N0xmOWdmNUsxQXJuMUFnTWdzK1pLOUMwMnhRRHhh?=
 =?utf-8?B?T0hmcU1jaXBqS0xuSitYMVVGQ1dHOHErbHhHNk9hc2hnMlVmMG9iNUtoWWls?=
 =?utf-8?B?NURwNjEyYUIwY2V3Y3BRR05UUFQ2RXlmLzdER1EvR1F1eVYyRlV5eGJQRk5I?=
 =?utf-8?B?N09Vd2J4ZWZjZUliNWM5VDdUOEt0WGNZWERkM3RZM0NNeEd1M0ttT3h3OHY1?=
 =?utf-8?B?M0YySHA2elQ2TE5Jd2RTTTh3UlJFaUFHVGY1TUJ4MVhjcUhSUHVIYTFrMVli?=
 =?utf-8?B?NjhUZ1o3aUhuVHVlQzNxcE95aDR6YjhDWmJrS1FkL1NkMk0yNWNhbDdPQUtk?=
 =?utf-8?B?OGkvdkd3TEtoL29jdWpCZDhISzlscHpCYlZsZEF3dlhnMXFyNEMzbWNBRUQ1?=
 =?utf-8?B?dzRYdE0vYldwemRJd1JUZTk2NmJaY3BWenF5SkUzNFo0dk4wREwwdWdiT0hO?=
 =?utf-8?B?aysyV29tNysxNGxJU25oUEV2QUxQZFI2NHlXZDJzY2xSLy9qQzA5dDhPc001?=
 =?utf-8?B?THNESE1FeFB6cXN3S2FVSjU1ZXgzbE9xTFRJaGtjbVJQSXRWQ1lCWEZ6NVFz?=
 =?utf-8?B?WmZIZWRLajlQWk0rT2UzSS9TalRyc2ZxMTlVRFZNWWJyb3d6WnRhYkZ4bUFo?=
 =?utf-8?B?dityb2xTaVh1amw2Ym1wWVg2aEhYVkpOVlMxVXVjdjZ5NTBEZVo4UlAxVHZq?=
 =?utf-8?B?VUl5M1ovMThkL3Z3VlZYaDFlR082eVpsSDA3VWdZM2Z6enUxaXhBWm1rSHR2?=
 =?utf-8?B?QXg4Qk1ZQU9CYkl4bmZ4SUw4VUY1azZVNHU3NGxWRHZ3OEVEZ2Z1enF5U3FY?=
 =?utf-8?B?TXZvM0wvMEMxQWpGdUQ0Q2pmUVNMRDRySmh3d2EzUHg5OUVqNDlEeVVmcy9Z?=
 =?utf-8?B?K2RxNjF6emlHTWRucTdDd0NCTWJXTHpiV1hhdmdtNjVGOWtIVVhLcllDZWJn?=
 =?utf-8?B?NVFueTNFc2NKWWFZTUJpZXA5ZU4rTS9tM1NTT3YwTnRJai9Tbi8ydEV3NUNB?=
 =?utf-8?B?djIzWFFlRndiRlJuUzY4WWtJQUZibFRZWlNUODdRTnFNT0FFcldtQlBDSGd6?=
 =?utf-8?B?U05ZVkxZUWZoQk9ZRnltOTlEMFEyNC9QdXRrK0RrVThobE1iOTdOQ1gzOTRV?=
 =?utf-8?B?MThtLzRJTU5HcE1IWWxxU3ZPd0lnWW9zZmh5THV1TFJlQjF1ZUdDKzBONEZV?=
 =?utf-8?B?aGwrYlZtYlZTdVdINDQ1RTRlR2hQSWxjU3lVYXR3ZWtzdWlTMGlzRG9wemtx?=
 =?utf-8?B?OHNJdWY3SnlLQUJLVmtxbFV1cE84WVVXOWdVUzJLUlIrMVBnNDM1cGl1OEc3?=
 =?utf-8?B?Z2ZMbVNTc0U1UGtKME40YkZiK3pPSXhJTndqaXJuc3k4OUZoOWhXVVgzMU5G?=
 =?utf-8?B?QW5BYmR6NTlhY1RZQml2dWZYVjkwOEIvcnNvT3lXelBaM1RHaEQwY0tBa1pW?=
 =?utf-8?B?OTVTUXpFZUJOSHg2T0VOdFZoSDFORVQwSHFBVm85QVB0SHhFRlI0UEF6WjVX?=
 =?utf-8?B?bHQ5M0lQTVNockw5NHd2eWZkaXk5Sm4rR2I5MWdKMG91MGdjZ01YT2RLUkZU?=
 =?utf-8?B?ek5sVmY0ZUpOMnVwbDZTcDBJZXVHOXBHK1lOb2M4SmdtOS96cVFjVnRlcThu?=
 =?utf-8?B?NmVjdk1veWpqZjhsQ3Rlc1FBeFBOZnBKckhLKzVIeG44OFRtb0lMVjM5T3Z2?=
 =?utf-8?B?Q1VkamJpK1ZudmJuZ3B6b00rZk5PSnpka2Q5RlhpTnFZT3hNTlBYTVpLQWVw?=
 =?utf-8?B?bTF0VDFxUy8zNGVGTTNaVG9yNUFMQW5OU25pcDZiNy9Gemp6UmRYcHBHV2Ix?=
 =?utf-8?B?UUZTa29meGtPZDFqajNlcjg2OUpkOXZMODg0SWVtNlBPZm8raWorUnhQcGpS?=
 =?utf-8?B?d1U4NHJPZlhyZnhsZ2VBb2lzemhubTZqTTZnZ2wzVTREZ2NSR0FCKzRqdm5l?=
 =?utf-8?B?RmFSVnkxRHAvSE4rQU9kOWd2NVF4VFU0bnNLZit1LzN5dWxaMFR2NTFnb25k?=
 =?utf-8?B?bGpsUlRhY1Rub3pFd242WnJkTGIyYWkxSkIreU5qck9NaTJZRGhYcm5pZDVq?=
 =?utf-8?Q?bEFceqiCGV7+exbs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AC82CFB841447A468E3CF1D181735370@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4769.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb675f43-2304-4cce-711d-08da124e90cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2022 13:09:47.1463
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kba3OnKY5CJOCDSUNiORHM4AJgTWzf7dIZE9iX/+586I3RYgpX6iY9MIIJ6U806y3BbuhLs6AFM42lvoCIeLGXR6u3zbICGoZroNdRvpRaQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4637
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
aGUgY29udGVudCBpcyBzYWZlDQo+IA0KPiBUaGUgTUNMSyBvZiB0aGUgV004NzMxIG9uIHRoZSBB
VDkxU0FNOUcyMC1FSyBib2FyZCBpcyBjb25uZWN0ZWQgdG8gdGhlDQo+IFBDSzAgb3V0cHV0IG9m
IHRoZSBTb0MgYW5kIGlzIGV4cGVjdGVkIHRvIGJlIHNldCB0byAxMk1Iei4gUHJldmlvdXNseQ0K
PiB0aGlzIHdhcyBtYXBwZWQgdXNpbmcgcHJlLWNvbW1vbiBjbG9jayBBUEkgY2FsbHMgaW4gdGhl
IGF1ZGlvIG1hY2hpbmUNCj4gZHJpdmVyIGJ1dCB0aGUgY29udmVyc2lvbiB0byB0aGUgY29tbW9u
IGNsb2NrIGZyYW1ld29yayBicm9rZSB0aGF0IHNvDQo+IGRlc2NyaWJlIHRoaW5ncyBpbiB0aGUg
RFQgaW5zdGVhZC4NCj4gDQo+IEZpeGVzOiBmZjc4YTE4OWIwYWU1NWYgKCJBUk06IGF0OTE6IHJl
bW92ZSBvbGQgYXQ5MS1zcGVjaWZpYyBjbG9jayBkcml2ZXIiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBN
YXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5vcmc+DQoNClJldmlld2VkLWJ5OiBDbGF1ZGl1IEJl
em5lYSA8Y2xhdWRpdS5iZXpuZWFAbWljcm9jaGlwLmNvbT4NCg0KDQo+IC0tLQ0KPiAgYXJjaC9h
cm0vYm9vdC9kdHMvYXQ5MXNhbTlnMjBla19jb21tb24uZHRzaSB8IDYgKysrKysrDQo+ICAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
Ym9vdC9kdHMvYXQ5MXNhbTlnMjBla19jb21tb24uZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F0
OTFzYW05ZzIwZWtfY29tbW9uLmR0c2kNCj4gaW5kZXggODdiYjM5MDYwZThiLi5jYTAzNjg1ZjBm
MDggMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05ZzIwZWtfY29tbW9u
LmR0c2kNCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MXNhbTlnMjBla19jb21tb24uZHRz
aQ0KPiBAQCAtMjE5LDYgKzIxOSwxMiBAQCBpMmMtZ3Bpby0wIHsNCj4gICAgICAgICAgICAgICAg
IHdtODczMTogd204NzMxQDFiIHsNCj4gICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJs
ZSA9ICJ3bTg3MzEiOw0KPiAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgxYj47DQo+
ICsNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgLyogUENLMCBhdCAxMk1IeiAqLw0KPiArICAg
ICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JnBtYyBQTUNfVFlQRV9TWVNURU0gOD47DQo+
ICsgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gIm1jbGsiOw0KPiArICAgICAg
ICAgICAgICAgICAgICAgICBhc3NpZ25lZC1jbG9ja3MgPSA8JnBtYyBQTUNfVFlQRV9TWVNURU0g
OD47DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDEy
MDAwMDAwPjsNCj4gICAgICAgICAgICAgICAgIH07DQo+ICAgICAgICAgfTsNCj4gDQo+IC0tDQo+
IDIuMzAuMg0KPiANCg0K

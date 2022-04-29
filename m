Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5D9C51475A
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 12:50:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357821AbiD2KtD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 06:49:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358132AbiD2Ksy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 06:48:54 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED216CA0F3
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 03:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1651229037; x=1682765037;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=9r2f8XwLAqgr6J7v5jactrjsIPbFf0owJpCVw26mgw8=;
  b=WEax5V+Bw7qEiN7DtWEkejvj3k9mwLW0pHyxKo1vkYPbkcuUwYUOOD0C
   V7jI51a74Sdq3lBOMZsJ3iTs0F0rZh7awMSUl00Fpiyn4KWwuj7ZhiHtM
   G0qjWuPGt9BKzN60yepmq7Q7OEE5IQYEf9ot7KnKs/ZmB9CdATRYSXArw
   BN8hjjYGfUbp/GFDPWSzQO29bqJOWrEmTRm4watRWTQ07/sq6ZqqnlViU
   8VbbJkNnBZTfpsrNOqHTChzFkCXkIFRYSQ15b+6ei6GYI938wO0hUD/QT
   Sr5oJlzqo7G7TOJFeotUGJP+tISINF6YXTkOJyDGDGRDFj0hPQxnM1VN9
   w==;
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; 
   d="scan'208";a="94031995"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 29 Apr 2022 03:43:56 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Fri, 29 Apr 2022 03:43:57 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17 via Frontend Transport; Fri, 29 Apr 2022 03:43:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mqtv4flsOBBMi9bnpNvpoKAMoaTvMR9bdTn0d1PgtvLeXWrsjB8dyOEpV0u1GOkf1VcuJuG1fJdgjAueuJVZ/NnuOMOe4Y3OQbBw0df/0tEbjFL0QeDgQj61E65YGB8jZdLmoUF9wKy0peJg5BH2XrkIcsYy9/lLWZQsoA5dcuB9H9dIiGZ7tLPAVAY3hpZlu07uXYnbJ63qlMDNHg3EnKya2ZL+TarX9ZLUAJ+Y5OJD9tPlBWdPmnP4nmW0ZFVz3bh6fOo3nNc/xLA2g/kIXRQrVQVkkbhEr34JmAYrPfGuf4uF3OJkMotxzWVdleJt+k/VgnWW6SQf6QsYnlMUsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9r2f8XwLAqgr6J7v5jactrjsIPbFf0owJpCVw26mgw8=;
 b=GSZwDUjVruHjdtu8j9i18R0mUBHHIVEdLjzrvzIIAZG/CREp7Z2G2DpNVXD4p8+VvH7ubg4/dhVLE1Gzj90Vp38TPG9McDsa/oKuSuGO8BDB1+bEROnp9C0nNgwFhy73rATGdPdLFC/xNvjtmAn8CRMtd4e4gr4rZPq1UmWJqzSoFp1pl6H9O2/ajARp8ntzgxs9etVE5Ce9MYTv4TDR3nLZFhoHzTfzt0rebDaLCMLUPS5CA2DVZKnINqUWq82zl5hwdsccI3VqbpKa+FS1zqpW7PKfSNvEO/+ZEjxsfuznHeO6FBi23tvaBTU6MwsP430e18a6o/LAg+z0BnXU6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9r2f8XwLAqgr6J7v5jactrjsIPbFf0owJpCVw26mgw8=;
 b=lrJnBgU9/UePSK6KAYvkykeys+QtOgFdP8PjVeiaUajJ8ltPHF7ICrHv4aFTCWYqwMlE9Uh9+NXDxw9Mo2n38QhyudMgadeo7Bkhb/0/zrozdMxiS+AuSfhgiLae0kZ0wc2CDTpJP02QrTd42s12Elj66yxRDbmlrKv2omo5sI0=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:95::7)
 by LV2PR11MB5975.namprd11.prod.outlook.com (2603:10b6:408:17d::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.21; Fri, 29 Apr
 2022 10:43:51 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::fcd4:8f8a:f0e9:8b18]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::fcd4:8f8a:f0e9:8b18%9]) with mapi id 15.20.5206.013; Fri, 29 Apr 2022
 10:43:51 +0000
From:   <Conor.Dooley@microchip.com>
To:     <palmer@dabbelt.com>, <robh+dt@kernel.org>, <krzk+dt@kernel.org>
CC:     <paul.walmsley@sifive.com>, <aou@eecs.berkeley.edu>,
        <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <palmer@rivosinc.com>
Subject: Re: [PATCH 1/2] riscv: dts: microchip: remove icicle memory clocks
Thread-Topic: [PATCH 1/2] riscv: dts: microchip: remove icicle memory clocks
Thread-Index: AQHYWJG8GvSm7kgmekeJAuwxkHZm5K0GusuA
Date:   Fri, 29 Apr 2022 10:43:50 +0000
Message-ID: <78d063d7-a75f-3a36-5bd9-11f610a44ee2@microchip.com>
References: <20220425104521.132538-1-conor.dooley@microchip.com>
In-Reply-To: <20220425104521.132538-1-conor.dooley@microchip.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: af68c131-25df-46ff-53f1-08da29cd2617
x-ms-traffictypediagnostic: LV2PR11MB5975:EE_
x-microsoft-antispam-prvs: <LV2PR11MB5975E861A026811709770DB198FC9@LV2PR11MB5975.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Kj9c+CbMm/of3E6c/ZIL6fwoi7l9/Sp8EW08ipc8DnQiNdyaSUGafdruxdnsX0imH6fZngb+aKutO/sSDgqrzlVhMNxoD0d0Gt5jZotx7jFozZmE67pcWskutKcIwSRlv77Rr+rYi686db2k3iT5sDTeJa/DNWQMgkZXcX9r7LZodvuV/4wzvoFG38hSsoXDTsWFCu9RcDm9kr2pvMITEOuXwyn7eWp/Ja4IQDr7epZiJjkzU5qZ2SOmVRdgKmGjqAgzNv9vDKt+Wqiy1Qkx9LMErGfVIZBu/+D9URr6m0cHb0fDggY2mWfqQj0g7SQ2cq/ARyJBOcDKdpao5IDYpS02pvWQHdSuAPMhxhyG59EIhFfzqjC35N0iSewAqzauneeDzz6M43L0Zu9MJTM2Ekd887ZNivnByuNlth/D7OyJC7XaODJj9wqOWoHaocx9gCR6XVsZ+8AW3BnNISRU/MF6WiwT/T2rUU5wXM2qF/29wfj/WW/j4vAouytsTePPQJvSLEo4yBN3+pVIgBE/c/gAcvMzgWOqQHqCaI/tGu3ulat6EayMfhzMo21Q77BmmB1m/RNgz8YNdsTsCyopi0XafpfKiw+InWJ4MwtpiJ6jwbUUZdV0Bao9Xq9EQVBNZ8x+OrhU3BRVGGBRVL2QyCYNCIJw66GDs+u8UFrubMtEUram/pIZ4stVaLICj6x32l++18CFo6jJ5bKusF59FOdIJEJp2Iw//p0zEQlTblQ5RGRjL5O7AB6N9aUUcSZKa91dUtsJS5WXuEskmzY8ibt2dPRkUwLeZIbLsKcvStwgL38BgQOwHWFmZiko+GgYMspIMgzh6H8pNy4u2utf0/acsoou4tQ/NC1kklVRxBc=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(53546011)(186003)(316002)(2616005)(38100700002)(6512007)(26005)(31696002)(122000001)(86362001)(38070700005)(5660300002)(508600001)(6486002)(966005)(36756003)(71200400001)(8936002)(76116006)(64756008)(54906003)(110136005)(8676002)(66446008)(66556008)(66476007)(2906002)(4326008)(66946007)(31686004)(91956017)(83380400001)(6506007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZDd6UDZSMmhtanpqSjV3aXozQVVDVGU4bVM2d0dHNENSdE1SMVlqdXFWZjRF?=
 =?utf-8?B?RzMyOHZNcElsVk9MRS93cm9CVWlZZzdMWklkUGRFQVRqLzNVN2M5a2F4eG9n?=
 =?utf-8?B?ZGV6czFnTnBZVkdiVlVVL3UzWno5blBuazFzaHk0YjNrYUZLTzI5UEtiS1Jr?=
 =?utf-8?B?a0NTZncvT0J3NnZyRTVUMHZ2Qmp3N3BmNlBEd2FIOXAxWkFQNFgxWlIwaS9S?=
 =?utf-8?B?NVFnbldFdUVDYWh6Z2VVa2ZhWUIrRVFiVlU1WHhGTzFPeHVoWlNYbFVNcm92?=
 =?utf-8?B?cVNRNUo2d0FOUmZodVdYa2FlMGg4WDI1Rzl6bVQwWUU0RVZScjhIZkVxajla?=
 =?utf-8?B?TXQvZ1FIdjk4ZHpscjVUT0RxV2xsWnJsZTFtd2FiMkZ3b2ZQYlFRQmtTODZt?=
 =?utf-8?B?dzg2R2EvVk1OSG1KTEp0UjExVWxVdjdxejEzWWNrdC9mclB3ejJJNWgzeklG?=
 =?utf-8?B?TGtZeE0xRGtFWlhTOW43ODd1enpEcHR5Nm1JWGdFTUY4RE12em1IeVhNb0Y0?=
 =?utf-8?B?QWpwZUNkYnZmSWNDOXJNb0Fsa1ZQTkhnZ1d3cEVTT1RsODFoZmtYVzJBSm4r?=
 =?utf-8?B?a1dmbkI1aGRGWGtybGdPSjBEUkVleGNkVUZ4c2p6Qlprb2FvTm1Rb2VFcXdr?=
 =?utf-8?B?c1hRUnU5VW0zaU5TT05BaUJPVTVxZFlub1VXQ0VyZ1J5Nk5NR21aKzRaRXRr?=
 =?utf-8?B?N25yTTVNL3ZKZTVod1lSSk4wN0NJeXpDdXN1QUF6ckNHRmtua3N4VlNyb3NJ?=
 =?utf-8?B?enN6dnlaa3Fpc0Z4YmpXQkIxVk5ja2hXVTZLWTNQTXlGcHdKQm8vZlNYTGlh?=
 =?utf-8?B?NVBFTm5sRG0zT3U0QjJ3U3NiQ1dtVnppZDN0RzBZNzViMjhBZWwyb0ZGQ1lu?=
 =?utf-8?B?cGptcGo5SnNaWlVCeXZlaUpIdkNKWkRxaWhjUXp2cGw3cE1vRDdnM1ZHbW5S?=
 =?utf-8?B?eFZTNzZSQVI3UDV2OS90TnB6NklXdFJtbFo4TnJ2bWhDWFZZbFluVUxlTUk5?=
 =?utf-8?B?Qkd6aGhpVzQ0NnlwRTFkN0d3eGNML3FTbU5DUmhjUFpYendIS3hNVkRGR2l3?=
 =?utf-8?B?VXdyaXR2WllyelYzMTNKRGorZ1h1U28vQVVqVUVuVkRteCtVbCtyR0xUeTlz?=
 =?utf-8?B?aWNLcUQwUnFtWmNDRnprUUxxMFB0L1c2eVVrdWozZSt0b0svbFpqMjZsbHJl?=
 =?utf-8?B?Ty9iRjNGNEVSaFlWRDduUHlhVGZGN2NSM1B3Rmxja25qRzFwcUNERmUvYjRn?=
 =?utf-8?B?V3B2Ukg1QlkzTDgrb0ZDWmVGTEtyUy9mRFlaWkdYcG92b3RCTEFwbDJvNzUx?=
 =?utf-8?B?Q2FZQ09DS25ZekVNWUN3alpSbWUrOTAyMkN0b3hDVEZ1anhUNzVMaUZZYlpk?=
 =?utf-8?B?S1RMdEpncVk5YXp6YnF3N1dtRXZaaFNaNUxLcGNLT3lWVDl1aEZldWtGYlBz?=
 =?utf-8?B?WWRiQWtPOGo2bGdvT2tUb0l4QWZtVVJYRlB1M0FxTTZCWFVlV3FXZXBBVy9t?=
 =?utf-8?B?NHczMmwzd3ZsQlNWa2dndTNRalZUQXdEMnNLZmdGbUNSRmp2L0tWSHM5RHov?=
 =?utf-8?B?dVFaMVdBQTBxTVVEUzdJQ2pJMy9GdFk2VnNVN1pyWVgvbzU2QjdTRkxSUG02?=
 =?utf-8?B?QTM4TXJ2b3ZnajZSSTRXZzB6ZVFjQzIrYU84dVRZcVJDUnhSTURkQ3UySGg2?=
 =?utf-8?B?dUU5YnFnZkRXaXlnVWRhbWdtWDNYSnNWS0pLMTBtQTh4YXdSa1V2NmE1cFE4?=
 =?utf-8?B?Z202dnc5T21pQUdzb2ZDT3AydFd1V05Ib2dsQVhraVBCR3ROTXpHck5GSzU0?=
 =?utf-8?B?QjF1c012bnVLdEdVMWgxU2VncUJYS0tJSXJzWkpxYjBlcHB4MUl0WmhlRmNr?=
 =?utf-8?B?WURtK2dPS2V3MmNRUkJ5azMxcm9qcWh0cHpLREZtWlhQaXJVMkk4ODNZNEVJ?=
 =?utf-8?B?czVIaFFmRHZNSk5UUk9pSEdYWTdBLzJETG51SWgxNWlPOHFmK0N4ZFRPSml5?=
 =?utf-8?B?QUVIdUxrMERZaEhPWWliMjVsdTlKNFBpbUNVWTJDUmE1KzgxWVFkamZTMEpB?=
 =?utf-8?B?eE9jVUxTdWp1ZzJENHMzQlpvMmNRUTgwUm9waTJXbmNKc003bURoT2JJWkFw?=
 =?utf-8?B?aklRUlRTWURxNjNwQll6Z21reEh2b3NYbHdCYk9xZXFTUmZmK21mZ3A2SkNt?=
 =?utf-8?B?ZWx2b2lLSmRrQldsNVBlTGZjRXBtMmhFY25oZ09aeDRzQWE0WkJBRDRYci8v?=
 =?utf-8?B?RXZrdVhJVU9ORmhaUk5rK0J0TzQ0MjR2UWozYUpvejZSL1poRUlMdk83cFZT?=
 =?utf-8?B?VTlJV0hCUXBMVGxmRU5tZXNJYXJMNFgwNzF0Q0I1cFJvNXhFTmw0dz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <953194B428B9884EAAAD7635636E903C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af68c131-25df-46ff-53f1-08da29cd2617
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2022 10:43:50.9808
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cW+cIYXzHUkndNkB4eWLv7iKeGZ6mz0pylCGuK7uLHnX6Ibd+Z+/mq8DB0ueDW3mFn9n/aqMbq1nYWpq8i2ZvN/cOtssJeNml96nRYW+Tng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5975
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGV5IFBhbG1lciwNCg0KUGxlYXNlIGNvbnNpZGVyIHRoaXMgc3VwZXJzZWRlZCBieSB0b2RheSdz
IHBhdGNoc2V0Og0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcmlzY3YvMjAyMjA0Mjkx
MDQwNDAuMTk3MTYxLTEtY29ub3IuZG9vbGV5QG1pY3JvY2hpcC5jb20vVC8jdA0KDQpUaGFua3Ms
DQpDb25vci4NCg0KT24gMjUvMDQvMjAyMiAxMTo0NSwgQ29ub3IgRG9vbGV5IHdyb3RlOg0KPiBU
aGUgY2xvY2sgcHJvcGVydGllcyBpbiB0aGUgaWNpY2xlIGtpdCdzIG1lbW9yeSBlbnRyaWVzIGNh
dXNlIGR0YnNfY2hlY2sNCj4gZXJyb3JzOg0KPiBhcmNoL3Jpc2N2L2Jvb3QvZHRzL21pY3JvY2hp
cC9taWNyb2NoaXAtbXBmcy1pY2ljbGUta2l0LmR0YjogLzogbWVtb3J5QDgwMDAwMDAwOiAnY2xv
Y2tzJyBkb2VzIG5vdCBtYXRjaCBhbnkgb2YgdGhlIHJlZ2V4ZXM6ICdwaW5jdHJsLVswLTldKycN
Cj4gDQo+IEdldCByaWQgb2YgdGhlIGNsb2NrcyB0byBhdm9pZCB0aGUgZXJyb3JzLg0KPiANCj4g
UmVwb3J0ZWQtYnk6IFBhbG1lciBEYWJiZWx0IDxwYWxtZXJAcml2b3NpbmMuY29tPg0KPiBGaXhl
czogMGZhNjEwN2VjYTQxICgiUklTQy1WOiBJbml0aWFsIERUUyBmb3IgTWljcm9jaGlwIElDSUNM
RSBib2FyZCIpDQo+IEZpeGVzOiA1YjI4ZGYzN2QzMTEgKCJyaXNjdjogZHRzOiBtaWNyb2NoaXA6
IHVwZGF0ZSBwZXJpcGhlcmFscyBpbiBpY2ljbGUga2l0IGRldmljZSB0cmVlIikNCj4gU2lnbmVk
LW9mZi1ieTogQ29ub3IgRG9vbGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4NCj4gLS0t
DQo+ICAgYXJjaC9yaXNjdi9ib290L2R0cy9taWNyb2NoaXAvbWljcm9jaGlwLW1wZnMtaWNpY2xl
LWtpdC5kdHMgfCAyIC0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9ib290L2R0cy9taWNyb2NoaXAvbWljcm9jaGlwLW1w
ZnMtaWNpY2xlLWtpdC5kdHMgYi9hcmNoL3Jpc2N2L2Jvb3QvZHRzL21pY3JvY2hpcC9taWNyb2No
aXAtbXBmcy1pY2ljbGUta2l0LmR0cw0KPiBpbmRleCBjZDJmZTgwZmE4MWEuLmZmZTY4M2QzZjUy
OCAxMDA2NDQNCj4gLS0tIGEvYXJjaC9yaXNjdi9ib290L2R0cy9taWNyb2NoaXAvbWljcm9jaGlw
LW1wZnMtaWNpY2xlLWtpdC5kdHMNCj4gKysrIGIvYXJjaC9yaXNjdi9ib290L2R0cy9taWNyb2No
aXAvbWljcm9jaGlwLW1wZnMtaWNpY2xlLWtpdC5kdHMNCj4gQEAgLTMyLDE0ICszMiwxMiBAQCBj
cHVzIHsNCj4gICAJZGRyY19jYWNoZV9sbzogbWVtb3J5QDgwMDAwMDAwIHsNCj4gICAJCWRldmlj
ZV90eXBlID0gIm1lbW9yeSI7DQo+ICAgCQlyZWcgPSA8MHgwIDB4ODAwMDAwMDAgMHgwIDB4MmUw
MDAwMDA+Ow0KPiAtCQljbG9ja3MgPSA8JmNsa2NmZyBDTEtfRERSQz47DQo+ICAgCQlzdGF0dXMg
PSAib2theSI7DQo+ICAgCX07DQo+ICAgDQo+ICAgCWRkcmNfY2FjaGVfaGk6IG1lbW9yeUAxMDAw
MDAwMDAwIHsNCj4gICAJCWRldmljZV90eXBlID0gIm1lbW9yeSI7DQo+ICAgCQlyZWcgPSA8MHgx
MCAweDAgMHgwIDB4NDAwMDAwMDA+Ow0KPiAtCQljbG9ja3MgPSA8JmNsa2NmZyBDTEtfRERSQz47
DQo+ICAgCQlzdGF0dXMgPSAib2theSI7DQo+ICAgCX07DQo+ICAgfTsNCg0K

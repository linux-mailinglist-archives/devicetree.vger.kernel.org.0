Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4760F53EA62
	for <lists+devicetree@lfdr.de>; Mon,  6 Jun 2022 19:09:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230492AbiFFQq4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jun 2022 12:46:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230448AbiFFQq4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jun 2022 12:46:56 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FAB1169E05
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 09:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1654534015; x=1686070015;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=tQG3lwPyO6EAU0NN6NLMWBl5j8/XUB9bCdEGywlVJFc=;
  b=RugFvrVJXAR5FZKH8MVvgODcqOLx+Z8AQth+UfDw8WD52otPw9NfBWxf
   9ym/qEG+9QJccsWFV8uPS5re28hkxsYCMPwoMrpLdZKPuFQmdIlDKVTCy
   wcKKc4MPmGm2v/LI7zsmL17RcoRZds9sq2TjvSgKiLTiIvZnoZL/gv9B+
   N5W8S+q7qJTnAlwRkwG5yqQ7gmOdyUSGlXWBML2wD9fR70bmNe5V9ehRY
   JNvSMB1xCQJz6uge1tCiC/t9pdZQv+8CEVatc9FtGWd8tIb8bnFs6kxRg
   nXt9QQzkMnrpSjDKA8t4ptfEPVdnflq/2FZFFFPNj8gfoaQtMQ8+5KAlR
   w==;
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; 
   d="scan'208";a="176721039"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 06 Jun 2022 09:46:54 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Mon, 6 Jun 2022 09:46:54 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17 via Frontend
 Transport; Mon, 6 Jun 2022 09:46:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IgKnMi9ppUOUPGJw4A5OyEWffAJUTL/4U/xTNgRbHPconGATvDwbpo969bbbdz/7aQwDr/j0wLv/mO0udGYck2ZXC022fKUHfc6PWiiwGAxlNU9fprQ8AWpRo7w4NyHdgLQeGR9lLo4Vi+SwShDwVZTolhhgTfZEvbk4TnqRVgZS32BEvX9c7xOS0M093uu03Jg+GUdUGQTIBPYnu2fhRs6/xP+fEHfFopM6l9Oe1v3vHelxFJJpXRwh7kCWCPnmpLsdu8iTMb7BVFtpxs4jXnUEtW2Jq1jZnwLEOWbmC+CtCa8KNEKJYkwjDP3NKCwrZzEspd82C9piOezwyp/JRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tQG3lwPyO6EAU0NN6NLMWBl5j8/XUB9bCdEGywlVJFc=;
 b=gTCmlw9Vtzl0eSZkgfinqKkSwuUf/JWgMF6cuC9MgK8lA6AOEErEGwRc7SqMjqDyr87Jn67n+xNiLWbOPgSdUbViU1kCbEcl0Ezx/rpjmCz1WG7OU4hvzTFfGOZ+c7ttYzTGa4GWVUipXKDZ5FPvSf0HLrnaXMAS0Nj9XKe+uuqe5yJD+99lz2AHwFhf/sA3YIpJAkidFxCiIOuijx9m0z52G6CdB6urzrXmPlm+dEi3UgxTkzifMRLEa93JP/yLbSQUddcsBfLeh0ZAJcz8gQg0wBffc4/olW1f3044oUew2+ly52yQqfqjlulbypD3ROZy/ykNtBJb8yx1QiJiCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tQG3lwPyO6EAU0NN6NLMWBl5j8/XUB9bCdEGywlVJFc=;
 b=fZ5JrXjFW9gEugfK+aiS3Gt+2u1wA+r3BLvKW9wb8KpncKvEcEpvUSrfjom6fDpLnvT8awpwlEyZnpaZufKQJYPxF3iWg3tEoB4cM2bNRVY1IVZFKmNc0oEP6blElgkt8HE/bJPizTOVfH+P58HXYbyPW9UcbbvTxdwKlWF49eQ=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:99::15)
 by BYAPR11MB3591.namprd11.prod.outlook.com (2603:10b6:a03:b4::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.17; Mon, 6 Jun
 2022 16:46:52 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::699b:5c23:de4f:2bfa]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::699b:5c23:de4f:2bfa%4]) with mapi id 15.20.5314.019; Mon, 6 Jun 2022
 16:46:51 +0000
From:   <Conor.Dooley@microchip.com>
To:     <robh+dt@kernel.org>, <krzk+dt@kernel.org>, <palmer@dabbelt.com>
CC:     <paul.walmsley@sifive.com>, <palmer@rivosinc.com>,
        <aou@eecs.berkeley.edu>, <Daire.McNamara@microchip.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <robh@kernel.org>
Subject: Re: [PATCH v2] riscv: dts: microchip: remove spi-max-frequency
 property
Thread-Topic: [PATCH v2] riscv: dts: microchip: remove spi-max-frequency
 property
Thread-Index: AQHYdyaR5lwuNlYYcUC17ewn34sXA61Cm72A
Date:   Mon, 6 Jun 2022 16:46:51 +0000
Message-ID: <92127698-ddba-8ee2-4c97-e9809d8f2ff9@microchip.com>
References: <20220603084534.1919804-1-conor.dooley@microchip.com>
In-Reply-To: <20220603084534.1919804-1-conor.dooley@microchip.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 55e0ab12-ee75-43e5-6a7e-08da47dc2808
x-ms-traffictypediagnostic: BYAPR11MB3591:EE_
x-microsoft-antispam-prvs: <BYAPR11MB3591BC9BF2AD82517E7245E898A29@BYAPR11MB3591.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A6VaMm8HmL/dAMJW8mv/UsSGPyZkbj7Z6sDXjMSOfxTCy3sXrJxnXjv4xh94L1lHyZ+ACr1L6xovBlAdO13TGUcoMi5wFXfNerwtD9uUwflJ52u7JF2y9VWJ7bKE0PHWbmGAB63YMyVZ7sybEGG3dTLJYoKJiIRhuB/3eUBpYOzTY1hLGxUQh/ZRT9JzIISU3RWoV45u6fDNILxsF5V/58Mog13sz5rqzfl7AIGC/y0rZ2B1LgP9eos0O/tK0ErdjaSh4gKbwz+bLZallR8x+Ub1+DbxaC8E4ualwZiH+fdR3xzKsLPK2Npzqt1H/9ekXfRqjsKsceHEGdGKZi4VHxYfvolkCye1k5r3sU/FoEkFRBREArMholeedVUkIBqXjJlcRq6JjPohB5cjPypZs9/5FYywo7O2X1bUh7wdu0OJKWThOiI36mMucoC3002HZ+6IpkbvNt+ziWyAMX+nI6oFylwnh9aGW071yD3l94XnNPgEdayMa0qg/vNhC23GimdbJ1eVStyabonpj4tryEClszR4hRBUXi+LlCYkwX80XSbAs2JvTtRzNAcaqo6qCA2MVLfpdlVwiFv0ZfxF9uxwtlUqPqXXncz22u1pL8PlJ2Cjm5xnesmBODNFVuI+lW4J7LRCwHIXINk5JTa2cvnmClOigpOILsGmT7cpb37Ey5ovBvnn9+ocnvU/I522ot+SKOJ2yK4NidQKATrEUtuNvEVwOvWzh2hERz+4Qtb8a+9M1Adfi2OmtfJvKlLqbW9tNVrZSV8/LOT6QzujZJz8iSS8vAH20+Xfld7Me34kPS0R7N0GZF29+0U8cLKQUpkw2/dTWSdS7AVgJO+S70mjrZTb95xPfapmQJ3Gb1g=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(26005)(6512007)(38070700005)(6506007)(5660300002)(508600001)(8936002)(53546011)(6486002)(966005)(2906002)(83380400001)(122000001)(2616005)(86362001)(31696002)(186003)(66476007)(64756008)(76116006)(66946007)(66556008)(91956017)(66446008)(31686004)(71200400001)(8676002)(4326008)(38100700002)(316002)(110136005)(36756003)(54906003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bE5UcTd3bDJWZENKSy9IWnFPZXBGK2lFOFFKZUY5T2U5T1Avbm5WeW93UWxh?=
 =?utf-8?B?dzgyNzlsNi94dHY1U2VYR1B6dy9FVFNLc2JYcWxOR1hLaWpISG5sWjV2Lys2?=
 =?utf-8?B?UlhuMytEQ2kyYWh2ODBaWkFiRjEzQW0rSk9kbW1VK3hvWlVKcWVUWkRXOEZi?=
 =?utf-8?B?TmpOeUUvZ01TOTJJN1FLR2xCMFhqUUg0K2N6M09PWHRFRkh2Y2t5NWtGWS9P?=
 =?utf-8?B?eWZVc05TNXNVYmE4VlNiR0V4WFV4MERrbUFBYUFubU9TY0QyT3ZvRTUvamF2?=
 =?utf-8?B?YXNGK2VMdzIxVm1ZSmN6a0hOcG4rTlZlN1VEaGpHRjRHZnRWWHlwdzBYYi9i?=
 =?utf-8?B?cDZQaUd0RkY0RWcwdm0rejN4RE5mVUZmdlJEZzJTUmNnRkQzcHRmMXVyZWUz?=
 =?utf-8?B?Zm5OVEZzQm5VZlZXZXhrRDZKV3RVek5mL1ZuZUpUOS9RYjZsQnJMYW1TM3Vv?=
 =?utf-8?B?WDRWY3JNaUN1TWQvRVF2ZitvaTJ4eW5sRWFsS2N6R0FDV01UeDFhcGRDZUdw?=
 =?utf-8?B?cjVtbjJtbmNSdUZWNFd1YVV4RTVhOS9mVHNCNmRVbTlFS3hTbDR3ZzFDS3Fi?=
 =?utf-8?B?QTlmLy96NTJ0c2Vyb2JQYlQrTXluK1N2eFhkZDdjRzhNNXJvSStLU09Fc0pM?=
 =?utf-8?B?YkVyTjloSXJDT0lnY0RtQnJZR05TL3E2MFhRb1RlVGp5eEI5ZnZjWGJKQXdZ?=
 =?utf-8?B?UzZlb3Mvdk4zNUNkdkVOdXpyOFlxVVFRMlV5Tk1sVS9oek5tOG10cFlMTHdN?=
 =?utf-8?B?TUFRbHJUNlR5NkRmdEtKNDhqbEs0TUNwdzJhNlh5UHRGdSs1T2F6YTB0Ylc0?=
 =?utf-8?B?ZXRPRkZaclR0d1A1YnpBQW5WdCs3MUJwVDRMeG1IdlhrdnZwRERlZmRXUzVr?=
 =?utf-8?B?WXZBT0h1RmU3b2VGQUljMkxhaGhCMUlUSlYySmc5Q0hXMlVWSzBjcFFBUklq?=
 =?utf-8?B?eGg2VE5rMFFCOWdvSG5LRWlVNzRjVDVVTVo1VnRydHdhMk1HUlFBeExzVVEx?=
 =?utf-8?B?S29kc0g2eEtvUFh6Wk1PUVFBVit2K09aVkgzb2NuZzQ2VkxPZVJhZzNhQXQ1?=
 =?utf-8?B?alpqNHFrZnNoeW9aTHZrR3MwUU5vcEZ5WktGUk1nUXJqUC9rRXlQYTdCd3BF?=
 =?utf-8?B?TnFxZEp0NFFxMk1EV2lYOWdtdExXbFBhcDNuTnh5aUwyRGVESmpVQTVHenFV?=
 =?utf-8?B?WVhJVzlSWHlwN1Zad2xpQWR5cUhLVk1xMllkeC9hZmhwY2FTK2lpeEhuS2F6?=
 =?utf-8?B?b1FVaVFpNGp2NXVFQVMzaUFsVFlqY3B1QnQrRE1qN0tMYjFpeWt6azBoMlcx?=
 =?utf-8?B?b2xKL25TcFRDMTFES3VwdlNaMXEwWHlXbWhFR2ZxUDIxRysxbWNEV2xZTzA2?=
 =?utf-8?B?a3NPUkF0NHlpMkJBK1dZOGFoYXBiY2RXa1RpZ1lmZDkwN0c2Tkd3QlVJQTlE?=
 =?utf-8?B?dkw1b3lXNmwyeWdSZzFvWWxNQnBsYTNzNm5uNWxZdlNXS0ZpWG1YT3VITWda?=
 =?utf-8?B?QXVyYzhnWXlTUUdqRllkMCtHSHIveURqLzJndjZQcFZzL0g2UFBPb3Y0bm5C?=
 =?utf-8?B?QUptMm1XR0RUbHRuNFk2bldmcDlMYkxoTU04dzVhSVFIVDNka0FWWWdEbGt4?=
 =?utf-8?B?ajRzdU52YnhTRW0vRzd0akhUQkF1OTIxNUZLN2F3SVJLTWtrSTl0UGhHMSs0?=
 =?utf-8?B?azZTYTZKdWxzWmdFbXJCNHRGVlFxbVd3UmJycTY3cXdSazJnQXc0SXJSQWZm?=
 =?utf-8?B?TlROaWZSa0Z2WjhoZzdvRHpXQWJZMHBXUVhkNE10TkQxVUQ5Qmt3d3lIbGRL?=
 =?utf-8?B?M0pEZnRtZnNVSE8yeW5PQ2E3WHhES2ovWllQcUZKeWFNSExyb1pVU0JHeEJp?=
 =?utf-8?B?NHhldnBqNmJHUzNvWSs5aVlwVmhRMGZxT1NXaXBIRGNSVnJyK28zSzhXTk5G?=
 =?utf-8?B?bm9uZStQd3QvZkl6SkhJd3FDOEFNMFN3R0ZhbWV0WlRmeERlSHhwMVphTnZH?=
 =?utf-8?B?SlV2UHVXSktYai9VOXhnNFpLQWJQdVAydEduaE5pdDc3WEdheCtIdTRmK0l1?=
 =?utf-8?B?V3pOcm1UdCtkQmVmVkhsSlh6ZllLVXN0dDN4em5RdUVoUFFPTE56UGxOL3Mz?=
 =?utf-8?B?TCtNZkhpRnBUZkFWc2JvY0JvR1ZLdmM0NldrUXUyOEdhQzNzUkt2R0haaXk0?=
 =?utf-8?B?SitYUDFlbXdmNE01TFp2VFVwZEJZN0VwRU55Ky9jNkdFQzl4bW10Ni9MQUpK?=
 =?utf-8?B?Z3Y0TEcycmx1ZVpYVHdLK0pUcHFLaUgxdDF4cmRqUnNsSmJaUG41VEdZOTh5?=
 =?utf-8?B?Z08rWXg3UEhWM3ZWcmNDN0xXR1dNcVRRdmJRRU04L3JrY0NkS245UzJwZ0JQ?=
 =?utf-8?Q?uzDjdnGvvyCUBOS8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5DC32CEE4C438F4CA87B685DFB1A7BE3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55e0ab12-ee75-43e5-6a7e-08da47dc2808
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2022 16:46:51.6207
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S+gaWPhidBWowf1P7U4bkPD/ozUlD7BgoiTSNKybqLoRvutWo0eikPeKeKMJ2qSwIAGfv44oVauxxF8IUvwDu0Jv6mzRmKfJblrfTrxcr/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3591
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMDMvMDYvMjAyMiAwOTo0NSwgQ29ub3IgRG9vbGV5IHdyb3RlOg0KPiBzcGktbWF4LWZyZXF1
ZW5jeSBwcm9wZXJ0eSBpcyBzdXBwb3NlZCB0byBiZSBhIHBlciBTUEkgcGVyaXBoZXJhbCBkZXZp
Y2UNCj4gcHJvcGVydHksIG5vdCBhIFNQSSBjb250cm9sbGVyIHByb3BlcnR5LCBzbyByZW1vdmUg
aXQuDQo+IA0KPiBSZXBvcnRlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4NCj4g
TGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIyMDUyNjAxNDE0MS4yODcyNTY3
LTEtcm9iaEBrZXJuZWwub3JnLw0KPiBTaWduZWQtb2ZmLWJ5OiBDb25vciBEb29sZXkgPGNvbm9y
LmRvb2xleUBtaWNyb2NoaXAuY29tPg0KDQpGZWVscyB3ZWlyZCBzYXlpbmcgdGhpcywgYnV0Og0K
QXBwbGllZCB0byBkdC1mb3ItbmV4dCBvZiBjb25vci9saW51eC5naXQNCg0KPiAtLS0NCj4gU2lu
Y2UgdjE6DQo+IC0gUmViYXNlIG9uIGNoYW5nZWQgZmlsZW5hbWUgSklDDQo+IC0tLQ0KPiAgYXJj
aC9yaXNjdi9ib290L2R0cy9taWNyb2NoaXAvbXBmcy5kdHNpIHwgMiAtLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9ib290
L2R0cy9taWNyb2NoaXAvbXBmcy5kdHNpIGIvYXJjaC9yaXNjdi9ib290L2R0cy9taWNyb2NoaXAv
bXBmcy5kdHNpDQo+IGluZGV4IDMwOTVkMDg0NTNhMS4uNjVhMjBjMGI4YWYxIDEwMDY0NA0KPiAt
LS0gYS9hcmNoL3Jpc2N2L2Jvb3QvZHRzL21pY3JvY2hpcC9tcGZzLmR0c2kNCj4gKysrIGIvYXJj
aC9yaXNjdi9ib290L2R0cy9taWNyb2NoaXAvbXBmcy5kdHNpDQo+IEBAIC0yOTksNyArMjk5LDYg
QEAgc3BpMTogc3BpQDIwMTA5MDAwIHsNCj4gIAkJCWludGVycnVwdC1wYXJlbnQgPSA8JnBsaWM+
Ow0KPiAgCQkJaW50ZXJydXB0cyA9IDw1NT47DQo+ICAJCQljbG9ja3MgPSA8JmNsa2NmZyBDTEtf
U1BJMT47DQo+IC0JCQlzcGktbWF4LWZyZXF1ZW5jeSA9IDwyNTAwMDAwMD47DQo+ICAJCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOw0KPiAgCQl9Ow0KPiAgDQo+IEBAIC0zMTEsNyArMzEwLDYgQEAgcXNw
aTogc3BpQDIxMDAwMDAwIHsNCj4gIAkJCWludGVycnVwdC1wYXJlbnQgPSA8JnBsaWM+Ow0KPiAg
CQkJaW50ZXJydXB0cyA9IDw4NT47DQo+ICAJCQljbG9ja3MgPSA8JmNsa2NmZyBDTEtfUVNQST47
DQo+IC0JCQlzcGktbWF4LWZyZXF1ZW5jeSA9IDwyNTAwMDAwMD47DQo+ICAJCQlzdGF0dXMgPSAi
ZGlzYWJsZWQiOw0KPiAgCQl9Ow0KPiAgDQoNCg==

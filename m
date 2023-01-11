Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65CC7665BB7
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 13:48:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231972AbjAKMr4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 07:47:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233028AbjAKMrm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 07:47:42 -0500
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5450E293
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 04:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1673441262; x=1704977262;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=sAWsv6vIBR+5KzFa7nFmKTXsQ19slic4+Z2oVm/M8fg=;
  b=q4bffUiLBGTI1X3hexRYZ8wmudDAiPrQdlSgd9a5QOlrOep3X/az1/4y
   IU57UDkg8UzFeNHN6nh5oAa1o9+7VRNCjggtsTuA6bB8shLe0zesIUwcj
   AkVgYiQfQVd0JIXwOAjEsUCJjlwQRXvvVb6w7LIqaGI0+TfnHzXeUu2xC
   TmDq3xFsnmm7JVwwQ6EBiPZQ5vX8vbaJuMcVt2JR71HlB0jQVN0iRSKTD
   KpbGRaFZfs+Qw1RxoKW00IC8Zetnb/1nko9z0/gALVmttyehz9lRAUsme
   8I7ozT8WhuizDHC1cjPQV+EI2VmuABrSsEVggFW+V1/RM46w3S4AoDqsG
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; 
   d="scan'208";a="196327404"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 11 Jan 2023 05:47:41 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 05:47:40 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16 via Frontend
 Transport; Wed, 11 Jan 2023 05:47:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DxJVooLJDKPv7sTy9SHopVeC0E2mFfOr8VJhopQ8X5gPf5+53QfZ+8XtaRbZr4KW5VJqdh/9s7QUg+Kq3dhQYsjDCZWdvfBDEtryTimUjkw8i+s6WFfgnWaLignoVguRsby6I+CXqSQSI9OfyZ/UkLcLgpsP4XFnM/ZqZaSXury4j1eLv6Uyr6LXg0SMkK5B8mCmtVg6PbXGZy2+h7+ZO21TRDZ4lMOPadIyGPTvdjVp/MsU8N9SyGVTXGX8W3HT2OwgShlmp9seqaqtFj1QPNZoFtLIyztk3eVVxXQ08orcnonRx3nmR+KqS7BsK6U5WtkYODEP7QRGhIjV72ofFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sAWsv6vIBR+5KzFa7nFmKTXsQ19slic4+Z2oVm/M8fg=;
 b=hRy8mbIC6exhtTYnFO8aZrGIrr8+B2k+6iRfTjOef2XTLpY0SKfKj8dqdp7/zxq/49EowvQJb7ds1pu1qt8coIN/YXs5h+aZDXEzx83+j7JGdmFmR7ZSYKuZi/6AN6efit+hdb4pHQtAxEvN6Xs/T4iqXAICkSqRnwXoQnNZ7vq8n9v8YYrvYzZav3iAEhysShq9CNBj8xku8zsaTlM9bi5AdpT2lRFUIE7ziiGVa14Hk9yFLDlblxWwzgjtclPPzOZCjhauVA50hZRD3f973cmEUEP6ySC+1147HiIF8yFxymxVlCSLcpyDJVinV0HAThDcuiOLALKx2eW6eRlkiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sAWsv6vIBR+5KzFa7nFmKTXsQ19slic4+Z2oVm/M8fg=;
 b=TNvCoLSTiRl2Sb7Xr7jXHLzInAL6tsJ6cubOOroI+7sSJOz5pFzDqZW4BXQyhi08DQicKGJqwWbU9iwht49byKyOiSEkE6sKrkmssbGkEmsxMUXkq+k+c3clMdvzI6DVVedVQcxQBkuSKXRicCWk9Funf1bJZfildbK6oAjeOi8=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:99::15)
 by DM4PR11MB5376.namprd11.prod.outlook.com (2603:10b6:5:397::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 11 Jan
 2023 12:47:39 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::3758:fd2d:5bd1:9758]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::3758:fd2d:5bd1:9758%7]) with mapi id 15.20.5986.018; Wed, 11 Jan 2023
 12:47:39 +0000
From:   <Conor.Dooley@microchip.com>
To:     <Conor.Dooley@microchip.com>
CC:     <Daire.McNamara@microchip.com>, <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v2 3/3] riscv: dts: microchip: add the Aldec TySoM's
 devicetree
Thread-Topic: [PATCH v2 3/3] riscv: dts: microchip: add the Aldec TySoM's
 devicetree
Thread-Index: AQHZJbolD5ijyqHylUaI95XFLibJE66ZKjkA
Date:   Wed, 11 Jan 2023 12:47:39 +0000
Message-ID: <20491221-8440-e12f-cf29-f90e2b980076@microchip.com>
References: <20230111124106.2417152-1-conor.dooley@microchip.com>
 <20230111124106.2417152-4-conor.dooley@microchip.com>
In-Reply-To: <20230111124106.2417152-4-conor.dooley@microchip.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5154:EE_|DM4PR11MB5376:EE_
x-ms-office365-filtering-correlation-id: b1efbde8-5ce1-468e-399e-08daf3d205b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1D3yFSCOJLt/GsmuD3LD38I/0vesk4VJ3+t6ghJcPWud+NHSnOpeyr41yTWLas6M8E/mlMw+IMC/QM9/hkfi5aBrvd7Lc25TClWBfQQD0QrbaSbU2bapqzeeko4emEl3fUvd8thj4WnbXGU4zF1/y+hdwierVDxuxSz3WRkhPkTjDPTLJWeVeLacLvpOUSaUFGCmW6R4UInYS9R//8lMFBoWH8CcF7CluQvD4ivCv+ZUJeYe4wO7U9Lhll3yzjcKuqjMbFFxxTuPJq3WdLeT9JBVR4H7oz2LNUxelLB373r6bBlabpQ6dSJNalQTorStN5ojp0/CAMRq9dkRQ2n6TffV4B6wCTOYXHDFhpEtyJj+MRt2MoVMkmJAyKiw+0iTd4cuVMq2iLk0KQIkJFsJXr4atkTwLiqF8ipE/2dyxlSvR+5z8PXuwZqXOHf3wCT3sgQOVsxLQ7KGMOyJstlIAkHCnOKr/6c1dSbWMQiBx8zUzse2WWdRrsEv7Zc/iN/ZVWbPM6ix4sPCmPvFTuhTshHFxnEVILNqPYpyiTaaFf/N0b8FUdBsaJzCh/lTJFOoUAvyiMxuFof0R1twfT6401uSLr3P6PIR7/4TEXa0kJASzcVIJq6LUmLv2xgUZZNrQbS2pr+IpUsKa16PYfYvhz+nX5tiW3pjdiJUoNY32JURcA9P/mr+gxLWcQRNeOtxOKL/M9bsZLbAmjjusLJ/2F1FE3KiatyvlezinNOJRcXjOY9kXC6KPep6V+f1DA15HGOLjzReMFdZDMra3LzC0dQRYSyiNs4om2kNHmqJFtw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(6029001)(396003)(136003)(39850400004)(376002)(366004)(346002)(451199015)(76116006)(8676002)(64756008)(66946007)(66476007)(66556008)(316002)(4326008)(91956017)(37006003)(38070700005)(54906003)(2906002)(5660300002)(66446008)(8936002)(71200400001)(41300700001)(36756003)(966005)(83380400001)(53546011)(31696002)(6486002)(478600001)(6506007)(122000001)(38100700002)(2616005)(26005)(6512007)(86362001)(6862004)(186003)(31686004)(6200100001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QjlSNUFRMzR6T25TK3VFUGRVaTRnaUFnN1NiaEo4eVJVMTRmS3hCUnRKWm44?=
 =?utf-8?B?Q3pWQkZlVDNmaWM2YUFYTHo0VWppb2xxbWJLbnlxZXhxVTNrME54aWNkbVZn?=
 =?utf-8?B?Y2xRdWU5K2tPMGxNdWRURWlpaG9aVWRoVTRiNWJvdkJVOUYwWHdGZFNGTkF6?=
 =?utf-8?B?RkVNMXRHNCtWN1ZLWTJsZzk3c0p5dVB2bzBPem1zWmp0WGIzNDE2Z3l2cmli?=
 =?utf-8?B?bVFOQ24zSkNzVmJwTVlJdXhlK3BOdi94VTZUTG5sWXV6YlBoQURkd3VkcVc3?=
 =?utf-8?B?WUV4OHYvK3Y5clJSc1VYQ2doQWJ3OHdQVmh3NERkUDNBZWEyZ042dFJpelNP?=
 =?utf-8?B?UU1WR3Z0RG12aHdiRHhjSTA5ZHVKWU5aa0k0S3ROOUVtV3p0QUF3MUJGRG5E?=
 =?utf-8?B?SUc4RkNnc1BCajRaTW9DSkFrMEZpZUFHdW14QS9yUGxIR2prdU45QWp0alJS?=
 =?utf-8?B?VDZUcWIvd1FOY0ZmSHRFZHNrblMva2g5QXJ6RGh2L1VUeFFJSjdsaWZoenRI?=
 =?utf-8?B?WjFuUGE4am5UQ2l4OU1TN0dGUHlKYThjV0lyOVd3ZFpmZjE2d0ZYNFNDYWFk?=
 =?utf-8?B?d0JCM0JRM3FBS0d0TXRtYmRZTjNvV2FZNk9zQjZKYktHN2lneDNCRURQbDVT?=
 =?utf-8?B?UWR2ak1jUXd0VjNFZ2d2YldxVThvSnJQVHdadkZSZkxsdzNhWDU2TCthQStE?=
 =?utf-8?B?QWFJaWtydGlRL0Y3ODB5U3MvZTBYUHplVEFYT094dGpLUk9LbXV4cUd6cThY?=
 =?utf-8?B?WlR0eDRJSyt3ZmV4cU1pY01DZTRiY2ZoZlozTDBFOXdWM0FRQzNROWUvOVE1?=
 =?utf-8?B?SndYN3RqRGg5YUh0dEExc3AxWTB2NFlJWVNsMHl3bHQrZWNNT05sbEVybjlM?=
 =?utf-8?B?eHlTYURNRUIxUUZJeUc5d2lvV05oRVo1WGx5dDl2TkJyYmFiOThvaXMwdHlz?=
 =?utf-8?B?Wkg2bEhoalRvWjJvMzU3MUtxbkVnTGpLQThEbHFVRWdMMEtHdStvdU5HUUwx?=
 =?utf-8?B?YXgyTVdNR2ZicFIrQWc3UERoVGhZc0E5TGJXUi8rNUNlbXl1d25MdkkrWkVM?=
 =?utf-8?B?SXIxdE5VWkVsN3ZuYTBucnZEUEJLcnNCdzdVU1Q0VGRLblpua095Z0pmbzVZ?=
 =?utf-8?B?NDJ2Y0JDWlR4QW9BeHl6RGZ5ZExBUHFRdGxFaG1wdjZESTEvbG91aWtlQ2Rk?=
 =?utf-8?B?VkIrVjc4bGNIV2pqaXNiTEZEZEQrNytFYW82U01NMndPdmRaYXpaUTgwNTlF?=
 =?utf-8?B?ZlNBczNlY2pMT0Rlb3MxYnFtbDlSZ2NRRndBamxQMURydjNTUUM0ZVRiWmNP?=
 =?utf-8?B?TGV6T01mSnIycjByVkpOOE1nRXo4OFV6MHZtSjRERjJsaTVQcHh4SEJjTG1v?=
 =?utf-8?B?OENhMGRyM3piazU5WEhaaDFJeWR0OW5NeUpoc3RXMjNHL2JUaXFhRGJTN0hE?=
 =?utf-8?B?UEt4QUV1dFlxK1M0clJmZWtsT0lMVTArczZxcW16S1hLcnhGRXhJYzkvQUsv?=
 =?utf-8?B?Z1VMYmU5dVFGcWRjU3BXWU5xWkVzQ2t3ck5EZVQzUDk5K055alFBQXVYblRr?=
 =?utf-8?B?SnZseGxoRnJvTmdsYXdqTTNPR3MxRzZyeXNweU8ySHJINU13Nk45MTNqbkta?=
 =?utf-8?B?SitFMXcrMGwxNUZKb2NuN09tLy8yc3ZkWjJ2SUk3YmcyUElWdzVyUGozeThI?=
 =?utf-8?B?TXlnVmZ6clY2cjEvOWhYcXJwb095emx6UG1oYWJRWHh6Z05IQjVtUmhQRlRr?=
 =?utf-8?B?dXRXQ243ZlIrVGJRNmV4bjBLM2xZV3YvbnNQZi8zSE5meFJHZHBTQXV6WkhM?=
 =?utf-8?B?OThlMkZTSUdLajJmZERqZWkvL1IySUszcHd2K3QvbUNoTVFmZmhLcUVpSmgz?=
 =?utf-8?B?ZVdQbzhKODBNQjJ3ekFndnlUVGdpZWlSQjY3b1UrVEJQZ2hxMFdSdjVNS1dK?=
 =?utf-8?B?TDllTVgvbzlzdk5rdEJkY0s0T3A3N2wydGNOWWM4Rk9aQ1J2SzZROS96dmpi?=
 =?utf-8?B?d0g1U0Z6OTBGZzYyOENydUY2T1lzSzdXeVhReGU0ODE1b1JTZjVaUCtWZzZH?=
 =?utf-8?B?V25WbVVsaXVHTmd5Q0ZvSnNYZ3lHOFlsMEhoVXM0czBrekpZVzMrcmN4WVVn?=
 =?utf-8?Q?21s8tHeaXqGk1Dem7K1ejS/Da?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7B57A3E4FC1AAC4391C3088C50EDD438@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1efbde8-5ce1-468e-399e-08daf3d205b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2023 12:47:39.0428
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4ph10zals9Okc0wXqlIaRdEj/AQZ+aW0AzVATE1Exxcw3ZlU82oQ80vLfZOknfqQnSZ795zc3/m7MJQDjjiZjTxDW6nFikfIEtRC975Nz+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5376
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMTEvMDEvMjAyMyAxMjo0MSwgQ29ub3IgRG9vbGV5IHdyb3RlOg0KPiBUaGUgVHlTT00tTS1N
UEZTMjUwIGlzIGEgY29tcGFjdCBTb0MgcHJvdG90eXBpbmcgYm9hcmQgZmVhdHVyaW5nDQo+IGEg
TWljcm9jaGlwIFBvbGFyRmlyZSBTb0MgTVBGUzI1MFQtRkNHMTE1Mi4gRmVhdHVyZXMgaW5jbHVk
ZToNCj4gLSAxNiBHaUIgRlBHQSBERFI0DQo+IC0gMTYgR2lCIE1TUyBERFI0IHdpdGggRUNDIChB
bHRob3VnaCBvbmx5IDIgR2lCIGlzIG1hcHBlZCBpbiB0aGUNCj4gICAgRlBHQSBkZXNpZ24pDQo+
IC0gZU1NQw0KPiAtIFNQSSBmbGFzaCBtZW1vcnkNCj4gLSAyeCBFdGhlcm5ldCAxMC8xMDAvMTAw
MA0KPiAtIFVTQiAyLjANCj4gLSBQQ0llIHg0IEdlbjINCj4gLSBIRE1JIE9VVA0KPiAtIDJ4IEZN
QyBjb25uZWN0b3IgKEhQQyBhbmQgTFBDKQ0KPiANCj4gU3BlY2lmaWNhbGx5IGZsYWcgdGhpcyBi
b2FyZCBhcyByZXYyLCBpbiBjYXNlIGxhdGVyIGJvYXJkcyBoYXZlIGFuDQo+IEZQR0EgZGVzaWdu
IHJldmlzaW9uIHdpdGggbW9yZSBvZiBERFIgYXZhaWxhYmxlIGZvciB1c2UgaW4gTGludXggZXRj
Lg0KPiANCj4gTGluazogaHR0cHM6Ly93d3cuYWxkZWMuY29tL2VuL3Byb2R1Y3RzL2VtdWxhdGlv
bi90eXNvbV9ib2FyZHMvcG9sYXJmaXJlX21pY3JvY2hpcC90eXNvbV9tX21wZnMyNTANCj4gU2ln
bmVkLW9mZi1ieTogQ29ub3IgRG9vbGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4NCj4g
LS0tDQo+IENoYW5nZXMgaW4gdjI6DQo+IC0gcmVtb3ZlZCBzb21lIGV4dHJhIGNlbGxzIHByb3Bl
cnRpZXMNCj4gLSBjaGFuZ2VkIGZpbGVuYW1lIGNvbXBhdGlibGUgdG8gcmV2Mg0KPiAtIGRyb3Bw
ZWQgcGNpZSBmcm9tIGZhYnJpYy5kdHNpLCBkb2VzIG5vdCBhcHBlYXIgdG8gYmUgbWFwcGVkIHRv
IHRoZSBNU1MNCg0KSGVoLCBubyBJIGRpZG4ndC4gTWVhbnQgdG8gdGhvdWdoIQ0KUmVtb3Zpbmcg
aXQgd2lsbCBoYXZlIG5vIGZ1bmN0aW9uYWwgY2hhbmdlIHRob3VnaCwgYXMgaXQgaXMgZGlzYWJs
ZWQuDQpJIHdvbid0IHJlc2VuZCB0byBkcm9wIGl0LCB1bmxlc3Mgc29tZXRoaW5nIGVsc2UgbmVl
ZHMgdG8gYmUgY2hhbmdlZC4NCg0KPiAtLS0NCj4gICBhcmNoL3Jpc2N2L2Jvb3QvZHRzL21pY3Jv
Y2hpcC9NYWtlZmlsZSAgICAgICAgfCAgIDEgKw0KPiAgIC4uLi9kdHMvbWljcm9jaGlwL21wZnMt
dHlzb20tbS1mYWJyaWMuZHRzaSAgICB8ICA0NyArKysrKw0KPiAgIC4uLi9yaXNjdi9ib290L2R0
cy9taWNyb2NoaXAvbXBmcy10eXNvbS1tLmR0cyB8IDE2NSArKysrKysrKysrKysrKysrKysNCj4g
ICAzIGZpbGVzIGNoYW5nZWQsIDIxMyBpbnNlcnRpb25zKCspDQo+ICAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGFyY2gvcmlzY3YvYm9vdC9kdHMvbWljcm9jaGlwL21wZnMtdHlzb20tbS1mYWJyaWMuZHRz
aQ0KPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL3Jpc2N2L2Jvb3QvZHRzL21pY3JvY2hpcC9t
cGZzLXR5c29tLW0uZHRzDQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9ib290L2R0cy9t
aWNyb2NoaXAvTWFrZWZpbGUgYi9hcmNoL3Jpc2N2L2Jvb3QvZHRzL21pY3JvY2hpcC9NYWtlZmls
ZQ0KPiBpbmRleCA3NDI3YTIwOTM0ZjMuLmM1NDkyMmEzMjVmZCAxMDA2NDQNCj4gLS0tIGEvYXJj
aC9yaXNjdi9ib290L2R0cy9taWNyb2NoaXAvTWFrZWZpbGUNCj4gKysrIGIvYXJjaC9yaXNjdi9i
b290L2R0cy9taWNyb2NoaXAvTWFrZWZpbGUNCj4gQEAgLTMsNCArMyw1IEBAIGR0Yi0kKENPTkZJ
R19TT0NfTUlDUk9DSElQX1BPTEFSRklSRSkgKz0gbXBmcy1pY2ljbGUta2l0LmR0Yg0KPiAgIGR0
Yi0kKENPTkZJR19TT0NfTUlDUk9DSElQX1BPTEFSRklSRSkgKz0gbXBmcy1tMTAwcGZzZXZwLmR0
Yg0KPiAgIGR0Yi0kKENPTkZJR19TT0NfTUlDUk9DSElQX1BPTEFSRklSRSkgKz0gbXBmcy1wb2xh
cmJlcnJ5LmR0Yg0KPiAgIGR0Yi0kKENPTkZJR19TT0NfTUlDUk9DSElQX1BPTEFSRklSRSkgKz0g
bXBmcy1zZXYta2l0LmR0Yg0KPiArZHRiLSQoQ09ORklHX1NPQ19NSUNST0NISVBfUE9MQVJGSVJF
KSArPSBtcGZzLXR5c29tLW0uZHRiDQo+ICAgb2JqLSQoQ09ORklHX0JVSUxUSU5fRFRCKSArPSAk
KGFkZHN1ZmZpeCAubywgJChkdGIteSkpDQo+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2Jvb3Qv
ZHRzL21pY3JvY2hpcC9tcGZzLXR5c29tLW0tZmFicmljLmR0c2kgYi9hcmNoL3Jpc2N2L2Jvb3Qv
ZHRzL21pY3JvY2hpcC9tcGZzLXR5c29tLW0tZmFicmljLmR0c2kNCj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwLi41MWQwYzUxNzZiOWUNCj4gLS0tIC9kZXYvbnVs
bA0KPiArKysgYi9hcmNoL3Jpc2N2L2Jvb3QvZHRzL21pY3JvY2hpcC9tcGZzLXR5c29tLW0tZmFi
cmljLmR0c2kNCj4gQEAgLTAsMCArMSw0NyBAQA0KPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IChHUEwtMi4wIE9SIE1JVCkNCj4gKy8qIENvcHlyaWdodCAoYykgMjAyMiBNaWNyb2NoaXAg
VGVjaG5vbG9neSBJbmMgKi8NCj4gKw0KPiArLy8gI2luY2x1ZGUgImR0LWJpbmRpbmdzL21haWxi
b3gvbWl2LWloYy5oIg0KPiArDQo+ICsvIHsNCj4gKwlmYWJyaWNfY2xrMzogZmFicmljLWNsazMg
ew0KPiArCQljb21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsNCj4gKwkJI2Nsb2NrLWNlbGxzID0g
PDA+Ow0KPiArCQljbG9jay1mcmVxdWVuY3kgPSA8NjI1MDAwMDA+Ow0KPiArCX07DQo+ICsNCj4g
KwlmYWJyaWNfY2xrMTogZmFicmljLWNsazEgew0KPiArCQljb21wYXRpYmxlID0gImZpeGVkLWNs
b2NrIjsNCj4gKwkJI2Nsb2NrLWNlbGxzID0gPDA+Ow0KPiArCQljbG9jay1mcmVxdWVuY3kgPSA8
MTI1MDAwMDAwPjsNCj4gKwl9Ow0KPiArDQo+ICsJcGNpZTogcGNpZUAyMDAwMDAwMDAwIHsNCj4g
KwkJY29tcGF0aWJsZSA9ICJtaWNyb2NoaXAscGNpZS1ob3N0LTEuMCI7DQo+ICsJCSNhZGRyZXNz
LWNlbGxzID0gPDB4Mz47DQo+ICsJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8MHgxPjsNCj4gKwkJI3Np
emUtY2VsbHMgPSA8MHgyPjsNCj4gKwkJZGV2aWNlX3R5cGUgPSAicGNpIjsNCj4gKwkJcmVnID0g
PDB4MjAgMHgwIDB4MCAweDgwMDAwMDA+LCA8MHgwIDB4NDMwMDAwMDAgMHgwIDB4MTAwMDA+Ow0K
PiArCQlyZWctbmFtZXMgPSAiY2ZnIiwgImFwYiI7DQo+ICsJCWJ1cy1yYW5nZSA9IDwweDAgMHg3
Zj47DQo+ICsJCWludGVycnVwdC1wYXJlbnQgPSA8JnBsaWM+Ow0KPiArCQlpbnRlcnJ1cHRzID0g
PDExOT47DQo+ICsJCWludGVycnVwdC1tYXAgPSA8MCAwIDAgMSAmcGNpZV9pbnRjIDA+LA0KPiAr
CQkJCTwwIDAgMCAyICZwY2llX2ludGMgMT4sDQo+ICsJCQkJPDAgMCAwIDMgJnBjaWVfaW50YyAy
PiwNCj4gKwkJCQk8MCAwIDAgNCAmcGNpZV9pbnRjIDM+Ow0KPiArCQlpbnRlcnJ1cHQtbWFwLW1h
c2sgPSA8MCAwIDAgNz47DQo+ICsJCWNsb2NrcyA9IDwmZmFicmljX2NsazE+LCA8JmZhYnJpY19j
bGsxPiwgPCZmYWJyaWNfY2xrMz47DQo+ICsJCWNsb2NrLW5hbWVzID0gImZpYzAiLCAiZmljMSIs
ICJmaWMzIjsNCj4gKwkJcmFuZ2VzID0gPDB4MzAwMDAwMCAweDAgMHg4MDAwMDAwIDB4MjAgMHg4
MDAwMDAwIDB4MCAweDgwMDAwMDAwPjsNCj4gKwkJbXNpLXBhcmVudCA9IDwmcGNpZT47DQo+ICsJ
CW1zaS1jb250cm9sbGVyOw0KPiArCQlzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPiArCQlwY2llX2lu
dGM6IGludGVycnVwdC1jb250cm9sbGVyIHsNCj4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDA+Ow0K
PiArCQkJI2ludGVycnVwdC1jZWxscyA9IDwxPjsNCj4gKwkJCWludGVycnVwdC1jb250cm9sbGVy
Ow0KPiArCQl9Ow0KPiArCX07DQo+ICt9Ow0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9ib290
L2R0cy9taWNyb2NoaXAvbXBmcy10eXNvbS1tLmR0cyBiL2FyY2gvcmlzY3YvYm9vdC9kdHMvbWlj
cm9jaGlwL21wZnMtdHlzb20tbS5kdHMNCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXgg
MDAwMDAwMDAwMDAwLi5lMDc5N2M3ZTFiMzUNCj4gLS0tIC9kZXYvbnVsbA0KPiArKysgYi9hcmNo
L3Jpc2N2L2Jvb3QvZHRzL21pY3JvY2hpcC9tcGZzLXR5c29tLW0uZHRzDQo+IEBAIC0wLDAgKzEs
MTY1IEBADQo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMA0KPiArLyoNCj4g
KyAqIE9yaWdpbmFsIGFsbC1pbi1vbmUgZGV2aWNldHJlZToNCj4gKyAqIENvcHlyaWdodCAoQykg
MjAyMC0yMDIyIC0gQWxkZWMNCj4gKyAqIFJld3JpdHRlbiB0byB1c2UgaW5jbHVkZXM6DQo+ICsg
KiBDb3B5cmlnaHQgKEMpIDIwMjIgLSBDb25vciBEb29sZXkgPGNvbm9yLmRvb2xleUBtaWNyb2No
aXAuY29tPg0KPiArICovDQo+ICsNCj4gKy9kdHMtdjEvOw0KPiArDQo+ICsjaW5jbHVkZSAibXBm
cy5kdHNpIg0KPiArI2luY2x1ZGUgIm1wZnMtdHlzb20tbS1mYWJyaWMuZHRzaSINCj4gKw0KPiAr
LyogQ2xvY2sgZnJlcXVlbmN5IChpbiBIeikgb2YgdGhlIHJ0Y2NsayAqLw0KPiArI2RlZmluZSBN
VElNRVJfRlJFUQkJMTAwMDAwMA0KPiArDQo+ICsvIHsNCj4gKwltb2RlbCA9ICJBbGRlYyBUeVNP
TS1NLU1QRlMyNTBULVJFVjIiOw0KPiArCWNvbXBhdGlibGUgPSAiYWxkZWMsdHlzb20tbS1tcGZz
MjUwdC1yZXYyIiwgIm1pY3JvY2hpcCxtcGZzIjsNCj4gKw0KPiArCWFsaWFzZXMgew0KPiArCQll
dGhlcm5ldDAgPSAmbWFjMDsNCj4gKwkJZXRoZXJuZXQxID0gJm1hYzE7DQo+ICsJCXNlcmlhbDAg
PSAmbW11YXJ0MDsNCj4gKwkJc2VyaWFsMSA9ICZtbXVhcnQxOw0KPiArCQlzZXJpYWwyID0gJm1t
dWFydDI7DQo+ICsJCXNlcmlhbDMgPSAmbW11YXJ0MzsNCj4gKwkJc2VyaWFsNCA9ICZtbXVhcnQ0
Ow0KPiArCQlncGlvMCA9ICZncGlvMDsNCj4gKwkJZ3BpbzEgPSAmZ3BpbzI7DQo+ICsJfTsNCj4g
Kw0KPiArCWNob3NlbiB7DQo+ICsJCXN0ZG91dC1wYXRoID0gInNlcmlhbDE6MTE1MjAwbjgiOw0K
PiArCX07DQo+ICsNCj4gKwljcHVzIHsNCj4gKwkJdGltZWJhc2UtZnJlcXVlbmN5ID0gPE1USU1F
Ul9GUkVRPjsNCj4gKwl9Ow0KPiArDQo+ICsJZGRyY19jYWNoZV9sbzogbWVtb3J5QDgwMDAwMDAw
IHsNCj4gKwkJZGV2aWNlX3R5cGUgPSAibWVtb3J5IjsNCj4gKwkJcmVnID0gPDB4MCAweDgwMDAw
MDAwIDB4MCAweDMwMDAwMDAwPjsNCj4gKwkJc3RhdHVzID0gIm9rYXkiOw0KPiArCX07DQo+ICsN
Cj4gKwlkZHJjX2NhY2hlX2hpOiBtZW1vcnlAMTAwMDAwMDAwMCB7DQo+ICsJCWRldmljZV90eXBl
ID0gIm1lbW9yeSI7DQo+ICsJCXJlZyA9IDwweDEwIDB4MDAwMDAwMDAgMHgwIDB4NDAwMDAwMDA+
Ow0KPiArCQlzdGF0dXMgPSAib2theSI7DQo+ICsJfTsNCj4gKw0KPiArCWxlZHMgew0KPiArCQlj
b21wYXRpYmxlID0gImdwaW8tbGVkcyI7DQo+ICsJCXN0YXR1cyA9ICJva2F5IjsNCj4gKw0KPiAr
CQlsZWQwIHsNCj4gKwkJCWdwaW9zID0gPCZncGlvMSAyMyAxPjsNCj4gKwkJCWRlZmF1bHQtc3Rh
dGUgPSAib24iOw0KPiArCQkJbGludXgsZGVmYXVsdC10cmlnZ2VyID0gImhlYXJ0YmVhdCI7DQo+
ICsJCX07DQo+ICsJfTsNCj4gK307DQo+ICsNCj4gKyZpMmMwIHsNCj4gKwlzdGF0dXMgPSAib2th
eSI7DQo+ICt9Ow0KPiArDQo+ICsmaTJjMSB7DQo+ICsJc3RhdHVzID0gIm9rYXkiOw0KPiArCWh3
bW9uOiBod21vbkA0NSB7DQo+ICsJCXN0YXR1cyA9ICJva2F5IjsNCj4gKwkJY29tcGF0aWJsZSA9
ICJ0aSxpbmEyMTkiOw0KPiArCQlyZWcgPSA8MHg0NT47DQo+ICsJCXNodW50LXJlc2lzdG9yID0g
PDIwMDA+Ow0KPiArCX07DQo+ICt9Ow0KPiArDQo+ICsmZ3BpbzEgew0KPiArCWludGVycnVwdHMg
PSA8Mjc+LCA8Mjg+LCA8Mjk+LCA8MzA+LA0KPiArCQkgICAgIDwzMT4sIDwzMj4sIDwzMz4sIDw0
Nz4sDQo+ICsJCSAgICAgPDM1PiwgPDM2PiwgPDM3PiwgPDM4PiwNCj4gKwkJICAgICA8Mzk+LCA8
NDA+LCA8NDE+LCA8NDI+LA0KPiArCQkgICAgIDw0Mz4sIDw0ND4sIDw0NT4sIDw0Nj4sDQo+ICsJ
CSAgICAgPDQ3PiwgPDQ4PiwgPDQ5PiwgPDUwPjsNCj4gKwlzdGF0dXMgPSAib2theSI7DQo+ICt9
Ow0KPiArDQo+ICsmbWFjMCB7DQo+ICsJc3RhdHVzID0gIm9rYXkiOw0KPiArCXBoeS1tb2RlID0g
ImdtaWkiOw0KPiArCXBoeS1oYW5kbGUgPSA8JnBoeTA+Ow0KPiArDQo+ICt9Ow0KPiArDQo+ICsm
bWFjMSB7DQo+ICsJc3RhdHVzID0gIm9rYXkiOw0KPiArCXBoeS1tb2RlID0gImdtaWkiOw0KPiAr
CXBoeS1oYW5kbGUgPSA8JnBoeTE+Ow0KPiArCXBoeTE6IGV0aGVybmV0LXBoeUAxIHsNCj4gKwkJ
cmVnID0gPDE+Ow0KPiArCX07DQo+ICsJcGh5MDogZXRoZXJuZXQtcGh5QDAgew0KPiArCQlyZWcg
PSA8MD47DQo+ICsJfTsNCj4gK307DQo+ICsNCj4gKyZtYm94IHsNCj4gKwlzdGF0dXMgPSAib2th
eSI7DQo+ICt9Ow0KPiArDQo+ICsmbW1jIHsNCj4gKwltYXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAw
MD47DQo+ICsJY2FwLW1tYy1oaWdoc3BlZWQ7DQo+ICsJY2FwLXNkLWhpZ2hzcGVlZDsNCj4gKwlu
by0xLTgtdjsNCj4gKwlkaXNhYmxlLXdwOw0KPiArCXN0YXR1cyA9ICJva2F5IjsNCj4gK307DQo+
ICsNCj4gKyZtbXVhcnQxIHsNCj4gKwlzdGF0dXMgPSAib2theSI7DQo+ICt9Ow0KPiArDQo+ICsm
bW11YXJ0MiB7DQo+ICsJc3RhdHVzID0gIm9rYXkiOw0KPiArfTsNCj4gKw0KPiArJm1tdWFydDMg
ew0KPiArCXN0YXR1cyA9ICJva2F5IjsNCj4gK307DQo+ICsNCj4gKyZtbXVhcnQ0IHsNCj4gKwlz
dGF0dXMgPSAib2theSI7DQo+ICt9Ow0KPiArDQo+ICsmcmVmY2xrIHsNCj4gKwljbG9jay1mcmVx
dWVuY3kgPSA8MTI1MDAwMDAwPjsNCj4gK307DQo+ICsNCj4gKyZydGMgew0KPiArCXN0YXR1cyA9
ICJva2F5IjsNCj4gK307DQo+ICsNCj4gKyZzcGkwIHsNCj4gKwlzdGF0dXMgPSAib2theSI7DQo+
ICt9Ow0KPiArDQo+ICsmc3BpMSB7DQo+ICsJc3RhdHVzID0gIm9rYXkiOw0KPiArCWZsYXNoQDAg
ew0KPiArCQljb21wYXRpYmxlID0gIm1pY3JvbixuMjVxMTI4YTExIiwgImplZGVjLHNwaS1ub3Ii
Ow0KPiArCQlyZWcgPSA8MHgwPjsNCj4gKwkJc3BpLW1heC1mcmVxdWVuY3kgPSA8MTAwMDAwMDA+
Ow0KPiArCX07DQo+ICt9Ow0KPiArDQo+ICsmc3lzY29udHJvbGxlciB7DQo+ICsJc3RhdHVzID0g
Im9rYXkiOw0KPiArfTsNCj4gKw0KPiArJnVzYiB7DQo+ICsJc3RhdHVzID0gIm9rYXkiOw0KPiAr
CWRyX21vZGUgPSAiaG9zdCI7DQo+ICt9Ow0KDQo=

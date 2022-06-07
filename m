Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D511653F66C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 08:43:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236035AbiFGGnb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 02:43:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232554AbiFGGnb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 02:43:31 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A9C25158D;
        Mon,  6 Jun 2022 23:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1654584211; x=1686120211;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=NYG0AfiiV843sgxS3eJRbYj9C1YGXSWL/CZQXcA4yKo=;
  b=iRmoLLED0uA00l3BygawaIwipbT7S/Fa4naBUYd7q0Flng6KA+MC3Y/r
   B4GQkQlq2uLXM1O7h3xdiR19PMNhurGGEmc3Q25HvxUQ24AhuQkaOhnAt
   ysR4tZGjqlLfQ8oyV3E9GBRaNKXM8VvVKbMgk0bzCcfFUvSGHxJ2PRsCg
   N6LfCBl7UgX0ZV0tsBNkmW7qAaMjwu59Ec+JmH1MVyj2eo/owa0E3xhvC
   VFR0Q98Oy04UK2F8QSKxx0DVxAv96fkWVu7JJ2FYX7vsk5qa4k/VrGHnM
   VzZa8PvPVgO7m6I1fEUso54SCCCKO7kA2ZbcqNOrX3qldvx+LWriP51AB
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; 
   d="scan'208";a="167033093"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 06 Jun 2022 23:43:31 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Mon, 6 Jun 2022 23:43:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17 via Frontend
 Transport; Mon, 6 Jun 2022 23:43:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oOD7bau43vAvGwMeBxyCsBdqFJ/GWII6rjeWW1XXA5kzCDjbEEsaa8mfysUg4eyKLRT3czPHIUg1F14JzD88lFW98JUEazZ+6RKJ741JDAX0RlOoK87YSSxtfqLZpEgEVCY20Wwzdh3S7lZ9B9LzbxtyCsauTHAzQRXZazdxZTN5V6a64XfEtS/d0HYlphBiTQ9E4V8bVVd/meNR326VyMCN0v5PVg69w1d4FvzUoGCYUkOCSib1I/gkvMC2OdryNHRgtneiUPNXbr3j4tNMIGjFxYI9PvWeKgscOxfZTBPoC7TMZBvI05DhiJI10p6i5CLbov8ZZs/vJCPcjBUhcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NYG0AfiiV843sgxS3eJRbYj9C1YGXSWL/CZQXcA4yKo=;
 b=fDn3TeU6VXlNJFfP7Rh7ZwqOrEss95xjr6YYVlDPDPq1gFoESXkItozoZsY/6Cw0N/6kx2D68V4GZXKzFM9rcYTfT3ljFHrc1uwDkyN6hwtd/MnkbSOWvmzpXr4LPFo2jrc4S2rRyXHsPv3Sx35+OFnyUBdoQhXAnZBtnOm/mhuxGQOEwvV+q5CBK8Sth7l3AvoyunzcBbZrX+8YiZDRrz1ZOwds+dq/fEZzoO9kFnVgdU9wKf8GEkLYIpQdgT+mqPSsO4LD7BOoctp5bPRttdDjlvjMxAk+kBbpgx6zymcnYdqe78UO8GLnZsaKL8SP0nJezllM9NFww4bfspWIAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NYG0AfiiV843sgxS3eJRbYj9C1YGXSWL/CZQXcA4yKo=;
 b=XceN0bnr+4dfk3G9RAakmg7IFkWU3bim2a5WQN0sTG+X4BMpyC32h8+BISePVe01T8jmODB66miHxW1amX/quqwn7LmVvZewtd7+oXAHnTzo95iq2el7mHBARkd19QRQKEO6E3gJc3+gzan53jFol35jk5GbwnMqiNhmoABdKTE=
Received: from BL1PR11MB5384.namprd11.prod.outlook.com (2603:10b6:208:311::14)
 by MWHPR11MB1566.namprd11.prod.outlook.com (2603:10b6:301:10::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Tue, 7 Jun
 2022 06:43:14 +0000
Received: from BL1PR11MB5384.namprd11.prod.outlook.com
 ([fe80::c9c8:3bab:6b8f:5376]) by BL1PR11MB5384.namprd11.prod.outlook.com
 ([fe80::c9c8:3bab:6b8f:5376%6]) with mapi id 15.20.5314.019; Tue, 7 Jun 2022
 06:43:14 +0000
From:   <Eugen.Hristev@microchip.com>
To:     <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <devicetree-spec@vger.kernel.org>
CC:     <wsa+renesas@sang-engineering.com>, <dmitry.torokhov@gmail.com>,
        <Codrin.Ciubotariu@microchip.com>, <jonathanh@nvidia.com>,
        <alain.volmat@foss.st.com>, <matt@codeconstruct.com.au>
Subject: Re: [dtschema PATCH] schemas: i2c: Add missing properties and
 descriptions
Thread-Topic: [dtschema PATCH] schemas: i2c: Add missing properties and
 descriptions
Thread-Index: AQHYWmCv3hwu5Xd9hUuga/Zqd2pJnq1Dvv4A
Date:   Tue, 7 Jun 2022 06:43:14 +0000
Message-ID: <cc597d64-a7a9-0078-2d41-754a8d82af8a@microchip.com>
References: <20220427175956.362987-1-robh@kernel.org>
In-Reply-To: <20220427175956.362987-1-robh@kernel.org>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6fcaf74-2aa4-4a83-c006-08da4850ff78
x-ms-traffictypediagnostic: MWHPR11MB1566:EE_
x-microsoft-antispam-prvs: <MWHPR11MB1566491FBB1DC011336C5E64E8A59@MWHPR11MB1566.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Db4wsZGpVNY3Fo7WlrKH90kZvtP1PLNLSSZDHF9YTXsiVY5W30YnBZ8rcHtUicExin1uSUyzRUeSkNfUi8qap+sjeoWOpzqGtmIqs6/bTDQt4D62N/zUDaNeZUfeZJ9tqB7T5ALw7nxPg2l+/8ZNDxQflWdi1MgJivEIAuXSOjVvxtAgtTxWjtXvtJMzj9KFeseXIOzVbn8TKS3LKSxoSBgWIgHuUjHDutdk4s4dUJ1yBY3qThXvqi7BGKbgFs7QjqJl7aAWgN7NOVNqDrDxiVjrj21HfWy23oOGpvMm4SQYqAU9vjTW1BR8lXKhTNS4/vi5i1vl9q38zeTqMncZbdfabH2LqV5M3QeNT4tppyjxWLX+wmlYViOo6iaiGw9Y03T+pPlpecHEmco7BuucCgJzWap7ngOfyZVZ+UyRxp1qPLMiItF5Fhwmcba10PJp0pF3dTypyVfb9s3bxggWkf/1Z/nUSj9mtkkBJXK4QaR+slqCXMbPK9k8xJThUbGzW7e5+eFQFUsUnXyb3PlEmAurJFaLm7+KfHPi/5lXqghRododaxqsBHMVe7u+67PPEy7YOsB93g/IwJ8IuRk6fGDMneMGBs9Z0sl8Cy13i+EDWtzGn2zVaefxTnDeCjpJFeJMY4cunD+QyyforYxMB6wvEi0/Q6VPG/ueOGlS/2Y7obQ7KfJi9QcpGTYBUUwdPDJpk8MFp0yEkn02bXxsxuLnpB28Wa3hEyaTgA3MQf0e6qfHsSUgtvK1+T9x/myVmvz66sP0KsJX9jLlFuSlPQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR11MB5384.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(84040400005)(508600001)(122000001)(38070700005)(71200400001)(6506007)(6486002)(66946007)(76116006)(31696002)(66556008)(64756008)(8676002)(4326008)(91956017)(110136005)(316002)(54906003)(66446008)(186003)(66476007)(38100700002)(6512007)(26005)(53546011)(2616005)(36756003)(8936002)(2906002)(5660300002)(31686004)(4744005)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Nk00eHhTTTFwN2g4dWJPamdwd09LcDYwUzRzZG4raEliVGxPcmhVYkRPOUFI?=
 =?utf-8?B?U2xqeG9JVHpzSExwaWJ4UStaNUZRRElyTVg4cDUwNDd2RHhUZE9ZK0w2THRD?=
 =?utf-8?B?OEU0NnBYSTNBVXNDRW5XSGxwaSt6VVBuTFU5U0F5emFBNlY0cTM2RFMzQXhC?=
 =?utf-8?B?RmMwYkplMWQxNmJzWWYxWDV5SHlrL1EwRDJTZHozaXU4dmo0SEFUZG9hUFY0?=
 =?utf-8?B?SWY0OGJqTWkySGFESVFaUkhwSEZjREl4c0pPelUrMWZ3YitERHRleWxsZG11?=
 =?utf-8?B?ME50eHp3eTFOb0x1aVJ5RkV1aGpJWjdOSC9pcUZmL3ZydXVyaml0alJnd0w4?=
 =?utf-8?B?a1RZQWp0ODlkemtGS2ZpNkNKQ3VUQXZjNDF3MkhFMVdQOE9jd3BkaGVmWFpU?=
 =?utf-8?B?a05TWnhkRGdKTHJQV1NvZmJkVC8zSVNzSlErOEduSDNQbjg1M3Y0a3J5czha?=
 =?utf-8?B?SVlteW14SkRKbWQwSWxRV3lJMzcrYmMwZTJPVWNMcWdWUUIzZ1FxRFdXR1Fn?=
 =?utf-8?B?M1o1MjMvUFA2Y01nQmlDZE1SWEZGdFkxV1JaZVBNdWpER096Ym1PYjlDRUNm?=
 =?utf-8?B?NXJlRWlROVJYZ2JueDhxaHdnYjU4YWdhSGdJNEsxQkRhUmNOZjVGR09SRlg1?=
 =?utf-8?B?WHI4SVhGWWVaVnhReFViRG95WDBJYXFhR0svMmJlS0V6UFUwUzFYQU1qU2Jq?=
 =?utf-8?B?d3FRdVIxWXFqSFo3RlRYT2h4dEk4eEJVUjdMUTB2SW9BSnI2M3Nxbk5TR0Mw?=
 =?utf-8?B?bnkyRkNab1R1Q29tcldpbnYzK25hOFFEOEhmczRrOU56YWlucERRVjE3WGNK?=
 =?utf-8?B?Myt2cDF2Zk00WEtxQklTRTdiRVVrZVFzYVFob2psUFRuVnZyUGVMQVhpZk1y?=
 =?utf-8?B?R0tSaXVIWEtQUEczcklkMGlLNDJua1JFSDB2REc5SmFiZHdUVGZzdG9CV0V6?=
 =?utf-8?B?T1RhY3FUZ0d4eDN4MXA3RHppcm81ZThScEk1TmZRdVFEZk5mRGdmTlNXNnJv?=
 =?utf-8?B?UGtMV29mOXppeGJYUFMwbFlLeGdTZDRBKzlYNTNRdStaOUVqVTc4eHZRNml2?=
 =?utf-8?B?RUlpODQ5Z3haT3VwbUlFeUtPN2RrWHFGQ0JndHFidEVxRUJXbjF5ZFZJNmx3?=
 =?utf-8?B?ODBKbGxRZ0F1R3hCN1pjTWZTM3NWOWwybzludTgwWFBJajZoYlpRMzJVdUYw?=
 =?utf-8?B?czFqb2tYb2R4U1lyQ2l5M05BNTZ3UC84c2dvSlVJS1h3QnZlbStOcldLMHNv?=
 =?utf-8?B?Q1IvMHJpeEtWWlYrL3dseXdsR3hnYW44SlRyVmxINXJzT0tsR3pTc3ZVY0lB?=
 =?utf-8?B?VWRBczVjVlBucFpHajVLbEovNHk0RzVrOGlPNDFGSVBLRE1PaWtLWHlWZm5z?=
 =?utf-8?B?MnQrUjBkMUtUanphSnNRRUdwalIyQldEWlZQcnNuYkMvdVZMd3ZEc1gxOGsw?=
 =?utf-8?B?a0IvcllyK2hyNTh4V3ViZWJnTUN3WjcvVWJvOEtPU3E1UmFUVk9hOUhWcmcw?=
 =?utf-8?B?SGxsR3VRL0VHeUFteFFNeUFGUmx0UDhjWFhiS3ZLTHlEVU9Yb1BlRHpqcTBk?=
 =?utf-8?B?YjFjWmJiZ1k1THVGQmhjcjBFekc5V3RXeFFEY3p3dllKbXcrUlByK29KUjlM?=
 =?utf-8?B?M0lMQUt2bkpGRTJGclVmZGVRUzI0NllHVVJQby9yWWZwdXJTOTJmWm10YVlW?=
 =?utf-8?B?OWpNTTExYlpWblJSSkEwOUxOK2l5ZzhITEs0VHpBZTRRMTdKWmhwVkpqRmFT?=
 =?utf-8?B?UFV5QThrQzFFQmFGcml2S1BXczZMVDJMRnhGbTJRd2h5WFRuR1BKMXl2KzNs?=
 =?utf-8?B?ZlhDaGc2aEE1NW5aN2Y4YlQrM3hFcTJ6T283dHd5dDI5VmRVY3ZIOEswSlFU?=
 =?utf-8?B?cElZT0hwanptQWh6TjFteXBXVjhMc1UrUVQyQWJLTmlIUDJpV2RQUWdMWEY4?=
 =?utf-8?B?b0E0MG9TYW54VjE0SzQ3eWl4ZzhNZlJFU0JGQWQxRGlTSGtWNlNieFRFbDY4?=
 =?utf-8?B?OFlpVmVGNHZOYzM2RkpSZjkwMkE3RHVYc0x2ZS95VUFNb0tQZlA3TjVzTm1C?=
 =?utf-8?B?czV5bStaK2ZtZkJ0R3k4R3JYeFFXWGxXbW9wRXpHMzJTV1pYRHhEVVZXMjly?=
 =?utf-8?B?NGVyNlpCc1lJSTducUx3bis5c0xBN1c1dlJoSzVzTmNJZmpoclhnMTNYcWM5?=
 =?utf-8?B?RWhlMFJtTzN6blFTZldPblo3Z3FOWFpmcU5lMjFMYU1LUWRZRTJ0MTBQTVZK?=
 =?utf-8?B?c1lXSmVqZTVuZlphRzFFTU5yQ0dWeXdraU8vbE9DcVdGeUJrM2tEV0l0aVU3?=
 =?utf-8?B?eUViSjd3bUJNR0lSL0pHa2p3UHZWRWlYYnduZXdmeERVTldldnZlZG5ZUW1C?=
 =?utf-8?Q?exYNIjwGscVlg2E0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C56EE26C1198664D907041DB46D2C5E5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5384.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6fcaf74-2aa4-4a83-c006-08da4850ff78
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2022 06:43:14.6721
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1tBxcKN3otdsLdQMzUwmRGjX0qGncxVx0J4DSmszPN9gMZRSQz0gPTXHbLEQOtrs7FuZs4QzHBBBdqJcmDaJiWYGcnqAbuWXBRaSa0rwUDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1566
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gNC8yNy8yMiA4OjU5IFBNLCBSb2IgSGVycmluZyB3cm90ZToNCj4gQWRkIHJlbWFpbmluZyBw
cm9wZXJ0aWVzIGFuZCBkZXNjcmlwdGlvbnMgZnJvbSBpMmMudHh0IGJpbmRpbmcgaW4gTGludXgN
Cj4ga2VybmVsIHRyZWUuIFRoZSBDYyBsaXN0IGFyZSB0aGUgYXV0aG9ycyBvZiBpMmMudHh0Lg0K
PiANCj4gQ2M6IFdvbGZyYW0gU2FuZyA8d3NhK3JlbmVzYXNAc2FuZy1lbmdpbmVlcmluZy5jb20+
DQo+IENjOiBFdWdlbiBIcmlzdGV2IDxldWdlbi5ocmlzdGV2QG1pY3JvY2hpcC5jb20+DQo+IENj
OiBEbWl0cnkgVG9yb2tob3YgPGRtaXRyeS50b3Jva2hvdkBnbWFpbC5jb20+DQo+IENjOiBDb2Ry
aW4gQ2l1Ym90YXJpdSA8Y29kcmluLmNpdWJvdGFyaXVAbWljcm9jaGlwLmNvbT4NCj4gQ2M6IEpv
biBIdW50ZXIgPGpvbmF0aGFuaEBudmlkaWEuY29tPg0KPiBDYzogQWxhaW4gVm9sbWF0IDxhbGFp
bi52b2xtYXRAZm9zcy5zdC5jb20+DQo+IENjOiBNYXR0IEpvaG5zdG9uIDxtYXR0QGNvZGVjb25z
dHJ1Y3QuY29tLmF1Pg0KPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwu
b3JnPg0KPiAtLS0NCj4gQ2MgbGlzdCwNCj4gDQo+IEkgbmVlZCB5b3VyIG9yIHlvdXIgY29tcGFu
eSdzIHBlcm1pc3Npb24gdG8gcmVsaWNlbnNlIGkyYy50eHQgY29udGVudHMNCj4gKHVzZWQgaW4g
J2Rlc2NyaXB0aW9uJykgdG8gQlNELTItQ2xhdXNlLiBQbGVhc2UgYWNrIGFuZCBwcm92aWRlIGEN
Cj4gY29weXJpZ2h0IGlmIGRlc2lyZWQuDQo+IA0KDQpBY2tlZC1ieTogRXVnZW4gSHJpc3RldiA8
ZXVnZW4uaHJpc3RldkBtaWNyb2NoaXAuY29tPg0K

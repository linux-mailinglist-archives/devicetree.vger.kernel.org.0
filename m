Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86E2F728251
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 16:07:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236885AbjFHOHg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 10:07:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236723AbjFHOHf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 10:07:35 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F05E52D44
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 07:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1686233247; x=1717769247;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=8KUMGE0yHx7R76XE8asTY8BDFJI0FQqgFGNLkPQQ8MU=;
  b=eJJfdA040G5nJxG/8bAekeH5icTatv3vssH9MNfPtczpb7DLhDwdF1N/
   s08I4Zli0IcVxIq4JpE7wLQh3rM8XEULXlBS2WCh8epH2SmmlerZAFaaO
   InrAmvA+0Gytbo9KjNKLmpjtuf8gQd7yHiTzrrkB5kiX8sinxyW6d/U5V
   kdPK6+11cAPODbHvJMZmrFkFjClIot9kaZCaJ4qi8NN92KWv842pwZkz1
   tK146HwGb962CjtpchL5YRiqSIyqxTSKi+p76JLTtH24XERplQFCqTiJi
   aIhFzWstzJnu9DiPesl2NXDhPKG9QlvHX2Z9DrO1Cly5SkdLD7RXxk5n4
   w==;
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; 
   d="scan'208";a="219435655"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 08 Jun 2023 07:07:26 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 8 Jun 2023 07:07:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Thu, 8 Jun 2023 07:07:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GoFapQ59dOova1r7tngkUFurwbUtxM0J026dohmePyd1iKsQArjZ8lph9+7pThIiWFANHQrH1GLq33U+vwRHJOWiaFw/CcCjFjeAp06XfTCt8NAQPPxvG7d1mUW37QqRV6HaZ5Lg01cjeDz9tCZzscUFy8hdUygaXUZjURszrnECWVUCVY8909e9T8BbG9iJ4+zgJSwj8i0lGtQ64rLJq71/Y3nT78WFhciOBTUXTZ5TpMzbvb9sORdV2NEZ/V5kYrsz7icQdmqPpLIEQ+Kn2F7nof8m0g+MhuemHGzqYlzvq3iulsLZDCqGfVO4t260JEfvfzeK8Cprm8q8IyZdlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8KUMGE0yHx7R76XE8asTY8BDFJI0FQqgFGNLkPQQ8MU=;
 b=I66c8gim9byRSLtxtLGheuPrrUvrvxqyyuDcbP+SehRxVygUbiS7qUzv65MahLDDgm9O8WkEDfrUVbte2CPIAw7TP+CQwk0wJbSzSOHZb9J+dS905oJgJtOC8yp1u4mZmUIbXHbZGUpFg9UEYJsxWfnylX8Z0P5zZFBe8sUX83dcwvLAx95btSv6Gv9jChDNXY8lN++5nQ804xsmGRy10cqZFsUbzxyW3Z3l9SNnHkzFBQwjMcVQS5v/mQq3PyGNlBEyrGVLXlHuno7bRNlibievFuyonognPCJefRI03Q0U0V7bOS/QUkyt8u+/s9g5q/UotbEO9doDZXAZUWW9Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8KUMGE0yHx7R76XE8asTY8BDFJI0FQqgFGNLkPQQ8MU=;
 b=lrPA8FfFc3AnCLiaPpWJ4sVUfkZOsbeIzVsMK80MQQ+YP9kZuWXydRgD1ZAXFJupI9gnPqlVydtTMT5WYMkFjZUTdoARGfLHopKB9L6py7ITaMxPIyOhOqQ23BAWuvMRZqAU6BQuaKdA0ZStvEcA8jkBPyMhgIoNFWQm+iJPKJE=
Received: from BL1PR11MB5272.namprd11.prod.outlook.com (2603:10b6:208:30a::5)
 by PH7PR11MB6908.namprd11.prod.outlook.com (2603:10b6:510:204::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Thu, 8 Jun
 2023 14:07:26 +0000
Received: from BL1PR11MB5272.namprd11.prod.outlook.com
 ([fe80::4f69:4811:e480:50cd]) by BL1PR11MB5272.namprd11.prod.outlook.com
 ([fe80::4f69:4811:e480:50cd%3]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 14:07:26 +0000
From:   <Cristian.Birsan@microchip.com>
To:     <u.kleine-koenig@pengutronix.de>, <arnd@arndb.de>,
        <olof@lixom.net>, <soc@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <f.fainelli@gmail.com>, <aurelien@aurel32.net>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 0/2] arm*/dts: Enable symbols for rpi device trees
Thread-Topic: [PATCH 0/2] arm*/dts: Enable symbols for rpi device trees
Thread-Index: AQHZmhKMkP0Aj+pOP0y6urB6+7R9kQ==
Date:   Thu, 8 Jun 2023 14:07:26 +0000
Message-ID: <03267eec-a013-2cf9-2b9d-b82d06915411@microchip.com>
References: <20230530175624.2360218-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20230530175624.2360218-1-u.kleine-koenig@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5272:EE_|PH7PR11MB6908:EE_
x-ms-office365-filtering-correlation-id: a58d5501-7d13-47c9-e514-08db6829b01e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x1O2Q4S99bb+JCObpLInXBOE8tO8QuHGmOOzq4jX6TCRMth40f0v4hCtT77X69mimSZmypK33rQUji9RuL20ZObaeAbGoAVDpwlFGxLvzw1HhhSbZuE5xbdYLMLiyH9nx/qVjjqo7b7Wrfr9QX3u6EQgKYMheWINhZKEmwqxILkOebPZqy+ST3936r+JkjegaSbqmk/HeFR0L/QiSqC0w02/lVnKeAAYz+wXix60LMeP1FDs1QYu8y+y2+cDFumbCLj7cZW3Yzxh2i51Ni+5EhDOzxViD3c500ChbXOI6n1evpI891myoKb+f7NR3b7DJOWWD1alJIxK5525aoESscSbacgsESM0H6jNsfO56UqJ7bc3EW9yc43+V3n4ZEJFFhQ3ew25UzMpATWuTlh0c1IvSdW4G1BSBfI/ZitHEjsB+1qxJYkkQmB/aYSFvE8GX1Hdkcx0JMDAEQRE7AClCAE6igiO5UIwC96ZHzUOUESLAypwQfUxSUxUHpXs6OuSTY1Tb7+R8u/cQ/kSO04mTvOkyxk9gRsOOfOAW2uaLmQNkkaFRXajL/3hMQ69xbTHBhiIrhpJLH+S6/xYXkNOUaGk5Ii8/D+IInntr1KI0yYVj3XlBmF2POHrFE/XRiNyH+3BNFP9fbgAVYUR8qQp8z4uHOxRkfImrCpDzvqxKeA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR11MB5272.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(366004)(136003)(346002)(396003)(376002)(39860400002)(451199021)(54906003)(110136005)(71200400001)(478600001)(66446008)(5660300002)(122000001)(8936002)(8676002)(4326008)(2906002)(31696002)(7416002)(36756003)(86362001)(38070700005)(66476007)(76116006)(91956017)(66556008)(66946007)(316002)(64756008)(6506007)(38100700002)(41300700001)(2616005)(53546011)(6512007)(66574015)(186003)(966005)(6486002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXYvWVJIKzRSVWF1NGZyMThyb3kwS1NPUnBFa0tlVFRDTDBwNXU0cEtpMTlC?=
 =?utf-8?B?bVRyWnFRckJkSTNRZ1UxdDdka0Ywc01uYURvclBOanFqUHppZVN2YzNPY1dM?=
 =?utf-8?B?ZU5GcWlMSEtaaVEvV2dKU05uZXE0bXNHeTdGN05FN2FJWGVWalZmeVBHWHox?=
 =?utf-8?B?cnprQ1ZiQno0cFpBQU1TcVFMSTd0NmVuakMzUXdSNGVYeDkrcnVVNnJhNFlh?=
 =?utf-8?B?bFI0dGVMWDY5RVFJNU9Tc09qUTJONGVudnV6cHU4SkhwRThDSGxRMmhSRXMy?=
 =?utf-8?B?eDE2S1dKTE5jaWlvb2Z5bmo1akxSU0MvZUlGakVVeEloTnpqeW5oZ29abHNk?=
 =?utf-8?B?Y242QzlxZmc2WUlONHNjR1BpZ2pjbjhOOEhUb2k5TlY4TjBLNTVzNTM2RW1w?=
 =?utf-8?B?TmRDWU8wVllBRU1OZ2pqc3NRUE11NEtpamxYRnBqNjBFWDVTYlRZZ2tpekta?=
 =?utf-8?B?SmdWWVpXUUNYajFHN25NN1pKSWZtc01lZDNQV3JJWThYWURaZkxvL3NBZmg4?=
 =?utf-8?B?bG1VdmtDc01QdTVVQ2NpclRvZUE1YW9VazdxcUg3aWVnamJLQVhndVZWR2ly?=
 =?utf-8?B?Ung1bUdJc3pMa2lVaXRmWkNzMk9PeDBMQlF3cHB3L3ZWVTNPd2ZxTXE1VVFM?=
 =?utf-8?B?c0hqNmlHVzA0TVRyWXhnQzdIbUx6OCtZVWl2TklCS0J3UlkzS0VUNmREVmlt?=
 =?utf-8?B?TDM2Ums3QmpUWkcvYmtCZm9ETWl3SmFqVTNkampTSndvamRUVUcvZGUyVHBX?=
 =?utf-8?B?Zld6UkNkZUdiVkl4TVFGTTBrcElabVZ1ckJGNnpGdDIyZE5vMUNrOUxrR1RF?=
 =?utf-8?B?WnFrS2F4ZDVXTTYzT0d2cXZCWmVLcGl5TzZvVktOR2h6R0tWSlQxcUFYdUI4?=
 =?utf-8?B?M0M3MG4yNmduOWdRYys0V1hNU2p3L1ZydVJ4WXo0WUQvWGNackNhVS9YQ0dY?=
 =?utf-8?B?d1BxTE5RZVB1ZTdxcUpDRU9MZ1NZVEsweXYxTkFRN2hSc2V4NVdYSk5zNHpL?=
 =?utf-8?B?OEhkUERnSnV3aktxWXBjdUk4MlJvUVdUOUZWcDRTM042aEZnRXpPbVh2WWp4?=
 =?utf-8?B?QkplRTNHVVB2MzZwazN5MWx1Ni8xRktEZmpUUzRyZnJGVmxNMG1SUEJVQjFR?=
 =?utf-8?B?OHVuUnpYSEk3dFdBeVFsUzNPaTlvR20wWU5mMkd2QWR4MlVSalAzVWI3TWVq?=
 =?utf-8?B?cDJBQ0JCVm9NbnIyWVNjZUZtUktSMG1uU2JyK3RwclpwR3FnbXo3anF2cEhG?=
 =?utf-8?B?cEFyTVV1cFM2OWpFSERPcDFCTlQxM0pQZXRQMzJFUzJYMkVsT0tQQ3B5UlFo?=
 =?utf-8?B?dTN2ZjY0LzRPZW9kK3BMTlVNdDlVYXdJbzFuTXA0RmJDVk81cGVuWFV1VXB0?=
 =?utf-8?B?MSt0YmRrZ0k2cFcremY3Sjh1L2gwdzlRMGJUd0ZhVXZ4b1B5eFVrQkF3bEds?=
 =?utf-8?B?VGxGN3FycGJPUG43Nll1N3dUUFd1cEU5SWhpbjMxcFRBVjNpdVduMGNVTmdU?=
 =?utf-8?B?cFIrSzdMY2hLZENIbVMxWG81ZFUxUUJ4azBxU3lZR0dtZmJmbkxaVWUvMzI2?=
 =?utf-8?B?ZktRaXpoaTB5ZnkyRWJJVWlIbGdRTzZCTExsVE1vUGRQUWZyMnZEWU5qL1Rv?=
 =?utf-8?B?d3cwU3RGdmE0eDg2M3drekcwamxuV3llcmp4eW9OSm9vSWtIcEZMTEo1MFAz?=
 =?utf-8?B?SXVLcEVmMFNUb3AyWXh5ZExpQ01IdTZNZERzL3k2WGhXb3F3OTluUitkSXNS?=
 =?utf-8?B?dXkrdFI2U3R2S0FxeGhIQml0NkJ5MEM3Sm9RMEJFUEYvVEJsNkRDS2owamt1?=
 =?utf-8?B?QVlzZzVKT2ljK3dJK0dBSGcrZk1PRHJ0TkdFc1RIanc0VjFRWGM1aXRCdDJh?=
 =?utf-8?B?TWxjakJObUVCRGw1eitTbHJsaEw4NDZTL1JEMk9wSXljRWQxZ2QzbVhwenVM?=
 =?utf-8?B?TlNtRVZJSndLUXdrWUo1NFhyKzlITytCM3BIVFNhU3UyZnNscFVHcWN4cjZK?=
 =?utf-8?B?bzd5NGdMNkZ5ZTM0OGZkRlVLYjZmMTR6c3NCN1Y0KzM1c1BmOXpjT21FM3VX?=
 =?utf-8?B?ZnVhUUZ0b1RVSzl2Y0JJNU9RbmptWFJYd0lYalEzVGtPM1lhckpZZVc1Rzgr?=
 =?utf-8?B?ODBsOStFSzNyMUtVanhlKzdLVkJucmxCMGpwMk5SK0NsRTY0dk9Bd0xVcXQ3?=
 =?utf-8?B?UktlelF1QnJvb0xJNjNqVFRBdWxsTWxaa1V1OE5ISWZVcjNrczgvMm5vcGxS?=
 =?utf-8?B?YS83UFdNWlQzNEZsZzM3bXkwS0pRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <061AB9EE5303BE4697871354BB07305E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5272.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a58d5501-7d13-47c9-e514-08db6829b01e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 14:07:26.0595
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2xgRfZ/SqFAzKheF9QGo8GGpS/6ooRE2r67Ra1FTNW8dXXW7V4K+7SI/IpEGmNKgZhpoPnQWwD4/a5bLyv8aB7dPeDNrLkBMZrUwqAYtgJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6908
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgVXdlLCBBbGwsDQoNCk9uIDUvMzAvMjMgMjA6NTYsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3Rl
Og0KPiBIZWxsbywNCj4gDQo+IGJhc2VkIG9uIGFuIGVhcmxpZXIgc3VibWlzc2lvbiBieSBBdXJl
bGllbiBKYXJubywgSSByZWJhc2VkIGFuZCBzbGlnaHRseQ0KPiBzaW1wbGlmaWVkIHRoZSBwYXRj
aGVzLg0KPiANCj4gVGhlcmUgd2FzIHNvbWUgcmVsYXRlZCBpcmMgY29udmVyc2lvbiBpbiAjYXJt
bGludXguIFF1b3RpbmcgdGhlIHJlbGV2YW50DQo+IHBhcnRzOg0KPiANCj4gMTY4NTA3ODg1MTwg
dWtsZWluZWs+IGFybmQsIFtmbG9yaWFuXTogV2hvIHdvdWxkIHBpY2sgdXAgaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC8yMDIyMDQxMDIyNTk0MC4xMzU3NDQtMS1hdXJl
bGllbkBhdXJlbDMyLm5ldCA/DQo+IDE2ODUwNzg5MjA8IHVrbGVpbmVrPiBhcm5kLCBbZmxvcmlh
bl06IElmIHRoZXJlIGlzIGFuIGFncmVlbWVudCBpbiBnZW5lcmFsIHRoYXQgdGhpcyBpcyBhIGdv
b2QgaWRlYSwgSSBjYW4gY29vcmRpbmF0ZSB3aXRoIEF1cmVsaWVuIHRoYXQgZm9yIGFybTY0IHRo
ZXJlIGlzIGEgdjIgd2l0aCB0aGUgc2ltcGxlciBhcHByb2FjaCBJIHBvaW50ZWQgb3V0Lg0KPiAx
Njg1MDgzNDgxPCBhcm5kPiB1a2xlaW5lazogSSBoYXZlIG5vIG9iamVjdGlvbnMgdG8gdGhpcywg
aWYgW2Zsb3JpYW5dIHdhbnRzIHRvIHBpY2sgaXQgdXAgYW5kIHNlbmQgbWUgZm9yIDYuNS4NCj4g
MTY4NTA4MzgwOTwgYXJuZD4gcm9iaGVyOiBhbnkgY29tbWVudHMgb24gdGhpcyBvbmU/DQo+IDE2
ODU0NjY1MjAgPCBbZmxvcmlhbl0+IHVrbGVpbmVrOiBJIHdhcyBob3Bpbmcgd2Ugd291bGQgZ2V0
IGFuIEFjayBmb3Igcm9iaGVyIGJlZm9yZSBwaWNraW5nIGl0IHVwIGluIHRoZSBicmNtIHNvYyB0
cmVlLCBkb24ndCB3YW50IHRvIHJ1ZmZsZSBhbnkgZmVhdGhlcnMgdW5uZWNlc3NhcmlseQ0KPiAN
Cj4gU28gaXQgc2VlbXMgdG8gc3RhcnQgYSBiZW5lZmljaWFsIGNoYWluIHJlYWN0aW9uLCBvbmx5
IFJvYidzIEFjayBpcw0KPiBuZWVkZWQuDQo+IA0KPiBBcyB0aGVzZSB0d28gY2hhbmdlcyB3b3Vs
ZCBncmVhdGx5IHNpbXBsaWZ5IHRoZSBhcHBsaWNhdGlvbiBvZiBkdGJvcyBmb3INCj4gcnBpIGhh
dHMsIEkgbG9vayBmb3J3YXJkIHRvIFJvYiBhZ3JlZWluZyB0byB0aGVtLg0KDQpJJ20gaW50ZXJl
c3RlZCBpbiBlbmFibGluZyB0aGlzIGZlYXR1cmUgdG9vLiBXZSB1c2VkIGRldmljZSB0cmVlIG92
ZXJsYXlzIGZvciBNaWNyb2NoaXAgQVQ5MSBib2FyZHMgZm9yIHNvbWUgdGltZS4NCg0KSSBjYW4g
cHJlcGFyZSBhIHNpbWlsYXIgcGF0Y2ggdG8gZW5hYmxlIHRoZW0gdXBzdHJlYW0uDQoNCj4gDQo+
IEJlc3QgcmVnYXJkcw0KPiBVd2UNCg0KUmVnYXJkcywNCkNyaXN0aQ0KDQoNCj4gDQo+IEF1cmVs
aWVuIEphcm5vICgyKToNCj4gICAgYXJtNjQ6IGR0czogYnJvYWRjb206IEVuYWJsZSBkZXZpY2Ut
dHJlZSBvdmVybGF5IHN1cHBvcnQgZm9yIFJQaQ0KPiAgICAgIGRldmljZXMNCj4gICAgYXJtOiBk
dHM6IEVuYWJsZSBkZXZpY2UtdHJlZSBvdmVybGF5IHN1cHBvcnQgZm9yIFJQaSBkZXZpY2VzDQo+
IA0KPiAgIGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgfCAxOCArKysrKysr
KysrKysrKysrKysNCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL2Jyb2FkY29tL01ha2VmaWxlIHwg
IDQgKysrKw0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQ0KPiANCj4gYmFz
ZS1jb21taXQ6IGFjOWE3ODY4MWI5MjE4Nzc1MTg3NjNiYTBlODkyMDIyNTQzNDlkMWINCg0K

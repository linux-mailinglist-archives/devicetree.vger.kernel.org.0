Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A7C73BE5FA
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 11:52:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230470AbhGGJyn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jul 2021 05:54:43 -0400
Received: from mail-am6eur05on2068.outbound.protection.outlook.com ([40.107.22.68]:29728
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230489AbhGGJyn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 7 Jul 2021 05:54:43 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RjKyPlgiK0YYO8kcx4d79bt0/pBZO9aMYcTi+XTUJdLmS8EA9gA3B2tv4mMs075Va1Z2hIT3fckVM+Nj6txQ4L5XfCzQzkxt1PPZXSbwEuNdcT3ZDSkN2w1WOyaAsRsgbsjwu6TYrwnb3+ktGkHMJb9MnhgedsBiIR2thrD+/x0NdVZYtSr77VmSD8KZeD91VTvxw3NSJNsGauJFp1kmGOQpuSmukrO/6ZkOl4iZq12omp8PGo9O2ai8z2/O8pKCMlt1An148Mt41B7Uy/obx+uEHOQd/mrAZ6PwL4BrCVS7YJN0E0V905lyKOcDoEKqZqcha1DYhBhUvDoGSXBFQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LdhXGhUmRUgZtf/cUawNIktoVjTBMGAWQNGMUCJle6c=;
 b=Fqw4C6eyzmG1+3A0w+HNT8HqRS/fX8XN8TpxhzwQxG6eQGvbi2dZPAs5U8p6IdjNJMUfFXTrQJsPkCIZzOiy86l0aIJTPtAf7FBNvEeRZ7izXr85kYUjA7zt7WAnInQ3IVPulI2KyxPrY+6+ytO/1EH2BvRk2tPXrd8VxpVtHnTtZU9rEAhq78E/cng5lqewswframI8UTHbiy5/KlV2RvSTRhIXvMMEq+VNMdBEmGastsjtcSRCrHP/f2QDB8jPptkabOMghlcRqr/oKFnrXSzZdUxxv+nYBQD2uZYg0dCdLChKX/iYZrz2TXEaQBvS8Afu0YYjaZlSXTXU7WFjcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LdhXGhUmRUgZtf/cUawNIktoVjTBMGAWQNGMUCJle6c=;
 b=O8BezeK4X2UPw3/MoFeJvVhVcOWiKT4JFDnLrtzhUADVxA2uLOQmn4FP2s/RYlofcxpHD2UQ7ZwjSUtappesYOBoexZfrU9pbLLL1VQFj4e1IU0W3IHb84Cq0lWGFxxEL/h3Kg8VABbqJ9izhHTx1gHKmwkc4VEXfXoJaOqaCXM=
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com (2603:10a6:10:2c3::11)
 by DU2PR04MB8981.eurprd04.prod.outlook.com (2603:10a6:10:2e0::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.31; Wed, 7 Jul
 2021 09:52:01 +0000
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2]) by DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2%9]) with mapi id 15.20.4308.021; Wed, 7 Jul 2021
 09:52:01 +0000
From:   Aisheng Dong <aisheng.dong@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "linus.walleij@linaro.org" <linus.walleij@linaro.org>
CC:     "festevam@gmail.com" <festevam@gmail.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v3 10/11] arm64: dts: imx8ulp: Add the basic dtsi file for
 imx8ulp
Thread-Topic: [PATCH v3 10/11] arm64: dts: imx8ulp: Add the basic dtsi file
 for imx8ulp
Thread-Index: AQHXaV4PkJYFJN3HZU2d+DMO9zcLD6s3WHJA
Date:   Wed, 7 Jul 2021 09:52:01 +0000
Message-ID: <DB9PR04MB847726E3F450F6E3BDDFD801801A9@DB9PR04MB8477.eurprd04.prod.outlook.com>
References: <20210625011355.3468586-1-ping.bai@nxp.com>
 <20210625011355.3468586-11-ping.bai@nxp.com>
In-Reply-To: <20210625011355.3468586-11-ping.bai@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 30f5ce32-5f07-4248-1150-08d9412cde8f
x-ms-traffictypediagnostic: DU2PR04MB8981:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DU2PR04MB8981037BF45E18C22F621860801A9@DU2PR04MB8981.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /I0mMe5DjGOOztsyIrWfxXfxArSX3Pkf5xEN0NxVFHG7hNyjbgyq3s+fhT3wIr0lCRVHyH7NAxSHNQmVqf5LePBidoaEJ5QqPcI4q5BkTDkzpiwngopyACtPR/BN2c0ga1d2mgzT6TgRx0vr9d1vcqvRbh8P6nw+6l9aGT7cKEcQ58jgvQkUu9PfsTv1XevfGjTcjyBdNIbV4S/pib3gMerUgXW18Fw7Ls/o+N4ClA3hSUKOYAAwVZ+LXWjhIrCInegt1eXYYBjS6FDGZRUZz367S4wSfA8fO+sijPaRH7uZ1oLTONpaD5NFhn3x7VuULZ6GfzFUDlxa1ufnKWjTzBQCQS8/pkllRvyzgNTgnJpWH6VmyU7i+TFVXwH0LuI/a73Jk/9p8fvjPRSPbez7dy75XxpVyp2VPL9a2vzElttkdJYaFwVKy2GEywSoIOVYxAFacunZz05ItAZRMY5/HMo0MMgNfGjJtsMM6h5Qv8dEjV0oUTb9xFl6Ugz5sHjJZ9MsWlHt3gXZPHd5/MAzF1qQJnkHszBvB3PfcRdi+CUKiLom4Q0B2S885bitouMGo29qwj7KPUnGKPy4w1xUPjHg6mi7HrGvHU41kCKJv2nbETyMf6hsDy9QZLp8ih6IPUV5bhjkwSLuuGmSI04Amv2ygaVDQueeyZfdFY8QgxtgZdOGTgD3NGdoBfpCl/4sb/gELFRq18bR3AoToaW2HA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB8477.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(346002)(136003)(396003)(39860400002)(54906003)(33656002)(8676002)(110136005)(66446008)(4326008)(478600001)(6506007)(71200400001)(86362001)(8936002)(122000001)(7696005)(52536014)(64756008)(44832011)(2906002)(66476007)(5660300002)(186003)(26005)(66946007)(38100700002)(66556008)(316002)(76116006)(55016002)(83380400001)(4744005)(9686003)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dFJHUk05QU9TRU1IQ3lCOERrWW1JeHdFdzYxQWpxcTZXNldvQ2JPeFdZb0w3?=
 =?utf-8?B?aGFxc1ViT3E0N00rbnRVRkxSNEFJNGRmVjA0b3FaNU81T3d3VUREMWV1dzRV?=
 =?utf-8?B?S3o5bzYzNkp3eUsxdFdxTDhNQ1lFYzN6OTRGZmJRUUx1TkxiQjd4UWNaaURm?=
 =?utf-8?B?SVVpZm1QeEJ0U1YyTXV3VnlkQVJyaTFVcjQ1UW1sOTNXL0F5Wk1wL01LS1N2?=
 =?utf-8?B?TGVxc3A0Mk1DbTJjSEpkd2J6S3JjRTNkUThNeFdqektrVTZRcTE5Q3YveSs3?=
 =?utf-8?B?Ulk0WlZkK1BzOVpoSVV6cS8xSmFOZU4xVm0zaVYwdGdlSmF4Q1VtYjV4b1lX?=
 =?utf-8?B?N3V1SGZUMjF3Q08wUFVYUUxPNXlXOGFHUTBSOHVLbXlVN0R0RGlyTS9sSGIy?=
 =?utf-8?B?ZVRhUStZcXpDKzE0eTFSMFlpM3Q5OGIrZEkwZVFqZmpEM1ErNWZ6TmFnMWY5?=
 =?utf-8?B?V01NS2dCcXFTcDl6WmFpQ3BETms0OEdQSkhiaSt0aFVmVXVidFN2eUVPVmZF?=
 =?utf-8?B?M1NjSzh0S0NsbmhCVFdoWEdqNTJvaExYOFB2dVFpcjRnWTFlcThKcFRpRzQ3?=
 =?utf-8?B?VjVPdzkzMS9jeWRYYWpYZlViTzcxRnJSUXg4MTZLYnRuOHhsZGhYVWNSNzRn?=
 =?utf-8?B?U0UzbGRkNVUzbjVKbVArbkhjem9RRU1aM0gzMS9maldYZHpLWUxkYjJVUHBY?=
 =?utf-8?B?YlNVUW5nbXlDOW9HNUN1bExMK1RXQitKZjVlRU1FMisyRFI1NXdWZmVDVnd3?=
 =?utf-8?B?Y0pDck02a2FCZmxNRFhLOGNSQVcvanpFMmRuN3ArVEV3N2JjWHprcm51TXdV?=
 =?utf-8?B?NUFDN1h6VTYxM2xvRUttQkhjd0x0TC9jTWp6MmZNamo2MDh3L2wwaXlLd0tu?=
 =?utf-8?B?K2poSmIzYXhEMWJUOHIzd2RCL1hBbGZXTTUzZVNTMmR3ZkJlcE5yekRPNm9P?=
 =?utf-8?B?em42MCs1cm9jVy85YWd6Q2lRSldQY0ZiNHhWSTh3QWFia2txSytHalh5aVlT?=
 =?utf-8?B?OUxaQW9EVEYxVm1iUUxyem1Oa3BMVVlWRUFyVGM4MTRua2Z3NllYWGQ5WE92?=
 =?utf-8?B?NGtqQTdMSzl2alJ3N1NxNExpdU9HaUg2ZkdTd0huNkIwNHV3RnpWVmgyby9t?=
 =?utf-8?B?Snpaald6VXljUUxDY0ozV3FZcE9TeXJOaWl1OFc1SXdZL041dUdyaGVmVHB5?=
 =?utf-8?B?OEwyaXFZOWRibDdha2JLQjdNeUxNZmphY0x5YkJINXFvWnVYZ2tXSEtBMVo4?=
 =?utf-8?B?MmhsamNqZFlwK0EyVWo5ODk2OXAvdjVqb1dGaXdpK1k0MmtQd0x1WXl4aG1z?=
 =?utf-8?B?SEU1aHh2dTNxNzhmUGlZK1JPOVlpLytxbk1mQ2FSbnNra3N6YnB0RWxFQnhT?=
 =?utf-8?B?eVRIa0IrUnJXN2VNeGl0RjY0ais4MElSOXYzU3JabEpRa3BnSlRSYTQwc25D?=
 =?utf-8?B?NjlTUG5pVUZhVDY0QURiZ2NuZTRkSDFmeXNhc0tLdVZseWUyVmw4dzhFdzFu?=
 =?utf-8?B?b0xJNTFlbGVZeElwWHpTK1V5cjhrcys5NlNMZWgreDJrMHFkZDhqUFlzeHJu?=
 =?utf-8?B?RXpnMkFmaDJpNnEzMW1zZi8xdU5LU3RPdVk3VmVnNGxwQzJ3MzJIVWl6VHBP?=
 =?utf-8?B?R1Y4Q1lxNXBQb3RnL3RkSE15bTIyUkhWbjhkUkl6L2xTTlMvTzc1QTJJdncv?=
 =?utf-8?B?bWFTN0NOaWJBcS9iVlBmZGJDM1hvTkZiVDRpdVM1TWN6U1V6anBydmtqMk5w?=
 =?utf-8?Q?cFTIGw4lroj716k5wY4ptgGnZF8VqzHvlVogbb+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB8477.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30f5ce32-5f07-4248-1150-08d9412cde8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2021 09:52:01.6805
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: np4tJw06WFWskfFrVOBH7egf5pKNS+4pDTRuSCtEdgIqkG3bETMvsniS6YibEE0sf+Wahl4gOhpdMiWxOATe1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8981
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBGcm9tOiBKYWNreSBCYWkgPHBpbmcuYmFpQG54cC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSnVu
ZSAyNSwgMjAyMSA5OjE0IEFNDQo+IA0KPiBBZGQgdGhlIGJhc2ljIGR0c2kgc3VwcG9ydCBmb3Ig
aS5NWDhVTFAuDQo+IA0KPiBpLk1YIDhVTFAgaXMgcGFydCBvZiB0aGUgVUxQIGZhbWlseSB3aXRo
IGVtcGhhc2lzIG9uIGV4dHJlbWUNCj4gbG93LXBvd2VyIHRlY2huaXF1ZXMgdXNpbmcgdGhlIDI4
IG5tIGZ1bGx5IGRlcGxldGVkIHNpbGljb24gb24NCj4gaW5zdWxhdG9yIHByb2Nlc3MuIExpa2Ug
aS5NWCA3VUxQLCBpLk1YIDhVTFAgY29udGludWVzIHRvIGJlDQo+IGJhc2VkIG9uIGFzeW1tZXRy
aWMgYXJjaGl0ZWN0dXJlLCBob3dldmVyIHdpbGwgYWRkIGEgdGhpcmQgRFNQDQo+IGRvbWFpbiBm
b3IgYWR2YW5jZWQgdm9pY2UvYXVkaW8gY2FwYWJpbGl0eSBhbmQgYSBHcmFwaGljcyBkb21haW4N
Cj4gd2hlcmUgaXQgaXMgcG9zc2libGUgdG8gYWNjZXNzIGdyYXBoaWNzIHJlc291cmNlcyBmcm9t
IHRoZQ0KPiBhcHBsaWNhdGlvbiBzaWRlIG9yIHRoZSByZWFsdGltZSBzaWRlLg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogSmFja3kgQmFpIDxwaW5nLmJhaUBueHAuY29tPg0KDQpSZXZpZXdlZC1ieTog
RG9uZyBBaXNoZW5nIDxhaXNoZW5nLmRvbmdAbnhwLmNvbT4NCg0KUmVnYXJkcw0KQWlzaGVuZw0K

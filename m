Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 921E53CCE8A
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 09:32:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233759AbhGSHfg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 03:35:36 -0400
Received: from mail-eopbgr80083.outbound.protection.outlook.com ([40.107.8.83]:43172
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S234833AbhGSHfZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 19 Jul 2021 03:35:25 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m7K+gZCGRinzndSy+0ahvi1za+vUIjB9AyyxhqSfiGQAzAsbL1aIj7nH4WgxC9D0crhNDb/qPnc+O/JZAGVKzXC0Ur2Rze7CTosMaDeSe7BwHzqwW9hPbZssY/JxsG1wgs14RzBsX4NPHcpGTQA5NWwBpRjoXbGQxyN3HHd56uP55Qyx+/ffSZmQ86Gm2rL9FyycaYzp/Z+gihgbrCQ9eB+O++Hbrma6relBygEPrKbiAIfasnZGnPvy8PHVv6BJ4D3Xh+f3vBdN23S+R1tH7YfpoyI9reosTma5t2Uxzaj6wqkhcpqwQRXDVqTMIHOBvOwXbIfYQf4MqzONvbveDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3UmtUyM3zm9uYtcwXW8c5G+xKPbQOrVuf3QfYomv8Jw=;
 b=igOiBUb6p8rcA9S2h63U71OoW2vx5x8u3tDz9bMGvtanQl0gRX0SpEzEYPo8twUb2fmdlUzBALns0W0RS4oTlhx4OhI9gwvjzo4yOICBFAy6c2MQ2Eedblsi4JHQKD45Z1dEEBYdDnCiYlGQKGxH7pXUbSFku1IeCCPGym/tsrrJYmMcv5nwDnazgQAmvJBb3XELzOqOZAalKm9du1GeOi+SC3I1ahE7PqUq2DiQZ61D9ZuxDaJb9dMNp0mEH9103aqIIbbM9rlQ8BO/ySLsawLAHhZ1BG6c3B0RGzxj5fsj+Ye5fE6LYtwqtgArIkULUXv08HowZ3YZ6zBQhBlXpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3UmtUyM3zm9uYtcwXW8c5G+xKPbQOrVuf3QfYomv8Jw=;
 b=TCC180rHi8wCHSMwieGGm/VMRvQ44GUUZO4aUZzBHoRQtD8vmDp24lQ98cBamqJVFW0rlc42MYvsZ3M/drZrbb1pPAmVf/1PV6/sDfOfmnBdeMPFn3ZhsiOZeGqdo0sbzqJJGgrjCOvjAlwK7rxrFd9/xO27v8RaGFPFYtD3dbk=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DBBPR04MB6137.eurprd04.prod.outlook.com (2603:10a6:10:c1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.24; Mon, 19 Jul
 2021 07:32:23 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::9c70:fd2f:f676:4802]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::9c70:fd2f:f676:4802%9]) with mapi id 15.20.4331.032; Mon, 19 Jul 2021
 07:32:23 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= 
        <u.kleine-koenig@pengutronix.de>
CC:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "mkl@pengutronix.de" <mkl@pengutronix.de>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: RE: [PATCH V2] arm64: dts: imx8mp: remove fallback compatible string
 for FlexCAN
Thread-Topic: [PATCH V2] arm64: dts: imx8mp: remove fallback compatible string
 for FlexCAN
Thread-Index: AQHXeiniwVEWlfTxNk+70Cdes9Pv5atF4RIAgAQIAkA=
Date:   Mon, 19 Jul 2021 07:32:23 +0000
Message-ID: <DB8PR04MB6795BE42426FD37973C13C44E6E19@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <20210716100414.12840-1-qiangqing.zhang@nxp.com>
 <20210716174752.tcjjqghoxfxqqp2f@pengutronix.de>
In-Reply-To: <20210716174752.tcjjqghoxfxqqp2f@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2bdd559b-76a9-4ffc-4515-08d94a8759d3
x-ms-traffictypediagnostic: DBBPR04MB6137:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DBBPR04MB61379254B708C18D398E321CE6E19@DBBPR04MB6137.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:148;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3jO4OLaxnssK5mb2ArNPQCdnZ1GWXE+0odvMwZJGhE6Bi6SLYqA4j4SXsft7bD7H6SIbieYpZn36bvU0aOOBtm64VirfFDK7xF7LClGhn+fuf2enA68rHeQo64WbikkG/iH9QbG5YFsq/IaJVt+a4lhS9uzlsVNUjTMuSokoebHca4muOKm+RkSWTClkdczubFICe/2rKCnGwtcFbISJqUsWNTOAQccyiOGLlmTESp5ZE4uHY0bqATNxEEmcuWxMexdcdlkQvT4LMAOQ2SzoPmiXd9x/mZ3q/kSg8lngLz4lDhrWYg2O3GU4ool6CUe29nFSweaHCDRISVjMmZF9jxInGUazy/9vFoLSElKouRPIBgoASXCC5RXiDLo47iQF+Sbyn30NXGGEfv5TXRliXOSorG9HVNkyOYveRG6ySbYn5mF59iXVgC30Cm0tGnK1ZZpEJd8R6e/p2h1qELFuqPLTDy9BuyJJ6eyBbQ/EFgkaR5XQ+Sv09p8D17sDWnA+Ho/Y9r+iroN8J4fkScx1wELddHsK2BdlWe8PXd65U3+H9tNhBPjm1ZBMNTDDuAZZOKZuNi4tW6IGPNKa1xRzuNjHJ6Ler76VPILzIx8oWOX7eujoJOXxiBdntzxhfgEdAF8kB0XLg16LvarG998XDwYw2G6YecyfeEjblFsrdb8Xan5KOG8E1a/RPcQesJev6RAP0QgzTwYhCkUqjMuzWX1PNI6N8p5lLErnjK4So7WZ6zh+UVxu1bRZsUz0F5f9gyw/7aNqIToeisqgrLr2xgF3pjFSUcwYIbpJAU/6rksi7SHDgWc1rYHjDHh8UgXl
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(366004)(346002)(39850400004)(396003)(66946007)(4744005)(966005)(54906003)(66556008)(6506007)(83380400001)(6916009)(64756008)(316002)(7696005)(66446008)(66476007)(66574015)(26005)(76116006)(53546011)(5660300002)(186003)(9686003)(55016002)(4326008)(8676002)(33656002)(86362001)(38100700002)(478600001)(8936002)(122000001)(71200400001)(2906002)(52536014)(32563001)(38070700004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGVocThSVS9LZGdwanJVdkIzblZSd3dPNGRWdG5ubGxid2c4MmswK3ZMYUky?=
 =?utf-8?B?UE5IbjVka2pGaDFveFBnN1BUMm5SOUdEclRGeTFOTCtxVmZhM2ZuZnEraGIz?=
 =?utf-8?B?UUUyUW54VkhCQ3g2a2VjVnczclh3MTgrNDdXZEFaWG1kdU9PMXQ0c1NJUVdO?=
 =?utf-8?B?R205UU5OQk5hcUtUR2Y0cXVOMGRUUzdtZjFVdERTcDJCcUVEOWdDWUxNdjBP?=
 =?utf-8?B?SFdHUU1FRzQ2YVBSZlI5Nm9vamZwcWYxSnBneHdNMWlHNXlEbEdablBudHpY?=
 =?utf-8?B?MTEwZW9ZdFNpek03T3JYc2xhQ011Qlowc0xzUElRemdtaFRHVHltN0F5YXk2?=
 =?utf-8?B?aWlrSEVFVDFDOEdRb3hXc1NBU0FsQmhINThFNXdMd3d2MTF3V0Z6VFBhcThk?=
 =?utf-8?B?Z3RIMGVxbjd2a2s0RW1TYmdpamlsV0ZDUWpqL0ZWdEphYmdHQVUxbDJZTVBh?=
 =?utf-8?B?c2lmQUx2WVR5WDY2dDBxcW1ENGZ5S0hQZE4vd29NV3YzTWxWNk1wb3NwVHNV?=
 =?utf-8?B?cEJiNEhaUHNISEtOdmZqZU5CRERxRU5yWGJyT0hIbS9JQ1BISkZ0VGRmMkxs?=
 =?utf-8?B?Z1dHblRsaE80RnhQQkM4RURlNE5iWkdzRFdRU3UxcU9WVXRIcFJQeHNBd0RY?=
 =?utf-8?B?OHpxemxrbFIzVk4xMEtkU1hMb3FDS2NVQm5lM1YvS0Y5OGEzYjFwdm1lOTI3?=
 =?utf-8?B?YUwxM0NGSC94Nm1XZFhuczdOdmhSVm5KdU04T3hESUlJSmJBUk1OL200VUw1?=
 =?utf-8?B?VUdHSlhQa3E0dE4wSWdzV2QzRzl5UWQxOXFUK1RHdlEyRlF1OGZzSnhKWGdu?=
 =?utf-8?B?ck1UbTN3aW1RVDlac0RLeHljQ0V6cVQwRmh2Sm5YdUdob3FjdUV5aUpFWVlS?=
 =?utf-8?B?UkpTN0pUU2lPMVlmTTRycnd6NnhlSDJMOWx4SEJ4L21iTGRCQUZCZVlxODJ6?=
 =?utf-8?B?VXV2anhIVHZvcldHczRVa1NlaVdxVitkcklaVUM2NlV6MkNIUkhzb3F4MU9U?=
 =?utf-8?B?UGRNdHFPazBHSzlFZHlvZEhpUllaSEtVenNmc05KVzhna0IzYWhpRUV6MDg4?=
 =?utf-8?B?ejlLSEdFYk5UNURrT2ViaDRuRzFxTEtrbitpcllQaUl3ZGpHSDJZZFhSZm11?=
 =?utf-8?B?WG8wQnorUWRiVDRvRHJaVDRaa2RPK3dqRkdmcXlNTHRzanc1OVJvTCtVdmIx?=
 =?utf-8?B?MExRaFRHTnVGdSttMlQ3ME9Qc0dKdE5PbGYzQnZ5emhpVXV6R1VxWll4YmZF?=
 =?utf-8?B?M3gzdW1RYkx1a2o2Z3F1d0c1eDlXOFc0RVE5dFROZkVXNlR1Rk9XVmZiWnNK?=
 =?utf-8?B?TGwyalNTci9wNHRMTVVqRGJzc2RSekRNTW1XblRteDJNaFpGSmNtZ2lMVzZT?=
 =?utf-8?B?NjI2MFVkdDk1eEhLekNwWmRma09NRWUvNjU3bU9tSnp0NUdsTC8ySngzNXdn?=
 =?utf-8?B?RG8zSFU3Z0NFenM5cVRrUXAwYUN6NW95ZGd1UnR0aktoU1RkaG9PZHM3eDdm?=
 =?utf-8?B?ekR6bnVQRGErTjRGbWtqaGkrazRnT2dvbDNaR0l0M2hGdVVGT3p3a015RTdD?=
 =?utf-8?B?VVcyaVlTTlk1bUIvaWdRdXlBY09FekQ2bmZPYzhUNDY2NjgyNVBlTXZuVUJE?=
 =?utf-8?B?aVdnWVlnMm9NdmFHVVpQM1l6SWNOZ21udDV6TTdxb1ZoUE9hYWJLeGpra05k?=
 =?utf-8?B?WS8wbE1Zd2k0T2NtQ24rM3VWMWlweWM1UEgxdG4wSVhacWxMQmdkL0F2czdL?=
 =?utf-8?Q?xJeDVB9qD1tVcymkH0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bdd559b-76a9-4ffc-4515-08d94a8759d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2021 07:32:23.6957
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EJ3QZNHP/+aCXptvypkYg7bHuA00ZM5xKCLCtAJAfCZ1lIYCRMsctIEPrF7fEmP2JmCavXzhq8J3oD7rwvr0RQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB6137
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFV3ZSBLbGVpbmUtS8O2bmln
IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+DQo+IFNlbnQ6IDIwMjHlubQ35pyIMTfm
l6UgMTo0OA0KPiBUbzogSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4g
Q2M6IHJvYmgrZHRAa2VybmVsLm9yZzsgc2hhd25ndW9Aa2VybmVsLm9yZzsgcy5oYXVlckBwZW5n
dXRyb25peC5kZTsNCj4gbWtsQHBlbmd1dHJvbml4LmRlOyBBaXNoZW5nIERvbmcgPGFpc2hlbmcu
ZG9uZ0BueHAuY29tPjsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGZlc3RldmFtQGdt
YWlsLmNvbTsgZGwtbGludXgtaW14DQo+IDxsaW51eC1pbXhAbnhwLmNvbT47IGtlcm5lbEBwZW5n
dXRyb25peC5kZQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIFYyXSBhcm02NDogZHRzOiBpbXg4bXA6
IHJlbW92ZSBmYWxsYmFjayBjb21wYXRpYmxlDQo+IHN0cmluZyBmb3IgRmxleENBTg0KPiANCj4g
T24gRnJpLCBKdWwgMTYsIDIwMjEgYXQgMDY6MDQ6MTRQTSArMDgwMCwgSm9ha2ltIFpoYW5nIHdy
b3RlOg0KPiA+IEZsZXhDQU4gb24gaS5NWDhNUCBpcyBub3QgZGVyaXZlZCBmcm9tIGkuTVg2USwg
aW5zdGVhZCByZXN1ZXMgZnJvbQ0KPiANCj4gcy9yZXN1ZXMvcmV1c2VzLyBJIGd1ZXNzDQoNClll
cywgbm90IGZvdW5kIGJ5IGNoZWNrcGF0Y2gucGwsIEkgd2lsbCBjb3JyZWN0IGFuZCByZXNlbmQg
aXQuIHRoYW5rcy4NCg0KSm9ha2ltIFpoYW5nDQo+IA0KPiBCZXN0IHJlZ2FyZHMNCj4gVXdlDQo+
IA0KPiAtLQ0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBV
d2UgS2xlaW5lLUvDtm5pZw0KPiB8DQo+IEluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAg
ICAgICAgICAgICB8IGh0dHBzOi8vd3d3LnBlbmd1dHJvbml4LmRlLyB8DQo=

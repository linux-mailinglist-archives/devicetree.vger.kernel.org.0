Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 655A76020B2
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 03:58:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbiJRB66 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 21:58:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230333AbiJRB64 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 21:58:56 -0400
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70051.outbound.protection.outlook.com [40.107.7.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C61718A7DE
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 18:58:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Asrgk2kDu4lUE3gbN5XREPOW/2Z7fFR0McfHxsvDNgexTvCiPv3R8jWnQsqO1tJUgRlNgbRCQHCO3EY64n2vg8oK8PazBq+NKcLMvjh0lgN/AC6HSoikXOOw+7nhuSEkPRhrqUf2+gyUtLO+cF06s3tNrTBgSiYnzuTQvyBXfvz8Xf1Sbw8SEQA8k4BuvCM1jypPDB9KvQwQfY8pN1aZzsXDPO0+dlu8kbfjxV18WZweJgy3tWbQ4L/wyc8FSPkgVsB4a0RhnVLOXIPqHKnluyurRKh3HE0gKdjpkvRbgLezaELFKFmuGdGXtic/nUMGhS3Pm1CrVMqCpOhBfc8QTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MKCPxgs9Fg/xVBiv5fqwhwAGC+x+7LnB0G48FqDaC6w=;
 b=mL5KmhyHA3B9tQwaaINqrTGg8Gy9AsBDlVq6onGumLKF1CVaYttNwJnT1o+0uC0wEAYF2L4Ii+qRPMT5ZZKvXAux/w6LqR+VsySGjMCNJQznUhX8NOuBL8C6Q/YphwcPfxIqpKIewe8asNpHVQrkYheAwBBV9DABExgeyGwJF15T06y8vAlx7W/cMwH+GotC7oxYIZGAKECzebNsR5phy0UbbeZXPijwGTnYrOzmRWRhEF2muZzg8GQApqYoP4gccszWOfh0fL5P8j4X304Hzhzj7az50/1/eOM0pAMmrlNcihYqT6T2kRxrxqzDtw95x4rLcs3CwNhEpeqynl0Kzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MKCPxgs9Fg/xVBiv5fqwhwAGC+x+7LnB0G48FqDaC6w=;
 b=FOdBJoEhPhdFWSC1cgPMz4NsTa7KbkVAz3XcD4u1wLrZYIlnX/tOAMHwk6W/bEEd4fCt3uO67cFydrZkQirbLJ/YvXpYfehAa2JldSovzGcA3R1OnVEIhX7T9aQswh+uD+nQ89ZHTXfxF2/ETZtc0FIotnohdLfm6ZKK+QYIn24=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AM9PR04MB8163.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Tue, 18 Oct
 2022 01:58:47 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::50b4:e2c5:1f16:47a6]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::50b4:e2c5:1f16:47a6%5]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 01:58:46 +0000
From:   Jun Li <jun.li@nxp.com>
To:     "tharvey@gateworks.com" <tharvey@gateworks.com>,
        Ahmad Fatoum <a.fatoum@pengutronix.de>
CC:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
Thread-Topic: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
Thread-Index: AQHYwPpqstnFrbFBgEie+WmZURffea4OLcWAgAUONQCAAGmeYA==
Date:   Tue, 18 Oct 2022 01:58:46 +0000
Message-ID: <PA4PR04MB964029033651BCAF3F222BA189289@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <20220905073730.199462-1-alexander.stein@ew.tq-group.com>
 <40f423ce-376c-acbf-db00-ca696da44fe4@pengutronix.de>
 <CAJ+vNU0SPowfxBAAyJ2QxGB8VifxpqMaNtB1M3c=C9wopu6LYw@mail.gmail.com>
In-Reply-To: <CAJ+vNU0SPowfxBAAyJ2QxGB8VifxpqMaNtB1M3c=C9wopu6LYw@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR04MB9640:EE_|AM9PR04MB8163:EE_
x-ms-office365-filtering-correlation-id: dac2e9d4-72f1-46ca-427c-08dab0ac4b31
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0DnuANnzo5WVr0HfqY4d8l8sjb3Kj2RHuwFV4wSiVmwABvtab4ZOm2UBSYY1THF/5oe3wCEQKnQs0tQmbAY5w/wGrN2ho8AZKUBSjaxCXrs8sS690M9iVEpf8ti7UIWBrY/SHIQH1WyoF/ly25bmu7aEMKgZz3ZbmmutmTZdfXUv/GAnm9E8tuuekuRfOp3tYXnuAFbHphRw0OfUOaT1ghUpx8vII0gcXnZxCxVAiyCtz6Uvsfbtvz8qtVx/Tp2TiQOPM2lCEIT5OC48vKOFWrHlOE9RGqt7eqoyq5p7/yMYF6q67yPb5fVwddblbiyBVOX/twvqqq3T3crmCgX5wc88aiEL07nDZG5NjZzSlWgDSGF5zwi5454NwYNF5yGDn7QKY+zHEtgspXPl5Dg5uAHev1RFRMCUjwsL7WjNc1VVncxho4h7KXcMbzRNoybziXkXcINOhc+8M7M7PBEQ6vYJ3joCE8URMuAMaxPcjXOpuMSzSQ6weiZip3q5UIBUq85sB7K8/mmdaElZrzx0AvinUuEvrAScsdJO3L2d2WyowOUmAY7xCaSosgnj5Fa0Mok7cdW3RbezGMvmczZyVqXF4WnGRFjZF9XkPUDULiiOZvxlavNcz8tfbxo5am25UjvWjRVuph2IJ6nvkwCZhTyQ9ahU8RcozF2z65DdXT5+0Q+OKhYRDgnxX8Z0uXIGU9TRqCbkm2TaA0cowueqOf4cQ+G+kNIR5tMu9O4LMM8Tq9qIe6DOiph7GVvXBFZtMLwNTL8NU99c1HdQFZVaxKaBZYg364lRfGirqV4rAtw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(136003)(366004)(376002)(346002)(451199015)(316002)(54906003)(110136005)(83380400001)(9686003)(8936002)(52536014)(2906002)(5660300002)(26005)(33656002)(44832011)(66946007)(66556008)(66476007)(66446008)(64756008)(86362001)(8676002)(76116006)(38070700005)(41300700001)(53546011)(122000001)(4326008)(55016003)(7696005)(186003)(6506007)(71200400001)(38100700002)(478600001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eHF1VlNtYXFDcmI3YmFnNzFVYzJWTG9IL1hIQ3FHN3pERVFPaEtjdEhveDAw?=
 =?utf-8?B?L0xYaXVSSUp2UitlSVk2dHJnQ1U2Skd5a3FKc2h2cWhWU0VrdGY0WDRWd1pX?=
 =?utf-8?B?OVRBcENpTnk3N2ZzeTJPbldJaWdBSkoxQUs0UVhnYVFVZWMrdmZ6eEpkWDJp?=
 =?utf-8?B?UHR4b2VVNFhacjBDNURQaTNCc01MWEVqa1IrWGNOMUlWeTNIZ05qRG91Z1d0?=
 =?utf-8?B?ZWhFQS9UZlVqL1FoU1hCTUFWSXo4WUpib0F4ZlVjRnhnRzlhUWRIK3ZOMllP?=
 =?utf-8?B?TlZWTGN0SjhCUGtodVNHR2hpS2xzWXAyalNUUDl4UXREMTdyOEhQTXN3OUJH?=
 =?utf-8?B?RmhjWjZtRUh6T0VJYmk5N2pCUHFFdjU0WmRicU5KVEpUdE92WWNleTRLd1Zu?=
 =?utf-8?B?bU1NWE1nRk12bFR1aU9XejY0WTZWaFFkNmJXMFBaWUxid29yMWhGMU5LR2F6?=
 =?utf-8?B?QlhWdVh0SWl4TW1lYzlRSzJmRFNWN0tqQm4ydDlqSWpxN2VyK1E2N2V2ODBr?=
 =?utf-8?B?MDk0WGtHYjdPSERUS0NONHhXcUVTalgxVThxc0wxVFpkdXFIcTduOTdaYW1N?=
 =?utf-8?B?ZVhoMHFOajg2QjhvbjVZN09qa0dqUDZ1RG5MRUVuQllPVUR3YlZ3dnpnMGFK?=
 =?utf-8?B?ZzVaYUJ5ek5rNjYrY2hUSzNBRXNxYlMwNlZDUElGTlNyK3hjZTdVZklEMlpI?=
 =?utf-8?B?NmFwVFpIMG0relRxaDZDaGJZeFlOY2hMOTlCVkc4Mzg0YjZZZ0FYNEpRbGNk?=
 =?utf-8?B?M3phMEgvaEZMWWlDUXF5aXdhd3FLc3liZHhHNGo2azJBQTltKzhXNmxJUGRj?=
 =?utf-8?B?M0FQZzBRNmtYTWZpN2ZlRWsxUmRCY2kvSmR3RytlSTd4WE5UZysxREoySjVi?=
 =?utf-8?B?cWR0VjlLR3dXNDBNYWlSL1pKM3R4cThlWkM2UnYwNGdOeTdKa2lDbSs1aXVw?=
 =?utf-8?B?anlGbUw0dGJPb3NUQVVyWVZLcXdOU0pSYUNud1NaUVI4aFNNMktnUStRVVc5?=
 =?utf-8?B?SEozSXJNaWdBK29weHgrVlh0V25kWnc0Z2QyY1FLUXdzSHFZc0RzaUdXckZG?=
 =?utf-8?B?bDN6WFgxYlc3NzNaT2VtYTErcEd6SFJLWUZxM2x3U2hrODc4M0wxQ3N0b0Vp?=
 =?utf-8?B?Q3BSelNUUEtBMitDMzY0QlU2L1UydVJWUnVBdFVOTloxV1BYTWpZMnlwekRH?=
 =?utf-8?B?Y1hDUWVwUGF1WFExYiszQTJFSWl3TXFJT2svSThNZm9vQktQLzUyU0VETTFI?=
 =?utf-8?B?YU9abFR0NjYrZ1lMVDJ3NWt2M2lGNXhpZ1NWV2xvZkZwUCtPWXpXME1zQjRD?=
 =?utf-8?B?L0M5Z1ZTT3dkMVk2Sko3bk1ndVdnb2JqNWxvdS95dTVVaTE5WEQ5ZHU1RUpl?=
 =?utf-8?B?OTc4MUQrTnZSNVNlTGtodXlabytxenVXUjZLbmZpOE56azFsRGR5a09rd0sx?=
 =?utf-8?B?WEJXR3N3VkJ5MktYWGxNa0J4eWFrai9ZcGRLUVpRTFJWL0pNK3BzSHU0MDdY?=
 =?utf-8?B?aXExTGo0VHFSR0IzK2RBejJVeHZrb2hlaFdpU0NPZWc1SEhUWTlLWWhJNG5y?=
 =?utf-8?B?YlJQUTNKK3RWdnhpR0JyY0pHeTZ1M1lhbHNYYy83cGJIQUZ1ZVZ2N29GaUVQ?=
 =?utf-8?B?Um5WN1k0cElLQ1VMWnpad29zUHR2N3d0aFlqV0kyWm9DT1VIVExWakVvMlR6?=
 =?utf-8?B?alB0ZnJ2SkFVV1AwYjBRTkxxUndhUGU4L0VUcVZOM25tWCs0S1JMRkQrWFJB?=
 =?utf-8?B?WStwajFUekpQM1R1d0ZuTFdlc21mbStoeThseVRGWkxQMklOd2FmWkJ5MDNP?=
 =?utf-8?B?WUFMREszaVVqVzNRQWtOeFRuV2crcFl3UVN1UG1vR2VJZ1N0UVZwdnMwZFpS?=
 =?utf-8?B?SGd4b3NpaDlMYU1YczBHaUpId24zSlJuWitJM09Fam96U2pXcVVJVWtUK2lG?=
 =?utf-8?B?bzZoNVdHVWgrN0pPRVVKa1B5V1BITkVYOS9sU1FRRnpNMXZkVktoajduQXZv?=
 =?utf-8?B?cm5iOGNzOWpEd2phZU5MNWFrV1lCL25EcnlqVFRyMENyRmVpWGtGMnNjSTJZ?=
 =?utf-8?B?ZVJNRm1JNE8rcEtxSWN0SXBuWk10SHZ6czgvR3NxRnNlQmxsa1NxS2pTZC9I?=
 =?utf-8?Q?4UWg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dac2e9d4-72f1-46ca-427c-08dab0ac4b31
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2022 01:58:46.8104
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /HYyfzBzxnY95+xH6Ml7yfdsW6wqH/6HLtNERRfxWaB/iSy7nl1wyfridlKhpE4R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8163
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVGltIEhhcnZleSA8dGhh
cnZleUBnYXRld29ya3MuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBPY3RvYmVyIDE4LCAyMDIyIDM6
MzEgQU0NCj4gVG86IEFobWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+DQo+IENj
OiBBbGV4YW5kZXIgU3RlaW4gPGFsZXhhbmRlci5zdGVpbkBldy50cS1ncm91cC5jb20+OyBTaGF3
biBHdW8NCj4gPHNoYXduZ3VvQGtlcm5lbC5vcmc+OyBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVu
Z3V0cm9uaXguZGU+Ow0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgZGwtbGludXgtaW14
IDxsaW51eC1pbXhAbnhwLmNvbT47IFBlbmd1dHJvbml4DQo+IEtlcm5lbCBUZWFtIDxrZXJuZWxA
cGVuZ3V0cm9uaXguZGU+OyBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+Ow0KPiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IEp1biBMaSA8anVuLmxpQG54cC5j
b20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjMgMS8xXSBhcm02NDogZHRzOiB0cW1hOG1wcWw6
IGFkZCBVU0IgRFIgc3VwcG9ydA0KPiANCj4gT24gRnJpLCBPY3QgMTQsIDIwMjIgYXQgNzoxOCBB
TSBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPiB3cm90ZToNCj4gPg0KPiA+
IEhlbGxvIEFsZXhhbmRlciwNCj4gPg0KPiA+IE9uIDA1LjA5LjIyIDA5OjM3LCBBbGV4YW5kZXIg
U3RlaW4gd3JvdGU6DQo+ID4gPiArICAgICBwaW5jdHJsX3VzYjA6IHVzYjBncnAgew0KPiA+ID4g
KyAgICAgICAgICAgICBmc2wscGlucyA9IDxNWDhNUF9JT01VWENfR1BJTzFfSU8xM19fVVNCMV9P
VEdfT0MNCj4gMHgxYzA+LA0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIDxNWDhNUF9J
T01VWENfR1BJTzFfSU8xMl9fVVNCMV9PVEdfUFdSDQo+IDB4MWMwPjsNCj4gPiA+ICsgICAgIH07
DQo+ID4gPiArDQo+ID4gPiArICAgICBwaW5jdHJsX3VzYmNvbjA6IHVzYjBjb25ncnAgew0KPiA+
ID4gKyAgICAgICAgICAgICBmc2wscGlucyA9IDxNWDhNUF9JT01VWENfR1BJTzFfSU8xMF9fR1BJ
TzFfSU8xMA0KPiAweDFjMD47DQo+ID4gPiArICAgICB9Ow0KPiA+DQo+ID4gSSBhbSB3b25kZXJp
bmc6IFlvdSBjYW4gbXV4IGZvciBNWDhNUF9JT01VWENfR1BJTzFfSU8xMF9fVVNCMV9PVEdfSUQs
DQo+ID4gd2h5IGRpZCB5b3UgZGVjaWRlIGFnYWluc3QgdXNpbmcgdGhlIGhhcmR3YXJlIGZ1bmN0
aW9uIGhlcmU/DQo+ID4NCj4gDQo+IEFobWFkLA0KPiANCj4gVGhlIElNWDhNUCBVU0IgT1RHX0lE
IHBpbnMgYXJlIGludGVybmFsbHkgbm90IGNvbm5lY3RlZC4gSSBjYW4ndCByZWNhbGwgd2hlcmUN
Cj4gdGhpcyBpcyBtZW50aW9uZWQgYnV0IGR1ZSB0byB0aGlzIHRoZXkgY2FuIG5vdCBiZSB1c2Vk
IHRvIHNlbGVjdCBob3N0L2RldmljZQ0KPiBtb2RlLg0KDQpUaGVyZSBpcyBubyAqT1RHKiBibG9j
ayBpbiBpTVg4TVAgSFcgZHVlIHRvIGR3YzMgSVAgdXBncmFkZSwgdGhlIE9URyBJRCBwaW4NCmNh
bm5vdCBnZW5lcmF0ZSBhIG5vcm1hbCBVU0IgaXJxIGZvciBob3N0L2RldmljZSBzZWxlY3Rpb24s
IGluc3RlYWQsIHdlIGNhbg0KdXNlIEdQSU8gZnVuY3Rpb24gdG8gZ2VuZXJhdGUgSUQgc3RhdGUg
Y2hhbmdlIGV2ZW50IGZvciBpdCwgdGhpcyBpcyB3ZWxsDQpzdXBwb3J0ZWQgdmlhIHVzYi1jb25u
LWdwaW8uYyBsaWtlIHRoaXMgcGF0Y2ggaXMgdXNpbmcuDQoNCkxpIEp1bg0KICANCj4gDQo+IEJl
c3QgUmVnYXJkcywNCj4gDQo+IFRpbQ0K

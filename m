Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AED1D66D427
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 03:15:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235063AbjAQCPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 21:15:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233746AbjAQCPg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 21:15:36 -0500
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2040.outbound.protection.outlook.com [40.107.21.40])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 821E7222D6
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 18:15:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XlDZiw8b7hy2SX1uH403FN5V1MwGjMvk8UQrx3LUvP8XbldaXT5xES3bytQr8bHVQ7gavJHB6okyv/hVhOWeiePNhN5ggho129QMdGjpCoQmQROSPPqwcVlPi3R0hQm2mYHwzZQeYU/K5YH1CYJ/6ba4IgPru957ryKbxxnMiIDa/SLi6KSPRIK0txwwiMPIzSfhlKAn/yU68aDaHc1WJidnc4bdq99uMu8CPfsBGH14SnVEmKpTVoBp0a2hjFUnPXiyICPLJszy+vyp+/bVKZyDZNP7jTRYG958+J4JQe/uaW6b2dczazMGuHzgcOn1Ijtu+vI+U/upDgLk06v7rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=csXyYAKeh460EM6jOrMG4jZqNCsHbVANwKvlNgfhZHw=;
 b=fptOHlyjnj3MdwxpWHP1Yc33CGohFfRwxfRaGL+FnxlIzfWEZjl6ZW5Uu7UsAG7JSe3ijq6/j3vVMtUE0+qeBOHQTqqPyy1298bv0lpt1gP8+uOQBpYGZPEdOzCMGgiOLYIYAbwPiFRl/OIIRweuReG2F2SYPqMw4gH87w0/Q9viqcwzxTBZiAq13rSBPlGRDr+UEeXgD8I3kcRvSsQN1sKOgxbMXwubcxMstddNK2KhaQL4tnAENzHOCC8fFPuNaK2XFQ68MC0TzmCv3TrM8sy2Srgi8NFb3RrdDxlS7VirtdWVJoQYEpqWR+LGXIAEA+2wuQoVFT98DXOuMfdboQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=csXyYAKeh460EM6jOrMG4jZqNCsHbVANwKvlNgfhZHw=;
 b=WJ4Z6YeZbpPawFmUBd1X2QDFGxdEJEETsWAPhGWviOALiUFr2xZPgPYb4S1488hYpbMjVwfzCtLkk5+Eg54U3DBUMh4EldtL+m2spwMM4Xfhqd2mZOguIoPJZTgCKWyVUHpVOZGJpdbw5zBxMPyj5LWHdhdVqc4uNVh9wa7JEIA=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by PAXPR04MB9218.eurprd04.prod.outlook.com (2603:10a6:102:221::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.21; Tue, 17 Jan
 2023 02:15:29 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::49b8:a7b4:676b:2f8d]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::49b8:a7b4:676b:2f8d%3]) with mapi id 15.20.6002.012; Tue, 17 Jan 2023
 02:15:29 +0000
From:   Hongxing Zhu <hongxing.zhu@nxp.com>
To:     Marek Vasut <marex@denx.de>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
CC:     Adam Ford <aford173@gmail.com>, Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [PATCH] arm64: dts: imx8mp: Reorder clock to match
 fsl,imx6q-pcie.yaml
Thread-Topic: [PATCH] arm64: dts: imx8mp: Reorder clock to match
 fsl,imx6q-pcie.yaml
Thread-Index: AQHZKZOsLxWrjL8F+kWSeXtrvn+Pzq6h0vSQ
Date:   Tue, 17 Jan 2023 02:15:29 +0000
Message-ID: <AS8PR04MB86769B69523802F80AC824818CC69@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <20230116101649.46459-1-marex@denx.de>
In-Reply-To: <20230116101649.46459-1-marex@denx.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR04MB8676:EE_|PAXPR04MB9218:EE_
x-ms-office365-filtering-correlation-id: 0f58ad86-9a7b-4bd2-a685-08daf830b475
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WwIcls2jTyEPdkw4ESROlbtveHbhOG3b+PSfC7mbagBAzXDc7r1f1HesTcGpVg7LQFXkfJhOpG5ZBkkeLeNOWQyaxIcOc0gXpvbzojPemoDoeb/jMFnR2GlQ5xGtYFc8WfmfkHOmANfL4W3JNBUeu4QDJtKajAopA+ivyL+lDWKaf8LrtrPmYkzuq6LA+2Xw2xpkReBDHJqXucJabqnIHppDV1ksBhr57kMUcPe+UJ0XZw9Z98uB7z2EnBKR02nb+2dX03gZAeSWVvULQdwta4GQpMLBWbYlj6AaibhhyjjXv7uljsZXC5Fvrp2x8Y0XnmaHlV7KExcMReM2x57QzeF6YkffaCWyryNrTuuMlioXf82U7NnlZN/2PqpjJ5cc0DXMLIrwZCtOn+EK0Ni6oXJl4wN2ofo/4Bu3AlYFd15u/KfKrMZFH+9MRiSSv9Sc67tVxK+bjHtfqiyE3l+/kbsNIkAQhAGV6vGwtZCDoGRMn7dr4rL7GEUK7ySig22F7ILaDOGL1O/eW9wCg93dLqvJe5hGcrLY567hUtgdVavUmF0H2ZabuVfYH4EHaoQEdwe3KjbEV8HXkxa4N2sLH3W1bTFyXZ3PKTAv1JVpBNks1yP/b3Aoxv7NkXCfiCMCm6zoH0n4QWgxjNVXwlAHAPFHHbuzM6bcwlYgxnFpU0vwWfxa5+xw4A0U5H+KT+9tHnWq/ubP41bVQK+G178iJqhDpZ3bfqY0AkFWRJX9BL8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8676.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(366004)(39860400002)(346002)(396003)(376002)(451199015)(2906002)(44832011)(52536014)(7416002)(5660300002)(8936002)(66446008)(8676002)(83380400001)(86362001)(76116006)(66946007)(66476007)(4326008)(64756008)(66556008)(71200400001)(33656002)(316002)(54906003)(110136005)(41300700001)(7696005)(26005)(6506007)(53546011)(186003)(9686003)(55016003)(38070700005)(38100700002)(478600001)(122000001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?eDdPMEROUm1PZ3hUZzJNaHZnTGZ4V3UvQXFCT0kvZDc3cUV5NTl6VlFmSDdJ?=
 =?gb2312?B?NG52enV0WXlLY3pTODk0bDBVdDIweDFucUJuOWxUa2tXNXpITDdXaG1RSm9a?=
 =?gb2312?B?VDhaOUh0QndUV0Z3K3B5alBrZUdTOFoxUTlldGdlTHFrakVEWFYzeFozcWw0?=
 =?gb2312?B?Q2dtWGVXeS9uSkdNRnBJZlVjbEtBYUhxMFpZVkVMaXV6S3pjTU4zWVhnYW1w?=
 =?gb2312?B?V3VNQm96aFF1MEpiNUErWWZzZXN0S1VtL0d3RVZTekJjTG5aN2RYaHhEajJP?=
 =?gb2312?B?SUp6VEUvSnduT3VrTmEzZmdVQlhGTk0wamhSUHV2RTlWWXJVZnlYTWViZ1dt?=
 =?gb2312?B?N0czaXFmQnV1RkJMRHhxMmZGczBueHhzMmpyRm50endtT1VuZ1dJa2I3MlZn?=
 =?gb2312?B?SVNMZnYzWVlzVklxcVplVmFOMDQyc2V1MGlQazRySE55MGpaSGE2NEs0dVdZ?=
 =?gb2312?B?dEdSWlJGd3NFNVRGZkoza1ByRk9NTFI4a1NrRHdRL3NvRm8xWHp0Q1BDaGpF?=
 =?gb2312?B?cEltdWpOT0tVS1gvT09rNm0xOGpKSVhLNmVqdTdwbS9SSEZXZUpnSUhJN1Fa?=
 =?gb2312?B?SnU3TXJrVU1lTkZTYUI1Ynpjb2pJTTFrVi9nbGEwVWdPTEtNa1dsRGFlUWVS?=
 =?gb2312?B?MVR1WnR4ektrbDQzazFvVW12cGFVWkdyUTJJMXJHc0NUbER5VGJJNzJwUHRt?=
 =?gb2312?B?Vkg5Y0JlUmZRMnFIUmo1OGRIK0xIUWVqTVVtRXZzVVZzcjlUMWVnRS9JckIx?=
 =?gb2312?B?aXdVb3M0SGpCTU9tU0dDekloM0phdHNIRTRueDViTUFVZWJRdGZSdFY3ZkNv?=
 =?gb2312?B?WGtzcXZTWU5lZko1YjlFditYMlJxVU9wVnB5OTJIclN4YWN4U0tMdVhnZDFP?=
 =?gb2312?B?U1UvOU5pZWlxUmF3VnlVWXVKcEFiVmhOUXRoVEpHLzk4YklIZGphdk8zc3Ev?=
 =?gb2312?B?WmsweERKNDY2N3RZemZYZEVEUkJHWGtrSEpIMFZKaWZZNEdKTXJYRk12WFNt?=
 =?gb2312?B?T0dzUSsxbHNnSk9ZS3FvTUJmMlF3NkNFWW1nSzlkQ2VYbm91YWkxSjdEVWVw?=
 =?gb2312?B?QXVqdXp4NGtPKzNVWVVnRUgvS2RLYkFaYWgzcnVaVHlDeXZMa1dpNStJMVI3?=
 =?gb2312?B?dzJIT3VLRWhRbmQ5c0pWUWNBZTlWYUEzV1dySnIvTDk4MzBNSmhCM0cyc25Y?=
 =?gb2312?B?emUvdW5PYStXSXZuY1hwZFFNT2FDRUd1SExKTzFtNnAwbFdzb3F5THFJUnEr?=
 =?gb2312?B?Y2grNDQrV0lzT0pZMi9hN0hscXFwQXV6QngwSmFvUkZ3STdXTUdIdmp2czhP?=
 =?gb2312?B?TzIxOWE5eTRUdFpWeXkwQXBzT0FWR21RNi9iRmxHam1KREZaWWNsWkpKRzFR?=
 =?gb2312?B?WVNoVzgwek91TDZjSnNyUnNBNTZzajB4RWZFaVh6THpUa1hPL0F1Ylc1WEpk?=
 =?gb2312?B?TGVGV1lxQjBmczV4R1BxUFd6dE94S0R5bDA1dlBISFRSWmYreHhtcjhwYW9x?=
 =?gb2312?B?YS8zWXVYRnYxdmdRUEhnYjE2VDJaMWplNHhwV1g0QzRnczVPQjFoNWNLdk0y?=
 =?gb2312?B?dVdxWFlHVmE4dFBZanVhMXhYMjlqMURNay8waWtvYnBLbnBCcmUzRHlBL09G?=
 =?gb2312?B?cFM0TjdXU2tFeTV4ekgzbFJnWHhrMFFOUUtVbDJoUWJCVnRZOXd4Z3hBOWw3?=
 =?gb2312?B?WlV3cTR3T3lONlkybWxaa1NacVhMNHF5TklmMUEzeFNHY2VqTDZEVDR6RzZB?=
 =?gb2312?B?NkM3WTRZcXVrQ1NsYXBNWVFxaTJ2dVhlSHhxcEE3cnJsMW0zditRd2Z1bUI3?=
 =?gb2312?B?L00yeXpqbm1mbjcrQjd1M3pBTlRsbDdXZnNhZVhSNzFCR3BEZ0kzcEVQMGo5?=
 =?gb2312?B?SWh2TmFjVElhZUgyTDZsS0FmR2JZSVNUYUYzZUp6SEtYMk95WVdFaFFoSzBF?=
 =?gb2312?B?SUk4SnhlaXpaQjJQampBME1MbGhVWnZ3TmdsYWZFZmcvQVlXNVNwS2FDNUdn?=
 =?gb2312?B?ZlBXU0cvajJFMmRiRmwyWkQ3UlAzRGs4UmsxSUVSREdJM2p1Vm10cU9rQXpi?=
 =?gb2312?B?Y0JJVVoxb2pnUGF0T2RCMyt1TXNoanAxWGdPcEhPZUFuc2x0WmZjVWNmQU9U?=
 =?gb2312?Q?t/xmDp+wCCJoLBmMkhRou4L1x?=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f58ad86-9a7b-4bd2-a685-08daf830b475
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2023 02:15:29.5606
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z2sIy0JapRl0gBzgaqU0U+udM4kIIQqsSsgifa55l1Wpf/W/2IIbcZaAfeqWH2i+8jR/FCp7t/PWE4pBu/nymA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9218
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNYXJlayBWYXN1dCA8bWFyZXhA
ZGVueC5kZT4NCj4gU2VudDogMjAyM8TqMdTCMTbI1SAxODoxNw0KPiBUbzogbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IENjOiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5k
ZT47IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPjsNCj4gRmFiaW8gRXN0ZXZhbSA8ZmVz
dGV2YW1AZGVueC5kZT47IEtyenlzenRvZiBLb3psb3dza2kNCj4gPGtyenlzenRvZi5rb3psb3dz
a2krZHRAbGluYXJvLm9yZz47IExhdXJlbnQgUGluY2hhcnQNCj4gPGxhdXJlbnQucGluY2hhcnRA
aWRlYXNvbmJvYXJkLmNvbT47IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPjsN
Cj4gZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNvbT47IFBlbmcgRmFuIDxwZW5nLmZhbkBu
eHAuY29tPjsNCj4gUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0gPGtlcm5lbEBwZW5ndXRyb25peC5k
ZT47IFJpY2hhcmQgQ29jaHJhbg0KPiA8cmljaGFyZGNvY2hyYW5AZ21haWwuY29tPjsgSG9uZ3hp
bmcgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT47IFJvYg0KPiBIZXJyaW5nIDxyb2JoK2R0QGtl
cm5lbC5vcmc+OyBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Ow0KPiBTaGF3
biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+OyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZw0K
PiBTdWJqZWN0OiBbUEFUQ0hdIGFybTY0OiBkdHM6IGlteDhtcDogUmVvcmRlciBjbG9jayB0byBt
YXRjaA0KPiBmc2wsaW14NnEtcGNpZS55YW1sDQo+IA0KPiBSZW9yZGVyIHRoZSBQQ0llIGNsb2Nr
IGluIERUIHRvIG1hdGNoIFlBTUwgRFQgc2NoZW1hLiBObyBmdW5jdGlvbmFsIGNoYW5nZS4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFZhc3V0IDxtYXJleEBkZW54LmRlPg0KUmV2aWV3ZWQt
Ynk6IFJpY2hhcmQgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT4NCg0KPiAtLS0NCj4gQ2M6IEFk
YW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPg0KPiBDYzogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2
YW1AZGVueC5kZT4NCj4gQ2M6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dz
a2krZHRAbGluYXJvLm9yZz4NCj4gQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hh
cnRAaWRlYXNvbmJvYXJkLmNvbT4NCj4gQ2M6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJv
bml4LmRlPg0KPiBDYzogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+DQo+IENjOiBOWFAgTGlu
dXggVGVhbSA8bGludXgtaW14QG54cC5jb20+DQo+IENjOiBQZW5nIEZhbiA8cGVuZy5mYW5Abnhw
LmNvbT4NCj4gQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXgu
ZGU+DQo+IENjOiBSaWNoYXJkIENvY2hyYW4gPHJpY2hhcmRjb2NocmFuQGdtYWlsLmNvbT4NCj4g
Q2M6IFJpY2hhcmQgWmh1IDxob25neGluZy56aHVAbnhwLmNvbT4NCj4gQ2M6IFJvYiBIZXJyaW5n
IDxyb2JoK2R0QGtlcm5lbC5vcmc+DQo+IENjOiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0
cm9uaXguZGU+DQo+IENjOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+DQo+IENjOiBk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZw0KPiBUbzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnDQo+IC0tLQ0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14
OG1wLmR0c2kgfCA2ICsrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9pbXg4bXAuZHRzaQ0KPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lt
eDhtcC5kdHNpDQo+IGluZGV4IDkwOTMyZGFjNDFmYzEuLjUxMjBjMjBmYzYwMWMgMTAwNjQ0DQo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpDQo+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpDQo+IEBAIC0xMjEzLDkg
KzEyMTMsOSBAQCBwY2llOiBwY2llQDMzODAwMDAwIHsNCj4gIAkJCXJlZyA9IDwweDMzODAwMDAw
IDB4NDAwMDAwPiwgPDB4MWZmMDAwMDAgMHg4MDAwMD47DQo+ICAJCQlyZWctbmFtZXMgPSAiZGJp
IiwgImNvbmZpZyI7DQo+ICAJCQljbG9ja3MgPSA8JmNsayBJTVg4TVBfQ0xLX0hTSU9fUk9PVD4s
DQo+IC0JCQkJIDwmY2xrIElNWDhNUF9DTEtfUENJRV9ST09UPiwNCj4gLQkJCQkgPCZjbGsgSU1Y
OE1QX0NMS19IU0lPX0FYST47DQo+IC0JCQljbG9jay1uYW1lcyA9ICJwY2llIiwgInBjaWVfYXV4
IiwgInBjaWVfYnVzIjsNCj4gKwkJCQkgPCZjbGsgSU1YOE1QX0NMS19IU0lPX0FYST4sDQo+ICsJ
CQkJIDwmY2xrIElNWDhNUF9DTEtfUENJRV9ST09UPjsNCj4gKwkJCWNsb2NrLW5hbWVzID0gInBj
aWUiLCAicGNpZV9idXMiLCAicGNpZV9hdXgiOw0KPiAgCQkJYXNzaWduZWQtY2xvY2tzID0gPCZj
bGsgSU1YOE1QX0NMS19QQ0lFX0FVWD47DQo+ICAJCQlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwx
MDAwMDAwMD47DQo+ICAJCQlhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZjbGsgSU1YOE1QX1NZ
U19QTEwyXzUwTT47DQo+IC0tDQo+IDIuMzkuMA0KDQo=

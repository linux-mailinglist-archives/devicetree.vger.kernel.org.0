Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7243A782174
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 04:33:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231927AbjHUCdZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 22:33:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230437AbjHUCdY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 22:33:24 -0400
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2077.outbound.protection.outlook.com [40.107.241.77])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 462B49C
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 19:33:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nDq7T7Dq0Ycgbice+q90yhum9IsmLhaytByZXMiTvH7pwS/UXm4xf4HjuWkoc70RRFUCEvbg/3kCh+TUNR2aKSt47g3MSbUpja3p/Fj1k0MSW4TkfflEEWz/ApRJSIOJDE14nLy8TtRiVB05qoPMwtiEbx2kcD4aJmV54V5t+Vm00iXnBA1+osG3ddidnrezpaKtn/acUvL1sqpEJtu0Cb132UdsHyIXQANbF6JHJHh4j8nS4HtQwyDU7bzqc8DyAYpP7Tm/H84oA2caVqeFOU+Y5AA7zeVbqvFrMK/Zqu3uHWGusfZYGFD8EnbnaYLm3P9b/e94wfwgQIWLQqSHhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5t+jtQPJBWsnhIyftM16v7j6ZxsOOn3U5eZsmmVSdmg=;
 b=LCAkan3uWQLQ0z20AU8fS+FhL3Nw6l87mjmFhh9F0ZU5jNXVPfM7da2zJ52g0euWfQpyg5Joael9/kxVShxTfgtsSc1D8Vb/QSK+GPOMOueMli2qz5ZerFqLkxJbqrUDY6u73sPFCZ7qfauO/xCWgLVUywDx/o6tf4Jsn2c5KZ7a94WmZBo3YamTf2mOqqA7f9rQiYmqB6Cjk/QvBu27cRQtr91Ktqux+yVaRlAHiCZ2fzF8vHXgmAsPW/zlyNSqjABy+0HkKMOchMG4CsckQGyH6Ik9GzG2BWWNhjbeyhumsu8x9RvggQ3M9vJf0YNi2FK73101WryW+GHPK2V9OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5t+jtQPJBWsnhIyftM16v7j6ZxsOOn3U5eZsmmVSdmg=;
 b=I3IFYb0yYZFneYblTBI7qHzfTYmMgBwp3lfoKkZGLgHCg5MkqpJ0M4P/OdFpRTM3f9LKuo0d/ummnPcP9wvHFEbyL85xw5bZK/xO2gdVTtlMWWSG+CDPjLA9GoTjtmK5WZMAI+/NhuernrIz7CoCJYNH0MXtxzl94H49s3X5VIA=
Received: from DB8PR04MB7051.eurprd04.prod.outlook.com (2603:10a6:10:fd::20)
 by DBBPR04MB8057.eurprd04.prod.outlook.com (2603:10a6:10:1f1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Mon, 21 Aug
 2023 02:33:17 +0000
Received: from DB8PR04MB7051.eurprd04.prod.outlook.com
 ([fe80::6f5f:4224:1dc1:731a]) by DB8PR04MB7051.eurprd04.prod.outlook.com
 ([fe80::6f5f:4224:1dc1:731a%4]) with mapi id 15.20.6699.020; Mon, 21 Aug 2023
 02:33:17 +0000
From:   Ying Liu <victor.liu@nxp.com>
To:     Fabio Estevam <festevam@gmail.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH 1/2] arm64: dts: imx8mm-evk: Add VDDEXT_3V3 fixed
 regulator
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mm-evk: Add VDDEXT_3V3 fixed
 regulator
Thread-Index: AQHZzoZm6F16Pwo1l0eBJT5tTmyjQq/wHSkAgAPqeoA=
Date:   Mon, 21 Aug 2023 02:33:17 +0000
Message-ID: <DB8PR04MB705143050E09106FFA17DF97981EA@DB8PR04MB7051.eurprd04.prod.outlook.com>
References: <20230814081148.4027053-1-victor.liu@nxp.com>
 <20230814081148.4027053-2-victor.liu@nxp.com>
 <CAOMZO5BktVaO1hRgv-WvwY2tV3eUrNnNMiQJKH654K+-AT5ECA@mail.gmail.com>
In-Reply-To: <CAOMZO5BktVaO1hRgv-WvwY2tV3eUrNnNMiQJKH654K+-AT5ECA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB8PR04MB7051:EE_|DBBPR04MB8057:EE_
x-ms-office365-filtering-correlation-id: 4566a961-ed03-46d1-5463-08dba1eefa23
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dIylumVvBpC/Bcr+ffcq1C0LDwEUo8itJTil0OhSKbwtlPKHuGEuhfn+Lr60V2FI8yqRcciPce3rUUvmt+1NdJULcr8vf3rS3ksZt0hGdFUtTPTA2Fw6+ttLHmCW9JtCU97NWMtbNLMVPMEB3u6lQoiE0FcaG9V70R3Tf02diFvvV5flsROXKkZeXNG88PY1AbaoEuzspYJrlBYfLzRGT8a2SUvZ5rMGpCiHH106JsJqdy+fa/9cXD7LeugbBI4/8T5Fs3TU4Vt1vT7WB7fb/Hf39m1dK+k/Np9chlXiaK/LhclzP7kRNp7r2YNL9jumtRiX5ENXzMjI+s3dDSG/u4JL8Z5Z4/cu513E1DCcTveZIIDrwSCNgJnSFkB80g4uEyrD7TMSE0wvMMqO2onvndga3RKIJYtg5riyzRJ5XaoOLXk42UFdHG72k1tenkbQCCX9M4pwf91boVKnPnFyeVdT1kWOL2i2bHJpepV5/dnjr/MZUC9bVon4Uc7ECxZjMtFR3H6PZEskYWVsbLXauN54SbWkmJS/K8crJWyg5A+ZpgJT4sa4cetGkScP46uYKnhQcKv6ML+cbzx0vo/KBySCuqAq9bCWpkpQEVlKzi9cxnuyqZ6DOn5QCfVLXeXia7s0J102D9AznK+8Y9CzJg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB7051.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(376002)(346002)(366004)(39860400002)(186009)(1800799009)(451199024)(66446008)(66476007)(64756008)(6916009)(54906003)(76116006)(66556008)(66946007)(316002)(9686003)(8676002)(8936002)(4326008)(41300700001)(122000001)(478600001)(71200400001)(55016003)(38070700005)(7696005)(38100700002)(53546011)(6506007)(4744005)(2906002)(83380400001)(86362001)(5660300002)(33656002)(26005)(52536014)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YUdBZ25PdktqMDZtaE9yem1PVWxYZFB6emZaYVhKTUlPcnhWbmo2a0hoUjZ3?=
 =?utf-8?B?aDFzZFdmaGlPUm9NRTQ5Ykl3UW56bis4U1RsUnBPd2JCWXZETGsyRFk4dFp2?=
 =?utf-8?B?OFljYkJ0ZG5aZVVtcGxIUUFtRVFjRnRXWlkvVjRZOVZYajNkd09CbnZ6WGps?=
 =?utf-8?B?VnB5aXFTUmNZUnVYdTAxYlZWWkU1bW5hOVE5NjlIVmp0NzI3Y1hObmdQd3pm?=
 =?utf-8?B?cHc1NlZ6TjJvM3BDdWlvNUNNV2hTRUxua1hlRURuNWdwVkZWUGlqVXdnSkdk?=
 =?utf-8?B?MlppUVRPQ3JqZkxrQkJLdTd6bnJ3MXJlMUViZnEyY2RPTmx6eThnL0xhcDZn?=
 =?utf-8?B?bFYzZlVzUzhRdUpXalg1TjdzMDlSelpUYit4Wlo3cVNiMnZUdHpsSWtGdVps?=
 =?utf-8?B?RGxzMzBCcXZEY3J0R0NuMnlwa2Z6VlZzQmIxY3VDRFNlZGpOWkFTSkc2UzRS?=
 =?utf-8?B?TG95RUc0ZVdYMnl2SnNxdjArYUNqUTVmWTFKN0syQ3gvUmJENlpiTGkzUnh5?=
 =?utf-8?B?VUFEQ2RDV3QydTErcm51MG8vejg5Nlg0RXd0RWFyNklNWGVHOGxTS2RtMERU?=
 =?utf-8?B?RUJGZW1lbXBmQlNDSE5hdVhVczl6WDNGVVNpUWZVM005UWlsbnYzVExqS2NC?=
 =?utf-8?B?ZCtOZ3gyOStFQ1cxSk5aT3BHOGt6dzh0WHRNSnhhZ0xVa0F2Z1RERVZ4Z012?=
 =?utf-8?B?aDljR0ttRmdGTVhpNHBzc2llaGxQOWpJNWZrNFRtWE52c2VTWGFITXlYRWVh?=
 =?utf-8?B?amNPLzN4bkxOc2FNTXNVbFJBM1kyenU5RFRvUjBUR1Q4RTNXOEJweU8xRHdZ?=
 =?utf-8?B?Nk9aQXIyUzVua255S1huQVNkQWorUVh6d3RBSTJJM3Y1UlFOODVOZGtjZXc2?=
 =?utf-8?B?K3Z5U0VOdXdXN2RFTEU2WjhaWWh6di93Vk5IendJWGtKZC9oK1lDV2lDV1dZ?=
 =?utf-8?B?S2ZGMDBINGxWNThVNnFNUEY0RFNEcEJYdnNkY2J4RTU3eFAxakk4Qms0N01v?=
 =?utf-8?B?WUdNeWh5QVh2MzNZTGY4dHZHQldRZ2t0VmVpR3c0cWhGbUhxK0hmb1R2V3Yw?=
 =?utf-8?B?LzduUEpJZGszN1dSb3dKUElDeGVnVTBNY2NmdTBkdUkyWEIvQUhmRmRkb3dF?=
 =?utf-8?B?VUY0SEh4aHp4TFRHdy9uT2N2d2htT3ZwWlkwVVdLSGRUY3g2aElFSkdYZ2hP?=
 =?utf-8?B?YVNZdGIzTnA4Z3VFeDQ4VVZONlpiQ1phVmRlWXVVRXIwa0RaV1NDNllFaENC?=
 =?utf-8?B?UVllNXh2MXluTUs4a0RuQytSQlRrajIyOEQvV05xbU40UkdHdXlJSVE1RlRy?=
 =?utf-8?B?aHRtQUNubHp4MWJKdVhjSkFRQmpIbGVFUE1rMEZnSEdkMVVoaXhhamFIRjRi?=
 =?utf-8?B?UDZTTTZNZWhldmdDZlQrOUpkKzZ2VWxYQWJDaXFGNUEvVVZrWDBqaS91THVo?=
 =?utf-8?B?N3NFRnlzRmJ2R2ZJbjNHSEdVTE9MbzNmYTFmdEVxMnlITmc3T045Q3c2aHBY?=
 =?utf-8?B?SGFkR3o0cmh1Q0JmaGVwWWtZamJVc241eTlwaXV6SXg3S3gvcHBuNkY1ekNk?=
 =?utf-8?B?QTUrc0kwMjhLOUp6SlR3d0d5MVlucG0zSkhZSUp4VTBZOXBmOTZwQWY4S0dr?=
 =?utf-8?B?YllUS0Fyb1NOQ0JkNW5ZcWovUW5GbkFucjk4MEU0YnQ4cHVvQmkzUHdDWjBs?=
 =?utf-8?B?bFBxL2ZMVmg4NGxtUVV5TGxxK1oxYm5pZ0NkdFhwcy9xRWZJakFocngyNjNP?=
 =?utf-8?B?ZXhQcE50WU5TSVhyNGN2bllDMzVZOXhRakZPRnNNZkxubnN6UndQQUVjbnZx?=
 =?utf-8?B?eUcwZE1tdUNBT3N5Z3MrYklFVFdid2w0YWQ1VjY1Z2d0VlkyUHVRVjQ4K29z?=
 =?utf-8?B?K00zSkUyMGtLM2JlRUs0azg2eEJkVW9VdGt3N0pMZlNOZXQ3bTB4MGcvZ1Vv?=
 =?utf-8?B?QktRU3FyQUFSdHJrUGhmcWxpSzBDUC9YUEpidzJYNzRzSjJaaUlPSTFxVWRT?=
 =?utf-8?B?RmhVZUpTUEZZUTU2cHJzYmRMS01LMVRIN0VDSng5d1RRb2RyQW9XeW9XL01n?=
 =?utf-8?B?bS90Q05SZTBJazU0citDSXduZWpHK0NRN1BOd1JsN24zUklhbmJGQmJ5dWRC?=
 =?utf-8?Q?xOZM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB7051.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4566a961-ed03-46d1-5463-08dba1eefa23
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 02:33:17.3963
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kTTUvfkM+x/vgFyttyYEsQoOGk++89LTlg1CZ5AXDwIwThqRD0b0cZQT7WW3PTHr9pGBVr/NcS59ukHwA0IOkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB8057
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gRnJpZGF5LCBBdWd1c3QgMTgsIDIwMjMgMTA6MDYgUE0gRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2
YW1AZ21haWwuY29tPiB3cm90ZToNCj4gDQo+IEhpIExpdSwNCg0KSGkgRmFiaW8sDQoNCj4gDQo+
IE9uIE1vbiwgQXVnIDE0LCAyMDIzIGF0IDU6MDfigK9BTSBMaXUgWWluZyA8dmljdG9yLmxpdUBu
eHAuY29tPiB3cm90ZToNCj4gDQo+ID4gKyAgICAgICByZWdfdmRkZXh0XzN2MzogcmVndWxhdG9y
LXZkZGV4dC0zdjMgew0KPiA+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRv
ci1maXhlZCI7DQo+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gIlZEREVYVF8z
VjMiOw0KPiA+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAw
MDAwPjsNCj4gPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzAw
MDAwPjsNCj4gPiArICAgICAgIH07DQo+IA0KPiBCb290aW5nIHRoZSBkdGIgd2l0aCB0aGlzIGNo
YW5nZSB3aWxsIGNhdXNlIHRoaXMgcmVndWxhdG9yIHRvIGJlDQo+IGRpc2FibGVkIGFzIHRoZXJl
IGlzIG5vIGNvbnN1bWVyIGZvciBpdC4NCg0KU29mdHdhcmUgY2Fubm90IGNvbnRyb2wgdGhpcyBy
ZWd1bGF0b3IgYnkgYW55IG1lYW5zLiAgSXQncyBvbiBvbmNlDQp0aGUgYm9hcmQgaXMgcG93ZXJl
ZCBvbi4gIERvIHlvdSBtZWFuIGl0IHdpbGwgYmUgZGlzYWJsZWQgaW4gc29mdHdhcmUNCmxldmVs
IGlmIG5vIGNvbnN1bWVyPyAgSWYgdGhhdCdzIHRoZSBjYXNlLCBpcyB0aGUgZGlzYWJsZW1lbnQg
aGFybWZ1bD8NCg0KPiANCj4gSSBzdWdnZXN0IHNxdWFzaGluZyBib3RoIHBhdGNoZXM6DQoNClRo
ZSBwYXRjaCBsb29rcyBzZWxmLWNvbnRhaW5lZCB0byBtZS4gIENhbiB3ZSBrZWVwIGl0IGFzLWlz
Pw0KDQo+IA0KPiBUZXN0ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4N
Cg0KVGhhbmtzIGZvciB5b3VyIHRlc3QhDQoNClJlZ2FyZHMsDQpMaXUgWWluZw0K

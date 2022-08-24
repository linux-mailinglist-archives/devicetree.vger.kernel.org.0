Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 711AD59F75B
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 12:21:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236745AbiHXKVe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 06:21:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236692AbiHXKVd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 06:21:33 -0400
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2046.outbound.protection.outlook.com [40.107.104.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB8C02AF2
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 03:21:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=odsoim4ZtgapuT67D6s6vuJ1ErD8EyoXHC+rKrtPy16yAjUyOkUYbGsgzcsfpNCkLD/kGIl31bX87UFJFbiF2cA2cSOVgWVWro6MnLOkPT1zIPvKjxV2KrycB0N2f4r8FTIPQXq/f7znVGMoUeNh8wL9hGey6bMur7FFPMuutdUcbFp5Z3Ll1lujihXo87GL3Oi+nL+JdsgpRJus2YxQeugkd0yX3X4V3bx4C4WS5zIEcXuiMVc/0L0UzSnBWG1SR/I17fwtDKPgyYSMH9lw3y3PfwqEILlJOd60MJYFfbB6u8Pz+uDGpR/drLmtJkWkYmHFqivFdPTxP9JONJlSXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2ulPNwXB6ZC+UNl5T0fr97JkR/gQpDwG/hQqF/DCdC8=;
 b=eWPCqhagAmgBty7ebbCjpDCMi4sUqko1OvqHaKvmzA3OkRmSwZw5wYXPQ+pFhFygLUk0WpbADuDEez4vTDvbu1QJXr8fw4mHEgpbfAEfZeogpea25HB+IxJFA8mMwSsY4PsHjNLSXr0d0uT7WqdYijIhUuhZGsEkuV+EggtOZ0OEerDAI7Oa2GxjuaVUU/i5LOo/+nfKZTwjo+CFyldEztW4/zWSau/5iY4s6kCet9iDTY4sVanaKrZb+O5qcC1jxJ0lrDVsmwG2pd9sbNBEleWJ96eRCeWRpJ4b4mdSNJnJndgSl+F4jJKdz/gtWMAF1zXpWJMi8z28KENV3/4KrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2ulPNwXB6ZC+UNl5T0fr97JkR/gQpDwG/hQqF/DCdC8=;
 b=oqCAa8Bnsl1mVv4WbZC9AK2i2eiPxEIgcjjTIH27qdJ3DfP5WBHnozFGoDoVEYGNqba53DyH5hQXcYrvUJrglZVo1y0cXzLXGcI/f2aahRKbGzuPxw+Pzkebb06W2AZE3vEWfMPVA8iGXv2pyIj7xV09ku6+UUBv7vQGqd2pzTA=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AS8PR04MB9144.eurprd04.prod.outlook.com (2603:10a6:20b:44b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.22; Wed, 24 Aug
 2022 10:21:29 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::1c65:f6a7:bc4:eb15]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::1c65:f6a7:bc4:eb15%6]) with mapi id 15.20.5546.022; Wed, 24 Aug 2022
 10:21:29 +0000
From:   Jun Li <jun.li@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>
CC:     "marex@denx.de" <marex@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Peng Fan <peng.fan@nxp.com>,
        "Markus.Niebel@ew.tq-group.com" <Markus.Niebel@ew.tq-group.com>,
        "laurent.pinchart@ideasonboard.com" 
        <laurent.pinchart@ideasonboard.com>,
        "paul.elder@ideasonboard.com" <paul.elder@ideasonboard.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "aford173@gmail.com" <aford173@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] arm64: dts: imx8mp: correct usb clocks
Thread-Topic: [PATCH] arm64: dts: imx8mp: correct usb clocks
Thread-Index: AQHYt5NgTN2Wv3g2Q0uWAIYIi/pTZK29v50AgAAPN1A=
Date:   Wed, 24 Aug 2022 10:21:29 +0000
Message-ID: <PA4PR04MB9640F20CAB1203D0947ED8FF89739@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
 <cee9dddeab973d8b2bebbbcbde8eb06d007758d5.camel@pengutronix.de>
In-Reply-To: <cee9dddeab973d8b2bebbbcbde8eb06d007758d5.camel@pengutronix.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cbb1e0bd-d73b-4dc1-bac8-08da85ba68f0
x-ms-traffictypediagnostic: AS8PR04MB9144:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gIwhkrHZMsqQzrxpJaMgvpHVxI1vCT8nDrEyzOWkNzQV2eF20dDcZIPY42QjuZQfNS9Nvu9VXZHkk4aJcDCaCQ5Jn9+bZSEosDMznhZgSrgqicJf4NpJias3/qeA5ElMRhXX5uHUZRreKYARFoYhdmsQVwuweVSgQRM+P+7kLwdvKV1Q8r83/J0ddHd+232xgMc3kW2OEUvfHZ/F7byAv4G+g8uTNMHtYnAT75hUC5UDz708iS5pxV76DjveFoofpAO9vP5qfZrK4jvLAi8kzvMKQTt9J7Oye8pXj4OBJxZ1hsBtLt+sUXIrSRr2OMKNO0HlWb4SArZ59NTiD+iHidPZXxgYz7oDKhV/aOkB4bMr8Rc2fWmqX3QBZol4hIQ0ceQQjNSGyioXTnrdI9U/c/Pg4nz4hl5ByFHuJX9mp3N1Quqq8em2BsPAC5JKwglXeDfgiOqIBQdRQoOSFRp5F5VAloRy7z92tiL+UVWaRSeNrx+CnT2kd1Zv9B7OWYrR8e1YnErn1PmItq0kIUNtuE2IbO9cDIslxhEVPBRzhVDGXJa4rSLRlX61fY9T4gwPKQdStzIKpngLx09vBZe7MvB2v86l8BAvjyKZ6C7P+ED7g0M+W6f5xKBU6YGjqwq0dx07ZUS7ctmaI2QXIoDnvaSngXu1u4USBLVEZajJWgS4fifdoXSq0vK5D3Shy+qIfnnXC35xfz0Owe78xQvIOP8IkN6YqWv/aL79ApgZGb3sEpDplHAtzqLXW+4f27QW8oEoI1KKn2s0jZRbYT0HCAm6aXMlR2JETs0me4+2P97Z0AF8AB2P3ZBCu8LUiGf7
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(346002)(136003)(366004)(396003)(376002)(4326008)(64756008)(66946007)(86362001)(66446008)(8676002)(66476007)(66556008)(38100700002)(110136005)(54906003)(33656002)(122000001)(76116006)(38070700005)(186003)(6506007)(26005)(9686003)(71200400001)(53546011)(41300700001)(478600001)(966005)(7416002)(7696005)(316002)(55016003)(2906002)(5660300002)(44832011)(8936002)(52536014)(83380400001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QlYzTWpHRXYxc3pOYVkwOWJmR1VHUmw3aEZjd1I3TEpqODc5T3lBc2Z6TFZX?=
 =?utf-8?B?WXlWaTFNWFpIUE5nYzBaa2FhRWhWWDF6bnVPVGljd1dUcEphWnM4WjJWZVhV?=
 =?utf-8?B?WHVTVlBNa0VLZ0RLRFlxRGFMaXl2dUUvRGVQalJPQkFHZ2thb05WdlRXWTlr?=
 =?utf-8?B?TWFtUzlVbkJxMU5ETUIzZjJad2V3cmltdHlYSi9oeVptS1BGU2gxVjVwTlNO?=
 =?utf-8?B?b2RkUGFvK2NTdDhzQjYvbFdBSTIraEcwOThBRHBrSHZSK3VTNVBERWdvVGVY?=
 =?utf-8?B?UkJ2VVhDbmRyOEliWi9ERnVqekJ1M0JyK0FqR3MzRmIwZ3RwNDkweTQ2ZFpN?=
 =?utf-8?B?ei83N0wyZVdrRnhUcUxqSXU5dSs0MEl6Qkg4K3R1VHVkL2lNSllIc1RnL2M4?=
 =?utf-8?B?WmJWYkkxU3gra3cxaFQ3aHpSNUNOaEU1L2c4bVZyam5oNSswNWhtZHU0a0RS?=
 =?utf-8?B?U0N0L3JCaFlEQllqQS8rdW0rMHYrdnR3eStLVnU2Z2llcGpiSzNNRjlmcHkz?=
 =?utf-8?B?c0Z4YWl5WUIwdkU3NFN1L24rSTJ2anEyV0VEVkZWS2VPajJCZEFpWnVOL3N6?=
 =?utf-8?B?U3VkRlVjS0hySGMwS3pFOG1IalN3TnVJNTVtbWllSFJjUlpIcFpINEwxSjh1?=
 =?utf-8?B?VWwwYy9lK25BSzIvMFdxQjNjNFdOSnVqK3ZlVG9EV05JUVVQSlpjZGsxekxq?=
 =?utf-8?B?cGluUGtSSjhQMy9nVUs1TmVURDY2cmIwS1BNd2txNmE5a3Vkcld2cTgxT3J5?=
 =?utf-8?B?NTRvbjQ2VWdmVTdjV3k5bXV1dSt2YWpvUzI2N3plbmEvWktyclN4MFFUV3hy?=
 =?utf-8?B?Q01BRGF4NzdTVjdmQVBXWGdQU1AzL3ErNk96RVhPbldSeFVBN2VFdTd3U2JD?=
 =?utf-8?B?aXE2Vko0QldrSUsvUFYxbHhHZ0FXR2ZtKzlYS25MVnF1d2d2MExjcmYxYlk5?=
 =?utf-8?B?SzU1WmFWSzJLcTVBU2FUd2pseTA5SFdGdnEzdUxWN0tvbXkyay9CWSt4cU5a?=
 =?utf-8?B?V3I3dGlhZTBVZnNZRk1SYW5UQjZydGJCdU9BcXhJWHllQ2RzNDdhazZkdTVh?=
 =?utf-8?B?YXBpd1Q5bXZWZEhYWmFuTEd0cWlQbGEzaXFCQWVjcWJOdGhqUzhoT2lBNVVR?=
 =?utf-8?B?SjZaVERKenRGZGVVeXZFUTBWWlJZSms5S1Urc2VReCt4U2JmcHB3cWFOM1Jo?=
 =?utf-8?B?S0J4bVNQdlZ4Z25makY5MEtSM3Q5ZkdWVnU3anpoTGxVN2xwTEl2ZFFEcks1?=
 =?utf-8?B?WjNFRHcxY3Q0ZkJ3cS9lUS9CRytGTG9aaXJoWGIyWHl0UEN0NmpmSmFoU0FD?=
 =?utf-8?B?N2lFOTJYMGhCS2lSK0Y4RDkxNjI3QmJqYVVqM2RGSm9pdnlpSDNFZFVaZUtr?=
 =?utf-8?B?RmJEK1NRNlpkUlZwRzdjMHQ0UXNpWmxFQ0gxSlQyMEFBSExCU05IY2lCU3Zk?=
 =?utf-8?B?czM4NE5iZWl3bnBoODVkeXdibjFoalJjS3E5R1ZITmtxUWpZREVhRzdteTdt?=
 =?utf-8?B?VW1YYjF1UlU1UkFDSGFiRWJXbGJ1YytoWkZrVXg4NEFJaTBUQkNRbDdsbVMv?=
 =?utf-8?B?NVBXYUZZR2g2UHM1aVdQMlpYZ3J1SWptTHQ5UW42amcvMkpET25aOEFYWVBU?=
 =?utf-8?B?amlKcHlvUStrUTY0eXkrSm9uTWRtQjdvWXF5elRZYk1ES0lFWTBoT29Pbmpy?=
 =?utf-8?B?SUR1VlJJTmw2TUxiRThPVSsyT1gvOERpTmhnaDd1VHdWaEh2OERhckF0SUlJ?=
 =?utf-8?B?UDhVT3ZScjFZRWhqWklGT3E5WWxUazdxb2hiQ3VhMHVrcHZHd0hEMFpvdW84?=
 =?utf-8?B?Skp0WUhQK3ZVdC9nVmhQVWcxelhONlp5M09MaG93dHdyYnQreHd3M2xLcE5a?=
 =?utf-8?B?V2gwdmNZS0c2SldpYmlzTlA2WUxMUzl5bFMzeU5FS0JzWXUrbkxMdGduNVZJ?=
 =?utf-8?B?eUgvaVF0S1VERytwVGlselNhSVpXZlVkb3lidWU4Yld3bFFLcVhoNzBZR2hW?=
 =?utf-8?B?Z083UEZPWHh5ZmVISFVwZFR4bnZTaDIxZ1FFalB0UFZzZTJrbDFvNnNuTUhR?=
 =?utf-8?B?aFIyNmlrdGovT2xlSGlLOFNpL1EwS1c4eWtXWmIxSUxiK2FYSUdFLzJFSVdM?=
 =?utf-8?Q?ByWs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbb1e0bd-d73b-4dc1-bac8-08da85ba68f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2022 10:21:29.6896
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BOY0BRT3Lv9dj3o2WSLt5QD94F/rRYVrBfRPuA8fIol7DzVUaqJEATtTxilICKYf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9144
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTHVjYXMgU3RhY2ggPGwu
c3RhY2hAcGVuZ3V0cm9uaXguZGU+DQo+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDI0LCAyMDIy
IDQ6NTYgUE0NCj4gVG86IEp1biBMaSA8anVuLmxpQG54cC5jb20+OyBzaGF3bmd1b0BrZXJuZWwu
b3JnOyByb2JoK2R0QGtlcm5lbC5vcmc7DQo+IGtyenlzenRvZi5rb3psb3dza2krZHRAbGluYXJv
Lm9yZzsgcy5oYXVlckBwZW5ndXRyb25peC5kZTsNCj4ga2VybmVsQHBlbmd1dHJvbml4LmRlOyBm
ZXN0ZXZhbUBnbWFpbC5jb20NCj4gQ2M6IG1hcmV4QGRlbnguZGU7IGRldmljZXRyZWVAdmdlci5r
ZXJuZWwub3JnOyBQZW5nIEZhbiA8cGVuZy5mYW5AbnhwLmNvbT47DQo+IE1hcmt1cy5OaWViZWxA
ZXcudHEtZ3JvdXAuY29tOyBsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb207DQo+IHBh
dWwuZWxkZXJAaWRlYXNvbmJvYXJkLmNvbTsgZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhwLmNv
bT47DQo+IGFmb3JkMTczQGdtYWlsLmNvbTsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGFybTY0OiBkdHM6IGlteDhtcDogY29ycmVj
dCB1c2IgY2xvY2tzDQo+IA0KPiBBbSBNaXR0d29jaCwgZGVtIDI0LjA4LjIwMjIgdW0gMTY6MTAg
KzA4MDAgc2NocmllYiBMaSBKdW46DQo+ID4gQWZ0ZXIgY29tbWl0IGNmN2YzZjRmYTllNSAoImNs
azogaW14OG1wOiBmaXggdXNiX3Jvb3RfY2xrIHBhcmVudCIpLA0KPiA+IHVzYl9yb290X2NsayBp
cyBubyBsb25nZXIgZm9yIHN1c3BlbmQgY2xvY2sgc28gdXBkYXRlIGR0cyBhY2NvcmRpbmdseQ0K
PiA+IHRvIHVzZSByaWdodCBidXMgY2xvY2sgYW5kIHN1c3BlbmQgY2xvY2suDQo+ID4NCj4gU28g
d2hvIGlzIGtlZXBpbmcgSU1YOE1QX0NMS19VU0JfUk9PVCBlbmFibGVkIGFmdGVyIHRoaXMgY2hh
bmdlPyBXaGF0IGlzDQo+IGNsb2NrZWQgYnkgdGhpcyBhbmQgaXMgaXQgc2FmZSB0byBkaXNhYmxl
IHdoaWxlIHRoZSBVU0Igc3Vic3lzdGVtIGlzIGluIHdvcmtpbmcNCj4gc3RhdGU/IEkgc2VlIHRo
YXQgdGhpbmdzIG1heSBzdGlsbCB3b3JrLCBkdWUgdG8gdGhlIHNoYXJlZCBnYXRlIHdpdGggdGhl
DQo+IHN1c3BlbmQgY2xvY2ssIGJ1dCB3ZSBzaG91bGQgcmVhbGx5IHRyeSB0byBtb2RlbCB0aGUg
RFQgYWZ0ZXIgdGhlIEhXLiBFc3BlY2lhbGx5DQo+IHNpbmNlIHRoaXMgaXMgYSBBQkkgYnJlYWtp
bmcgY2hhbmdlIGl0IHNob3VsZCBiZSByaWdodCB0aGlzIHRpbWUsIHNvIGEgdW51c2VkDQo+IFVT
Ql9ST09UIGNsb2NrIGxvb2tzIHZlcnkgc3VzcGljaW91cy4NCg0KVGhlIHJlbGF0ZWQgY2xrIGRy
aXZlciBjaGFuZ2UgaXMgWzFdLiBJIHNob3VsZCBwdXQgaXQgaW4gb25lIHBhdGNoIHNldC4NCg0K
QmVmb3JlIG15IGNoYW5nZSB0aGlzIHNoYXJlZCBjbG9jayBnYXRlIGlzIGRlZmluZWQgb25seSBm
b3IgVVNCIGJ1cywNCml0IHdpbGwgYmUgb2ZmIHdoaWxlIHN5c3RlbSBzbGVlcCBldmVuIFVTQiB3
YWtldXAgaXMgZW5hYmxlZCwgdGhpcyBjYXVzZQ0KdGhlIHN1c3BlbmQgY2xvY2sgaXMgZ2F0ZWQg
dG9vLCBzbyBVU0IgcmVtb3RlIHdha2V1cCBjYW5ub3Qgd29yay4NCkluIGNhc2Ugc3lzdGVtIHNs
ZWVwIHdpdGhvdXQgVVNCIHdha2V1cCBlbmFibGVkLCB0aGUgc2hhcmVkIGdhdGUNCndpbGwgYmUg
cmVhbGx5IG9mZi4gU2hhcmVkIGNsb2NrIGdhdGUgaXMgbWF0Y2hpbmcgdGhlIHJlYWwgSFcuDQoN
CllvdSBtZWFuIEkgc2hvdWxkIGp1c3Qgc2ltcGx5IGRlZmluZSB0aGlzIGdhdGUgb25seSBmb3Ig
c3VzcGVuZCBjbG9jaw0KaW5zdGVhZCBvZiBkZWZpbmUgMiBjbG9jayBnYXRlcyh0aGVuIHNoYXJl
KT8NCg0KWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1jbGsv
cGF0Y2gvMTY2MTMyODI2Mi0zODY3LTItZ2l0LXNlbmQtZW1haWwtanVuLmxpQG54cC5jb20vDQoN
CkxpIEp1bg0KPiANCj4gUmVnYXJkcywNCj4gTHVjYXMNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTog
TGkgSnVuIDxqdW4ubGlAbnhwLmNvbT4NCj4gPiAtLS0NCj4gPiAgYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kgfCAxMiArKysrKystLS0tLS0NCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaQ0KPiA+IGIvYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kNCj4gPiBpbmRleCBmZTE3OGI3
ZDA2M2MuLjJmMTg3NzhhMDU3ZiAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9pbXg4bXAuZHRzaQ0KPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2lteDhtcC5kdHNpDQo+ID4gQEAgLTExNjksNyArMTE2OSw3IEBAIHVzYjNfMDogdXNi
QDMyZjEwMTAwIHsNCj4gPiAgCQkJcmVnID0gPDB4MzJmMTAxMDAgMHg4PiwNCj4gPiAgCQkJICAg
ICAgPDB4MzgxZjAwMDAgMHgyMD47DQo+ID4gIAkJCWNsb2NrcyA9IDwmY2xrIElNWDhNUF9DTEtf
SFNJT19ST09UPiwNCj4gPiAtCQkJCSA8JmNsayBJTVg4TVBfQ0xLX1VTQl9ST09UPjsNCj4gPiAr
CQkJCSA8JmNsayBJTVg4TVBfQ0xLX1VTQl9TVVNQPjsNCj4gPiAgCQkJY2xvY2stbmFtZXMgPSAi
aHNpbyIsICJzdXNwZW5kIjsNCj4gPiAgCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE0OCBJUlFf
VFlQRV9MRVZFTF9ISUdIPjsNCj4gPiAgCQkJcG93ZXItZG9tYWlucyA9IDwmaHNpb19ibGtfY3Ry
bCBJTVg4TVBfSFNJT0JMS19QRF9VU0I+OyBAQA0KPiAtMTE4Miw5DQo+ID4gKzExODIsOSBAQCB1
c2IzXzA6IHVzYkAzMmYxMDEwMCB7DQo+ID4gIAkJCXVzYl9kd2MzXzA6IHVzYkAzODEwMDAwMCB7
DQo+ID4gIAkJCQljb21wYXRpYmxlID0gInNucHMsZHdjMyI7DQo+ID4gIAkJCQlyZWcgPSA8MHgz
ODEwMDAwMCAweDEwMDAwPjsNCj4gPiAtCQkJCWNsb2NrcyA9IDwmY2xrIElNWDhNUF9DTEtfSFNJ
T19BWEk+LA0KPiA+ICsJCQkJY2xvY2tzID0gPCZjbGsgSU1YOE1QX0NMS19VU0JfUk9PVD4sDQo+
ID4gIAkJCQkJIDwmY2xrIElNWDhNUF9DTEtfVVNCX0NPUkVfUkVGPiwNCj4gPiAtCQkJCQkgPCZj
bGsgSU1YOE1QX0NMS19VU0JfUk9PVD47DQo+ID4gKwkJCQkJIDwmY2xrIElNWDhNUF9DTEtfVVNC
X1NVU1A+Ow0KPiA+ICAJCQkJY2xvY2stbmFtZXMgPSAiYnVzX2Vhcmx5IiwgInJlZiIsICJzdXNw
ZW5kIjsNCj4gPiAgCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA0MCBJUlFfVFlQRV9MRVZFTF9I
SUdIPjsNCj4gPiAgCQkJCXBoeXMgPSA8JnVzYjNfcGh5MD4sIDwmdXNiM19waHkwPjsgQEAgLTEy
MTEsNyArMTIxMSw3IEBADQo+IHVzYjNfMToNCj4gPiB1c2JAMzJmMTAxMDggew0KPiA+ICAJCQly
ZWcgPSA8MHgzMmYxMDEwOCAweDg+LA0KPiA+ICAJCQkgICAgICA8MHgzODJmMDAwMCAweDIwPjsN
Cj4gPiAgCQkJY2xvY2tzID0gPCZjbGsgSU1YOE1QX0NMS19IU0lPX1JPT1Q+LA0KPiA+IC0JCQkJ
IDwmY2xrIElNWDhNUF9DTEtfVVNCX1JPT1Q+Ow0KPiA+ICsJCQkJIDwmY2xrIElNWDhNUF9DTEtf
VVNCX1NVU1A+Ow0KPiA+ICAJCQljbG9jay1uYW1lcyA9ICJoc2lvIiwgInN1c3BlbmQiOw0KPiA+
ICAJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTQ5IElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KPiA+
ICAJCQlwb3dlci1kb21haW5zID0gPCZoc2lvX2Jsa19jdHJsIElNWDhNUF9IU0lPQkxLX1BEX1VT
Qj47IEBADQo+IC0xMjI0LDkNCj4gPiArMTIyNCw5IEBAIHVzYjNfMTogdXNiQDMyZjEwMTA4IHsN
Cj4gPiAgCQkJdXNiX2R3YzNfMTogdXNiQDM4MjAwMDAwIHsNCj4gPiAgCQkJCWNvbXBhdGlibGUg
PSAic25wcyxkd2MzIjsNCj4gPiAgCQkJCXJlZyA9IDwweDM4MjAwMDAwIDB4MTAwMDA+Ow0KPiA+
IC0JCQkJY2xvY2tzID0gPCZjbGsgSU1YOE1QX0NMS19IU0lPX0FYST4sDQo+ID4gKwkJCQljbG9j
a3MgPSA8JmNsayBJTVg4TVBfQ0xLX1VTQl9ST09UPiwNCj4gPiAgCQkJCQkgPCZjbGsgSU1YOE1Q
X0NMS19VU0JfQ09SRV9SRUY+LA0KPiA+IC0JCQkJCSA8JmNsayBJTVg4TVBfQ0xLX1VTQl9ST09U
PjsNCj4gPiArCQkJCQkgPCZjbGsgSU1YOE1QX0NMS19VU0JfU1VTUD47DQo+ID4gIAkJCQljbG9j
ay1uYW1lcyA9ICJidXNfZWFybHkiLCAicmVmIiwgInN1c3BlbmQiOw0KPiA+ICAJCQkJaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDQxIElSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KPiA+ICAJCQkJcGh5cyA9
IDwmdXNiM19waHkxPiwgPCZ1c2IzX3BoeTE+Ow0KPiANCg0K

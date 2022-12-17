Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDD6F64F82A
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 09:15:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbiLQIPF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Dec 2022 03:15:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbiLQIPE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Dec 2022 03:15:04 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2085.outbound.protection.outlook.com [40.107.8.85])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FDCABC2D
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 00:15:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hTpKjnhbToiCOIl7vU9CPP4c9lgg3D+LuQZPF73ai9cPK0NEgxkH8lwhJ2hjV5gjYGkPZzMnD9HO6Qcy89TrENa8dDd/cg2IBkokbh7YZZBCJILhSH14YXiwgCRBWr30Gz5fNfHzLVTcyFzbG9QKh53KdQq3p3P8KsnosDR36aLKeK9pL7Sc3oY9ct00E/T+7cKAQVmK5wXGvwGHe+IacpX4fjubqKKkiS3rFIo91rYR/JKmsXZcTwDjXi6eQQjiLwQ3UlpT3VeOCPQ+qX97635SZEqx3F30OjHH50ZZ+Gd0JoFucJLGp7NiUuFkTtuY9OUv2bmjDNNzqRoLVa0g1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KfaYk9n2pfzql6AZLROPxrumNdJU67Xnz8oZKrdenAQ=;
 b=X9QI4b8EUe5tQhgIYiorFl8r8e4fphPjbptuXqtEB1xDezzvc7Uf8uZ8OGRKQOEEE6pWv9dn8DyxBytXXaVHmjEWZf2O0ucbBVbjsMhiQkPI7eyPWwgt3HAM0vQk5DKMHj0UAqRnjIITr3lPEHDaEBMVuLSx2dfsOzowDz1xt3Cntwcj3dwCZsio+4i2qKGe8poujgMj3sLW3BUy1vJnII4SIv74Kj9XERM8oq0H1Q7YrAme3AQOJbts/uWhW0RiZepALWT4PXMaCV6mF97hZ+2DQHfN0qUPMdLqhjXO0t9r9etMnBFyMAFmmHAfr5w7NC0QlP9f7ISkkRnpFZS3yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KfaYk9n2pfzql6AZLROPxrumNdJU67Xnz8oZKrdenAQ=;
 b=Obzya+CkOY8yPnM7S2DPvBGkO7keQV9YbgZOewo51xEsfrif46ED/zLpmEs0jJnHbQuVZSpTACFlY8vAd5nwnBYrlQHXIq/w1xAZ+ulkv2GdexJTeK5Msbb4LKJvXivlK6lIb0y4ojfALp7QuYKDMuGI8IS2Ry9N3EmrVUMikKA=
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com (2603:10a6:20b:42b::10)
 by PA4PR04MB9566.eurprd04.prod.outlook.com (2603:10a6:102:26c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Sat, 17 Dec
 2022 08:14:59 +0000
Received: from AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f135:ec2c:8528:d866]) by AS8PR04MB8676.eurprd04.prod.outlook.com
 ([fe80::f135:ec2c:8528:d866%8]) with mapi id 15.20.5880.019; Sat, 17 Dec 2022
 08:14:59 +0000
From:   Hongxing Zhu <hongxing.zhu@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>
CC:     dl-linux-imx <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        "marex@denx.de" <marex@denx.de>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>,
        "alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
        "richard.leitner@linux.dev" <richard.leitner@linux.dev>,
        "lukas@mntre.com" <lukas@mntre.com>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v2 1/4] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock
 cells
Thread-Topic: [PATCH v2 1/4] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock
 cells
Thread-Index: AQHZEK2j9a0uamoSok+/2BAutUQHT65xvSFA
Date:   Sat, 17 Dec 2022 08:14:59 +0000
Message-ID: <AS8PR04MB86765DB52B7C49CAA8B6558F8CE79@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <20221215174942.2835690-1-l.stach@pengutronix.de>
In-Reply-To: <20221215174942.2835690-1-l.stach@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR04MB8676:EE_|PA4PR04MB9566:EE_
x-ms-office365-filtering-correlation-id: b1d3b0f4-4cd4-4e60-fe32-08dae006ca58
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5ul9EURJMzUf0hR5JDnx6domm0cksrQ6C00zpWu1pYWrlHHAFBX8pi7DKhRUvJo3fY1eMi2QN0T4/DG60adJi1z4y9aDY1cB+D+K5bw0xwWyXfBYXDp1gJEz8yGILoWYaXiHV4eiMsBfXf4a5LA9WN7urCEtqop+Kxpr5RO0enCRALAwZcQQzdv55Qc+N2OLwEetURxkU+UMgncPSK5CgiR0M/fQYXFb5f6NW1qTcyYXEvkEllPdYI6Rt4HmhUGeTIumSE5ihqO0h92rqfwd8Z6rwpzrKONQn6EPSndCosHtNj94AbhV7ctSM5k5eV+sMNywjjpl55+UIwTT3XqqnMuq7spJ/p+fRod2VQ675NLbWJE5YasPErZDUcmJi8lToqopmjI0U9iFks2du912IEK03RnYDVUiqKrzxZ0f9GwaXoeDcwDxvt0WhULL9vT2eVneZH0cypaZJqQTaZ2JqiuXYWq8Ioh3u0J1t8otsFZ0jMuFURewv6LY7/s5YpRtT6lIUBeyjhhuITGpXW+/GvOJL/dTI8TCpaiu838zL7zu2NsU8prnbN8+Kw3D2rxHaWY4KvT5zRw5rMeictuMXA1wgZlWTQ1y6H2zbqxlY8pY0Br9Zx3h7a35XXx69dR77RQOffqOycsV5vTjwErcH4w+TFg45RnaLylFI0X1sy0Vo07EtM5WYOzweoeO64Xb3M++eDqZZw5xGG5OUwtyO/Tn/lTo1MjGjKyD0bTqirA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8676.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(451199015)(8936002)(33656002)(5660300002)(52536014)(83380400001)(186003)(41300700001)(55016003)(26005)(44832011)(9686003)(2906002)(316002)(478600001)(54906003)(38070700005)(53546011)(7696005)(6506007)(122000001)(86362001)(76116006)(66476007)(66556008)(66946007)(66446008)(64756008)(7416002)(71200400001)(38100700002)(4326008)(8676002)(110136005)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?UXVabFl2ekYrKzR1dUx0UnNDWXUyS2x4UmRqdHRUcW1WVDlTNU1vS1cxTzJ2?=
 =?gb2312?B?ekZRY2pqdXdHa1VHUktOQy83NURZQUQ3bGhXSEhhY2VFU2laUmR4L0RBMTVL?=
 =?gb2312?B?MUNGZGFHWFlkMm0wS2lZVFF4ZXl4OGdFa0Qrc1pwMnBlY1V5aFZpUFM2UmhX?=
 =?gb2312?B?MUV0bzNpenptaU1pQXMwSDJXaG9wM0t3UEpjc3IzaElmeW0xNjlVeWRLdWk4?=
 =?gb2312?B?UUlJMkJOQ1RmTU9zUU9qSTdWeXlkR214eFlrQnBnOGJwUnB6WXJEcFBqVVYr?=
 =?gb2312?B?T3lpQjU5MW9oQlpKbVNUb3FteVlhdG9Sa3dlc1hVUXJTKzUrc0lwTmJZNUxl?=
 =?gb2312?B?T1dBZVJqcXJKYmd2U2tKdnk2cUtzcitYSVJWdjBnUW9uTmRFZFl6VlNROTlx?=
 =?gb2312?B?SGpmMzVrME44SUtpVXZpREgzRlBGUHA2YXlSa2FhVk90S2E0UHdsTmVrNGRG?=
 =?gb2312?B?UGFCVGs0cjFDeXVlYUw0UndVUHNidk5VNzNpcU1ONDRRdUsreTc0UkYrazgr?=
 =?gb2312?B?TGNnMlFVZEJUK1duWEJyaHhMTUdmQVIvTVUzNVEydXJYcCtrb0NwaFRSaENx?=
 =?gb2312?B?WG90Vm9sd2RMOEl5VStXelNNZUl4UmZzanFGZlNEUWFLcDQ2VEI1SlBQa2l2?=
 =?gb2312?B?NHN2MXFITVltYlVGWWNJT1F3cjI2VUsyVFpqOWZkTGkyc3pBeGhheW5jZVdS?=
 =?gb2312?B?SUF2R2VuTnlJZmxDT2dRL2ZNVjRFczQvUGNXSy9zMFlrTEM2MUcxVzYzbCs4?=
 =?gb2312?B?UUpCdWJRdm9PSTFnTkVEZGRkelI0eGhlSS9EMElTMjJNaFFIVG0wWUlzVEsv?=
 =?gb2312?B?MHIybVVJeUMyTHI3aFA4Si9MdWluZ3lZakk4M25LVWM0bXloOUJyRHFWeXRu?=
 =?gb2312?B?NDNtUS9mcjR6NEdFT2tQVDJKRllONEdWdkxBZHJvNW9rQmxMMXRIT1JuNFpr?=
 =?gb2312?B?dkpnVW9FTWNQSFFsV3VFMnp6MTR2djJGQ1E4czF5RGY0dlVtd1JRUEVaS0cx?=
 =?gb2312?B?eUtJVTgwMVNxdS9LRkJMenNEQmNXYjJSTURTMllPNEZTanpFb3luMlhuK25R?=
 =?gb2312?B?azROUGdCUlA0U0I3U0pXZ3Z5c0trajh3SmV0K0ZKT1lraUp5VlhiRDBnT3Jv?=
 =?gb2312?B?RFpKbTlyVUQ4Y0pIckxEK0ZYVGVoM1ZoTzhZc2k0NmtoaW5ZMU9pMWlyNk1u?=
 =?gb2312?B?bE44SmJpZVN4SUpKSnpRV2FpMjlza1A5UGwwQjkvaHB4U1VWYy8vN2ZJeG5D?=
 =?gb2312?B?eS9vc3Y5QUxWZDh0aTVESzlOTk9YU0dlSk4vUndGQ2dvQjZtbkNoSjZYd1ZY?=
 =?gb2312?B?RUdTaWtoc043dkpsWGd5OS82c21LUmh4TGpuUmZnZ1lITzZvL1krRDdXYStO?=
 =?gb2312?B?aGdCeDh2QVVrWnkrdC9lWUI0SjA0STFqOXgxQVlyL2JmdjhiajF2dE5kdjNV?=
 =?gb2312?B?c3VhTjBBOS9zYi9oVEM1V0pVWFRidEh0MDB6MWhtM295dmhRdm9xdjU5Q3dJ?=
 =?gb2312?B?NWpGQS9QRkR0MmJWTnBxVFlNNkJMOGNCK0F4ZFF0YmZZV0lIcGk0RGpiL1pB?=
 =?gb2312?B?UUpiS09EdGdkL1E2RGFjKzhjY3huYW85NG4vMkdkT000ai9ERXJ3YWNxV3Nn?=
 =?gb2312?B?WG5kV1hJbHF3Mm5oNEFKdlNWTDdIY3Z4UzJoYUFNTWdlVDIrUGRPUGFZdTJo?=
 =?gb2312?B?WkM0Zko2djNybXQ3UVRYM2txSHlFbjZ1WWRjc3huUmM3ZGRUMTUwb3dxbDVN?=
 =?gb2312?B?WWxNVU5HNjkwYklLbUhUbjdXZ3BmS1phQkF6R1J4cGVKdWd2Q3pJdFBudlVU?=
 =?gb2312?B?enBZdnIwZllIeURpVkRENHhBbjE5bmljNkZRclVsNElpYzhFOGlKd1cvanBD?=
 =?gb2312?B?TmlpaUxNbEh0ZnZTbHgzak1HL1dSSER2UXp5RXovdjBRL3VYTi9CMnpNdDdk?=
 =?gb2312?B?RjNMTHhFWWtaVm9QQzNzaHNYTng1YzZ0Z2t1OVd3UithRFNSWTZzRXRBVnls?=
 =?gb2312?B?eHBrcWZkcnRxeUxuTWRhMm9VSlNxRFhINVUvMndQcUVNRXhUa0YzYm1IM1JY?=
 =?gb2312?B?eFlDYmVIcHM3bDNsWi9CMVhQeWNlVmdnMkFELzVvZ3d2MkRRTHdTOUZwVWVx?=
 =?gb2312?Q?kVfnS9kAZuLQKHcKjWFEv46s1?=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8676.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1d3b0f4-4cd4-4e60-fe32-08dae006ca58
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2022 08:14:59.5446
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bpWVFwUXoHUScBJmRMOAkyuIOg/N5ebR23ET85XNBywsjrnO8qWnQfKMO82uOUjHZKUyxfJ/ozxa8qdS8p/LJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB9566
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgTHVjYXM6DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEx1Y2FzIFN0
YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPg0KPiBTZW50OiAyMDIyxOoxMtTCMTbI1SAxOjUw
DQo+IFRvOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPjsgS3J6eXN6dG9mIEtvemxv
d3NraQ0KPiA8a3J6eXN6dG9mLmtvemxvd3NraStkdEBsaW5hcm8ub3JnPjsgU2hhd24gR3VvIDxz
aGF3bmd1b0BrZXJuZWwub3JnPjsNCj4gSG9uZ3hpbmcgWmh1IDxob25neGluZy56aHVAbnhwLmNv
bT4NCj4gQ2M6IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+OyBQZW5ndXRyb25peCBL
ZXJuZWwgVGVhbQ0KPiA8a2VybmVsQHBlbmd1dHJvbml4LmRlPjsgTWFyY2VsIFppc3dpbGVyIDxt
YXJjZWwuemlzd2lsZXJAdG9yYWRleC5jb20+Ow0KPiBtYXJleEBkZW54LmRlOyB0aGFydmV5QGdh
dGV3b3Jrcy5jb207IGFsZXhhbmRlci5zdGVpbkBldy50cS1ncm91cC5jb207DQo+IHJpY2hhcmQu
bGVpdG5lckBsaW51eC5kZXY7IGx1a2FzQG1udHJlLmNvbTsgcGF0Y2h3b3JrLWxzdEBwZW5ndXRy
b25peC5kZTsNCj4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMS80XSBkdC1iaW5kaW5n
czogc29jOiBpbXg4bXAtaHNpby1ibGstY3RybDogYWRkIGNsb2NrIGNlbGxzDQo+IA0KPiBUaGUg
SFNJTyBibGstY3RybCBoYXMgYSBpbnRlcm5hbCBQTEwsIHdoaWNoIGNhbiBiZSB1c2VkIGFzIGEg
cmVmZXJlbmNlIGNsb2NrIGZvcg0KPiB0aGUgUENJZSBQSFkuIEFkZCBjbG9jay1jZWxscyB0byB0
aGUgYmluZGluZyB0byBhbGxvdyB0aGUgZHJpdmVyIHRvIGV4cG9zZSB0aGlzDQo+IFBMTC4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPg0K
VGhhbmtzIGEgbG90IGZvciB0aGlzIHNlcmllcy4NClZlcmlmaWVkIG9uIGkuTVg4TVAgRVZLIGJv
YXJkIHdoZW4gaW50ZXJuYWwgUExMIGNsb2NrIG1vZGUgaXMgZW5hYmxlZC4NCg0KUmV2aWV3ZWQt
YW5kLVRlc3RlZC1ieTogUmljaGFyZCBaaHUgPGhvbmd4aW5nLnpodUBueHAuY29tPg0KDQpCZXN0
IFJlZ2FyZHMNClJpY2hhcmQgWmh1DQoNCj4gLS0tDQo+IHYyOiBmaXggY2xvY2stY2VsbHMgdmFs
dWUNCj4gLS0tDQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvaW14L2ZzbCxpbXg4bXAt
aHNpby1ibGstY3RybC55YW1sIHwgNCArKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0DQo+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NvYy9pbXgvZnNsLGlteDhtcC1oc2lvLWJsay1jdHJsLnlhbWwNCj4gYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL2lteC9mc2wsaW14OG1wLWhzaW8tYmxrLWN0
cmwueWFtbA0KPiBpbmRleCBjMjkxODFhOTc0NWIuLjFmZTY4YjUzYjFkOCAxMDA2NDQNCj4gLS0t
DQo+IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9pbXgvZnNsLGlteDht
cC1oc2lvLWJsay1jdHJsLnlhbWwNCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NvYy9pbXgvZnNsLGlteDhtcC1oc2lvLWJsay1jdHJsDQo+ICsrKyAueWFtbA0KPiBA
QCAtMzksNiArMzksOSBAQCBwcm9wZXJ0aWVzOg0KPiAgICAgICAgLSBjb25zdDogcGNpZQ0KPiAg
ICAgICAgLSBjb25zdDogcGNpZS1waHkNCj4gDQo+ICsgICcjY2xvY2stY2VsbHMnOg0KPiArICAg
IGNvbnN0OiAwDQo+ICsNCj4gICAgY2xvY2tzOg0KPiAgICAgIG1pbkl0ZW1zOiAyDQo+ICAgICAg
bWF4SXRlbXM6IDINCj4gQEAgLTg1LDQgKzg4LDUgQEAgZXhhbXBsZXM6DQo+ICAgICAgICAgIHBv
d2VyLWRvbWFpbi1uYW1lcyA9ICJidXMiLCAidXNiIiwgInVzYi1waHkxIiwNCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgInVzYi1waHkyIiwgInBjaWUiLCAicGNpZS1waHkiOw0KPiAg
ICAgICAgICAjcG93ZXItZG9tYWluLWNlbGxzID0gPDE+Ow0KPiArICAgICAgICAjY2xvY2stY2Vs
bHMgPSA8MD47DQo+ICAgICAgfTsNCj4gLS0NCj4gMi4zMC4yDQoNCg==

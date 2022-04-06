Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEF414F5CC7
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 13:56:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229967AbiDFLyQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 07:54:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbiDFLxP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 07:53:15 -0400
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (mail-eopbgr50042.outbound.protection.outlook.com [40.107.5.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE2275000CC
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 00:10:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jbeeQQ3HbHLWKfleQFqzzg1M0QbHFhAMwihsDJGwo5c8yRN21XmPJG9Awz/CAvWmD/OKUoCCk5sF55ROBxAirgbZmROCaBCQez1K0uM16lh7vHNRX02XuGzJRxuTXcPP9rNjosYjk9vnuQdLEqUc2Hoko/CH5j26YGAVPg3KnL6guuQkgiKPafyp0syLwGdUjfcl8hWkdI+WG0rGPCerKtqbAQOcw3IaJl8Fu74GrvuQlax+MPUryx8o1pcST6IERDNIdkOmuLtP6yNGFaqgHKEYnb9/glhexdyi1pIri2FpSPq1AjHIJJ0ZKhbF1jQ9vJpMHpC4j5CMCctetWUCnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F/SZ0zsapPQhAhwB9xoWKeNxnpJ8pxOM3pe29Ptb0fg=;
 b=RX5yqiUfQfWC7V9zpnAWwHvJQn3PxHTx2HDs+x0ZkLRFUah6Q5ic1/2FOj82u2ODWfjz0eNYFvSsiHFPOQjhg+Zfb+II/nGU+BU6kZDsO3rffEwNsKzJMlvwr0RudR2QrJPQsTBqd2NaXP6+ubqSDznxJKqkIE2OU7GrItxXKm3ePFKCWWFDeX4m8ev891s0Iy3eMR7xMBpviQhHIuBzPjtp44h+JwBTlV9621VQQBNEBh0FNULEPk92bWvtHB+Y6xHTeID7QQrMniMlvZrCQE5OZwK4jWOAdatLKLjOJlK1JfMbRjRD99iCEMzkgKLqwif9xb+9R3PvSXxs9FDdXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F/SZ0zsapPQhAhwB9xoWKeNxnpJ8pxOM3pe29Ptb0fg=;
 b=SHdha4i7cRQmDnqXcU6WtGt+oxiQV19Pkb/r0/+OIVXGXgwqMIbNA2QXtJeMpb1ApG98r/+kDbFcJU0gihibyo6E8Wf4FBwjtf8slhXg/2dNYuhIMI+fZWc/3QrqAt2dzvmkDMQZF/7wJEaKmf58MOyWGbshhxxDsbcNqJJ/PJQ=
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by PA4PR04MB7567.eurprd04.prod.outlook.com (2603:10a6:102:e5::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Wed, 6 Apr
 2022 07:10:31 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::389f:e6eb:a7a2:61b6]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::389f:e6eb:a7a2:61b6%7]) with mapi id 15.20.5123.031; Wed, 6 Apr 2022
 07:10:31 +0000
From:   Peng Fan <peng.fan@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
CC:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>
Subject: RE: [PATCH v4 0/5] i.MX8MP GPC
Thread-Topic: [PATCH v4 0/5] i.MX8MP GPC
Thread-Index: AQHYRCNnRS/u7RMuJE6CR04/FUPm9azZJflAgAlcDKA=
Date:   Wed, 6 Apr 2022 07:10:31 +0000
Message-ID: <DU0PR04MB9417F61F5A0E32E21892391188E79@DU0PR04MB9417.eurprd04.prod.outlook.com>
References: <20220330104620.3600159-1-l.stach@pengutronix.de>
 <DU0PR04MB9417835E6D343983FF67372988E19@DU0PR04MB9417.eurprd04.prod.outlook.com>
In-Reply-To: <DU0PR04MB9417835E6D343983FF67372988E19@DU0PR04MB9417.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 070614ad-9ebe-4ea2-921f-08da179c8993
x-ms-traffictypediagnostic: PA4PR04MB7567:EE_
x-microsoft-antispam-prvs: <PA4PR04MB75677D5D30B144BC72048F4288E79@PA4PR04MB7567.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q5CBQprKUoOA8FCya/jYgwbaao0XNgiB9FQ+1wtT64vk0L5ULp0C6aXaSNbrtYe51chBB14aCT9GYIRi8Uzsv7Os1CaQlTQ29pXzEZfBIxmHQeLbW1YR8t12MT9Dlr4Vu2f1UWEGqrfBsKSZLYKeVNJ3Y8Tl3et+RSzEzhBJ7nOnkDRr7LHCWmozkKnCda1bphj+Kq6QV/v3Ot4/skzDj59+85jFYh4mXMmsnpL9uGpYMPd42bLcvOQcvRxGxV0kRUoL2iS8jbZTOH+Vp4IWMGCVHBfzuaO/9ZyHib7EUiY9XtsXR36MclJnn7GeBUQ2/27g3m5n86F08FFgUd6k3DuiwYxyk4zVn8SzzW+WVLp4QhY/U17ZulRj47kRWXuSKg1m2YOk7G4SHIdicvdC6zesKJJwHEGI60hRj2ra6E2Ql8+3CR0JIAqiD+cONKfWeUpbsbzdfwI839czAabBAKOw5iQ6n0CwXzQJpQ1vNaE9Kdny5KPLyiJQL7AORSAjyUvj8AYMYAt3XFMv7Zm2H+gJoH61p9ne7kevcwqEYHu7FWoNnon4T5anbAjKVb+wKTlnGPSJ+ib/pY8fTdzOQRMH4kmxJeFrh3Z28LbVmUCZTRWUqMXchliQ1liRjClrXC9ogDpRfQnYvNQEwdB4ODy+52lIdFO0xUapULAiXNhKLd21BE2BCGpgMNcqYxwo
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(7416002)(8936002)(83380400001)(52536014)(2906002)(26005)(86362001)(5660300002)(186003)(44832011)(38070700005)(64756008)(110136005)(33656002)(71200400001)(66476007)(8676002)(508600001)(38100700002)(316002)(55016003)(54906003)(66556008)(66946007)(122000001)(66446008)(4326008)(9686003)(7696005)(6506007)(76116006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1N8yunsKhWmdyAZkhiAm4NDnO23lkvedyXb1LsaGEXURc+Q2JuRPXfQ4/qHZ?=
 =?us-ascii?Q?te6y5MzmdITjoeCDqgpVW4Xlwp+rtCSVBB4hQvDFBSW9BQZc07ClJUv7OWTC?=
 =?us-ascii?Q?N6Gegwnj+6uroc5U4ZwYQ1kB04NtvKTWDWK+4Vqk1jYZ63KXcyqPowdflmXt?=
 =?us-ascii?Q?0gwHXqKJQkObqHzbMLm/TMVe/JvU2ESAUY48WSYfxTy88bbYrYf8Xjn1emPt?=
 =?us-ascii?Q?DJKsHuZ9SLsXUsSH0hPEPeSyVBd9yHvrANrhSmGPPtwXsNMFotlpN5E8eQZY?=
 =?us-ascii?Q?9B/aFmCOtX8oczBeABFIsn6lK1x1tsfz4vYQqbJArZ/HTJx4oW51hQ1W7QBf?=
 =?us-ascii?Q?Dk48dRIq+8TDUGZIUSCDXi/83f1paFG/cj8HduRFMV3CF46119e5054rbUoq?=
 =?us-ascii?Q?3RdnMBjezKcJJU3Y/q8hogClnJzlK2Rkd9BQXeHnvTro+uQ8osY5EL931wRg?=
 =?us-ascii?Q?Kq47025FsgyPuGDM95FbJBYMUoTBLPhzP4L72Pkc6Jxdh/K9VkUCKBRYmydM?=
 =?us-ascii?Q?7J+ECNKjNmv2v68+8a+anOQiQgIlRjqwdtbSDVLU6JwX0o3jsMY4DucXOe7y?=
 =?us-ascii?Q?+METkvhJWH2uDIQnCIfcnvLaV5zh4asZC+QbSPdsPoANtEfaGgVmu7mwokst?=
 =?us-ascii?Q?eJ5hDX1yebrp4Onjo4VktLc8qgTukHXGEXKX2IL1Gytv0yMkqqDS0Z4n/KKD?=
 =?us-ascii?Q?0XuQJ+0XbntNF+Y/IpSkv9EY1p6aZJbWSmCnNVbTAjn2CtXYZWrYazO0+p0p?=
 =?us-ascii?Q?yk3KsBcWsmQpX+MxOPcPGPaW7tJGtTvmWlo3+syOB0Tp2NPLeEGEkNxvBSZ2?=
 =?us-ascii?Q?igkp5eZSPvP3/ATngKekWThtZxbyfREb2BcnTMIcETfee3hX3rH+UvFmGdfk?=
 =?us-ascii?Q?svQnpypaCG0fGV3AKKb36T3/3qgcpTrEkoQVmRP8Z+vdcNo9bYIvfWF/WODs?=
 =?us-ascii?Q?Un02KvKkqdOWFD1wD/vbPo3glbBwZff0wXenIxS7IpGJck5MqqTnGK/ojzAN?=
 =?us-ascii?Q?W+DDNlt6/vZa7QA/0jCxFOPYh0qrUGclrzE6wXzbBWGLNt9BdVv7b5Phj5os?=
 =?us-ascii?Q?GVQzLx7TYUBrVhMKe11s26ckmf+zVIQW+9EfVZ/gdxzfBlvviLKL1Awu6toz?=
 =?us-ascii?Q?odK2uMWERQfEpi6cTR9SPmVS9ujl3xSBX4AL1KCy4xNynMM6yxfw3//rYbNh?=
 =?us-ascii?Q?XFoNctsAuLm00W1Ap66LfuzDj8pWZElG44VxSN4Sex3AIY2CHJeHsDAXDH87?=
 =?us-ascii?Q?Qc8Sp2jvM+RjMTo1tvqobXUVjeZxI501fAJQdZ1PUtCKlCj5lKbTPZ0nvZJO?=
 =?us-ascii?Q?98A7O71VbzW1lHs2Bg6dYFLxzYovoOCQq0SNAgIS+okVT6zlM3YHJr7jrPSI?=
 =?us-ascii?Q?ckZvVc2Sn9E3zvY1nLMUHvlmVAqH8SfgCZzNDMTKEDZTpspDQN6493n7m+Uf?=
 =?us-ascii?Q?8jFGx9XnRqaUbZVbuilQmXkltN2/aFlv4KCdW4NjYZ0S0r4bsAG9eZ3So8jW?=
 =?us-ascii?Q?AH4hq7Gtk3rt1tpp/mtibbpoaaZQYTtcW9DppBbV8k6xias5uAk4TYcakBFB?=
 =?us-ascii?Q?RkncuNXIPBU4KQfRefEFZel6JcSgh/xHnF+eZ5fuXS0T7UmtrtX9lteEVW7r?=
 =?us-ascii?Q?Rg+0UZhsce+q71s8M4oC09n5F4E3M2hD9ihffOoh0ohy2k6AMyv4m3L04zLA?=
 =?us-ascii?Q?0f5Jcua+jJ6WtGTcy640AXa0yMqjBJqU8IIs53HdbSKcvYsa?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 070614ad-9ebe-4ea2-921f-08da179c8993
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2022 07:10:31.5739
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WBxJM0mN0QNqU6oyhH6MhzafPLUHjW3lhvWmbGID6cslrhJq2NH3cEVduhfPq7DYx1UsT1uXQbUb942e4NhcAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7567
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: RE: [PATCH v4 0/5] i.MX8MP GPC
>=20
> > Subject: [PATCH v4 0/5] i.MX8MP GPC
> >
> > Hi Shawn,
> >
> > This is mostly a resend with all the reviews, acks and testing tags
> > applied. I dropped the HSIO blk-ctrl part from this series, as I
> > noticed that this needs some rework to better fit the upcoming HDMI
> > blk-ctrl. The GPC part is still complete, so the MEDIA blk-ctrl series
> > from Laurent can be applied on top of this v4.
> >
> > Regards,
> > Lucas
>=20
> Tested-by: Peng Fan <peng.fan@nxp.com>
>=20
> >
> > Lucas Stach (5):
> >   soc: imx: gpcv2: add PGC control register indirection
> >   dt-bindings: power: add defines for i.MX8MP power domain
> >   soc: imx: gpcv2: add support for i.MX8MP power domains
> >   arm64: dts: imx8mp: add GPC node with GPU power domains
> >   arm64: dts: imx8mp: add GPU nodes

Patch 2 is already in tree, but others still not.

BTW: Do you have plan to resend the HSIO BLK CTRL from your V3 patchset?

Laurent's V4 patchset also not apply now:)=20

Regards,
Peng.

> >
> >  .../bindings/power/fsl,imx-gpcv2.yaml         |   2 +
> >  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  72 +++
> >  drivers/soc/imx/gpcv2.c                       | 430
> > +++++++++++++++++-
> >  include/dt-bindings/power/imx8mp-power.h      |  29 ++
> >  4 files changed, 521 insertions(+), 12 deletions(-)  create mode
> > 100644 include/dt-bindings/power/imx8mp-power.h
> >
> > --
> > 2.30.2


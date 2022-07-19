Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DF2857A738
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 21:28:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235849AbiGST2O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 15:28:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232214AbiGST2N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 15:28:13 -0400
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130041.outbound.protection.outlook.com [40.107.13.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7872054065
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 12:28:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LqsFJRnWcghIQoLnwoZqTTrJTPRFWl5xpYgzaFbBuZu4JULxaKxWtwwhPd1mkPycsF9rywrnrSQxlxq4YBngB2Y1SO0ifvKL+y64ug4Ec/QQH+OTrqce4ueQljfUsb9YwkGopGzXQiKEuALOuU5zZ7cSlwzWcgj/f9rRxX4d6HYcyXawIaX4deFvI3MP3OgKcrg3vRCFIuzDZIMD6a99MirYgNQezRn9pSBl0+iMG4Dn0wH26+O3l5ryiWk6Q1hco6BFHX4+1jUcNykEky0jRBVFR8wH0HzEXJtZSQd3s7vpVD9JEgRsrSk2nJUyOSESKy2TUcNIesRciSyXAocFmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VyTeehrLgtUYNMTPqUjc/G3u9TXzFhA2/UP1kUvwyjY=;
 b=IQD/LdvkAhxUk7BVLB7KTUDNEWu/KhcLjv4M0KXHCYYO0+omziHEwMnOFqmbttCPlsnUVdDJHXYzVRC4kx+ksxN9xm/6YqKT08UaoxSE653vu6lFlV3HeiBmxOW9JvbynlsvQsUQovk+5YTbeOCPYxNUGrLY5uX3ifk7PPk7kabVWrheUSt9fFZqI+DoIJhBvcKC1y6dxfg1z7tUo4sF0uPv9wk9rUeNbtnY7PrSD1q6LoGve7RVyvWkCwPjZau8WeIoO+7VeSclDqRvjIazzE7CHQBm4aPsqVUH0ynWNSqZLK50oHOKVDJ+yA2tXzdEqdyjV6Mr0PIQgqdf4imhRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VyTeehrLgtUYNMTPqUjc/G3u9TXzFhA2/UP1kUvwyjY=;
 b=IXwetJbmYsuAsKY4DRwNIpX5RWyZmPwvvNLyjFgYsVTmXD2S10HueAUeCiWUni1RmJuwIxONt3Hkd8oULAzHlHhUZn+suUwjArfDugsUq9tlK0Fzquy+dGtmlY5RH53MJnf84gMp333KTvHQOa1ew8RSo5GfU188kHL3PiUpNIs=
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by VI1PR0402MB3533.eurprd04.prod.outlook.com (2603:10a6:803:b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Tue, 19 Jul
 2022 19:28:08 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c%4]) with mapi id 15.20.5438.025; Tue, 19 Jul 2022
 19:28:08 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl
 support
Thread-Topic: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl
 support
Thread-Index: AQHYmKBxPZCj+ntgHkKeXvZY+rvraa2EG4WAgAA3ClCAAO/oAIAA060w
Date:   Tue, 19 Jul 2022 19:28:08 +0000
Message-ID: <AM9PR04MB82743C17EADBFB1CD970BFB0898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
References: <20220715231241.346778-1-shenwei.wang@nxp.com>
 <20220715231241.346778-4-shenwei.wang@nxp.com>
 <bdaa01d4-4d0d-5c22-4918-637225177140@linaro.org>
 <AM9PR04MB8274425DC0C302488354F31C898C9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <26c7b6e9-ee4b-9112-d975-2523940c57c8@linaro.org>
In-Reply-To: <26c7b6e9-ee4b-9112-d975-2523940c57c8@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1ce88d5-a433-470d-ce32-08da69bccf6b
x-ms-traffictypediagnostic: VI1PR0402MB3533:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LuyAmyWb9M+BpsyIjUo6dqOJGvTyVU4krxBP+XRNViqDa7nDzckwZaYIROCQE08tAjvla9miiLcbDFkoT9+9FcW8AyUaiiXrEvhc9gUOj1gQAe1dOVIcyXjj5g2bSSM4qVTp6Qb8NuNq23S825WhyFebtvLmvtLWjCxKswKfcc1YSyLQ/R2ejbYDskW4NTS/stQvncZKeWexpBZZFUpH56ZFW87SrWfOP+erfjUi8bTJ2A5q15aVb2+cl6p8fQgHI+1WZ8yCil+ExXnDSD68P+UzOasWmAI2axLOx+AyVFNbu6S+vZj4tjGf61+kHt/lZ80NK9OjsAkydyph5NRDkXGeXP7WB2OTgQ17lJAnc+GwTdy14hfcFI2aIIYl98mN/o9zpsyJgPO/++lK5dZc5GyYZqoLJ4gdyKlUR6CI/jbqmNvn/KhuAIKo7hGh8EY/+mpC+4eirssPWvBs5RU6/0DPf5Iq2XGa5V6X+Nme5A3+3Py3f8hxvsEon9KiOXm1mXEEvV7HSQMs0NTwgUbkIPeZTcQeTqdW3r9GUNPFvRPyGetHVnRnz0h8BQGpgtENhcDhzxbDyUeRvTYvNiHBUS8j5wVqomdTsPNGqSB+v6LWfSR5UiD5KBo5dZI26/4aFJ6+DKNB5gKhT5GS++ea/COGvHTXW/ce9QhsgWQYdhSuPJxuc5yh0ThtwNn/OzdhJAVAT5l8n2QTCNoFIgLowTfE2HZutsNmaaXXF55Prh6+8+rNx9S58Kc9OvTMq5fdtZ64lMJIUftMMrxKRub0Gh8CmimHWm9PJf2GDKerMyIzSDJGJms0Pov5Om9wGaat7bHwa0Lp6Qro7Nu4rDrgm2Qd1+qlSCi8kPgD6u1OHc8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(136003)(346002)(366004)(376002)(39860400002)(66946007)(45080400002)(66556008)(316002)(110136005)(71200400001)(966005)(66476007)(54906003)(6636002)(478600001)(6506007)(8936002)(41300700001)(38100700002)(55236004)(52536014)(7696005)(53546011)(2906002)(5660300002)(8676002)(44832011)(4326008)(76116006)(26005)(66446008)(64756008)(38070700005)(55016003)(86362001)(122000001)(83380400001)(9686003)(33656002)(186003)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aejwfxRycm22b+iTyZpu8/KO5rtZJY6WtPmht7Rx9YoR24xKJrUCYvEaxDb6?=
 =?us-ascii?Q?ICSEDZ2dcEI6RRgACF9T0Lh5WwbDPPiY9iYgbvk/YcJ6kHyGcJ6IPrvOrFkC?=
 =?us-ascii?Q?pzeA5PMoSy70vQT+MzCpE9l29l/WDWJC1kXFD+6qDal1lAGObQ3fxn7q6zZ6?=
 =?us-ascii?Q?Yl7uH3FDg468Vm+o+8zHIdr0VdvUUFSC0cahgFsELRMq2zBGpuuSNWZuYQcb?=
 =?us-ascii?Q?EyyUwR8Pzy7d1KcGvp/pTJ+jsFHl3qSVY2U1H+Y7iHhXRKCPTmdnhojFNcjZ?=
 =?us-ascii?Q?VFpuGbwwInaFROYMKXQXIQIlveMIBSTY4iv2aRgQpieimu61RYnynNaa3TH5?=
 =?us-ascii?Q?jr/6AMvAdhE0AFUGLcpKN6An/M8cs3S/S41yWDF3BBC9dl8L05Q5C5H+EhjV?=
 =?us-ascii?Q?//01WRn+Ex7gkT1QsQqjYxLxGfJM4wrVQFYBi9mAaqMMp5mSupQCgFgmd6SS?=
 =?us-ascii?Q?llm211JGeRgbJlhtSvNMUZVXNztL0/Yj4k2AckNGobqX1hoVehFq0lKecFMs?=
 =?us-ascii?Q?qsNNPrELOP9pZIGBsadPAVndgtE0kcrVNHGZBNWhLNbE6KhU2ZmvmTAC0NcJ?=
 =?us-ascii?Q?sGJ58AjWJMpIAMy+8w+hNpNqf2vDD+YqL5EtVIvtqCBru/Jbmq2rPDjzhz3F?=
 =?us-ascii?Q?u/xGhK3UezELfWrwsxzFzI6Yb4M3gNI9H/1DXI/Ed2A0QUm/zrkJio+/QXlx?=
 =?us-ascii?Q?PvKyuivHikw8LaXPx4C5ewwwLV1CHuJbCYLPt1vh8C0iimDqaF7eY0oqpw+/?=
 =?us-ascii?Q?H6xLeQXgOF7a/XoBGmt24u86OHJoOA88sVZoKbBdTSKsqH7phewsxDTDAF+m?=
 =?us-ascii?Q?JQPbRsUkOsDi32qiT8yXmBpvgChx3bW3nfz/PERhTNGNWAfGYxuKt8V6cqEn?=
 =?us-ascii?Q?wzbFS5sMRzSSskeMw4HqgMpG5Xuui3A+UKXbcAbhEBWDDlaBK9ctti2d9Zgo?=
 =?us-ascii?Q?hUFW1qXpzNhttGN5/QBU+Ll18amgsBwSKDSP30mIOkVT+lcWzCLw8aowcBZW?=
 =?us-ascii?Q?r25kL7zX0c/VGRL9EcmTMaIggzjbq4KmXoUJ8eNuNtJvGceeOBsF2xPJV1lq?=
 =?us-ascii?Q?0GxsKLJ1pBgbZzt/H4HA6+Noz1kNuQSoycsPM3XWA1kPqbEei05lKewSrz68?=
 =?us-ascii?Q?37F6aY3VIsJkihf8gabraDKJCiT2PGqFs7kBFbpc3FrTx7CzaEzAi3NZFs94?=
 =?us-ascii?Q?ssEEWq1YzVnXPzC9apYgNuFpL72xXulztIUknPpySZtv9yFdsLdY8fXtAsPU?=
 =?us-ascii?Q?8suNsqQK5wEfsJunM+blq9r5FT5dI3E7Wp0PBGi1DM4ESHftS8vwT7ShuqAR?=
 =?us-ascii?Q?31uIN3tJJh4ci5OyV9CEi5NK99u8cBV3ewpfwfiKT5q4k7wH4TJNqbH+ahmv?=
 =?us-ascii?Q?dKTT9keVirX92nIPsHPYeaYQkhYDKuiHOhaPKXXBV6tLxc5FLdq9s6BT8N9E?=
 =?us-ascii?Q?N+mVcBJ9JMxVlb9sO4jJ8NDbU2C02Gl4Q8UWXdJiWrvOo9xbvpemT/O2Bbog?=
 =?us-ascii?Q?zK0eWDbL0cttTixxT4CM2fg8b0WQJoMBYej1s+m7O1mQBgMxfHx0St7MDt6g?=
 =?us-ascii?Q?IRcKlloAobm2dGKm/lxvJrBtRZB/m1cfeumEwJ6K?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1ce88d5-a433-470d-ce32-08da69bccf6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 19:28:08.0594
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lOkrtJ96y0wYBdWeHQuw9oSKC6TMQwgZuYASETJtHyrktCBW+LpIp93ts5JdrsqZHopPRH1limisH4wG5ISt3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3533
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> -----Original Message-----
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Sent: Tuesday, July 19, 2022 1:36 AM
> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
> <robh+dt@kernel.org>; Krzysztof Kozlowski
> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo <shawnguo@kernel.org>;
> Sascha Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> <kernel@pengutronix.de>; Peng Fan <peng.fan@nxp.com>
> Cc: devicetree@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl
> support
>=20
> Caution: EXT Email
>=20
> On 18/07/2022 20:50, Shenwei Wang wrote:
> > Hi Krzysztof,
> >
> >> -----Original Message-----
> >> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> Sent: Monday, July 18, 2022 8:01 AM
> >> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
> >> <robh+dt@kernel.org>; Krzysztof Kozlowski
> >> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo <shawnguo@kernel.org>;
> >> Sascha Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> >> <kernel@pengutronix.de>; Peng Fan <peng.fan@nxp.com>
> >> Cc: devicetree@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> >> Subject: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl
> >> support
> >>
> >> Caution: EXT Email
> >>
> >> On 16/07/2022 01:12, Shenwei Wang wrote:
> >>> i.MX8DXL is a device targeting the automotive and industrial market
> >>> segments. The chip is designed to achieve both high performance and
> >>> low power consumption. It has a dual (2x) Cortex-A35 processor.
> >>>
> >>> This patch adds the imx8dxl soc and EVK board support.
> >>
> >> I saw this patch and I was already commenting it:
> >> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flo=
r
> >>
> e.kern%2F&amp;data=3D05%7C01%7Cshenwei.wang%40nxp.com%7Cf05fa50044f
> c495
> >>
> 748c808da695100a6%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C6
> 37938
> >>
> 093863475409%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIj
> oiV2lu
> >>
> MzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3DZp
> U2whYQ
> >> GJ1z8%2Fnn0hFwHu5KP0BAjx5DTy612oJGwzw%3D&amp;reserved=3D0
> >> el.org%2Fall%2F20220404134609.2676793-2-
> >>
> abel.vesa%40nxp.com%2F&amp;data=3D05%7C01%7Cshenwei.wang%40nxp.com
> >> %7C235450e576d44c030c1e08da68bd88de%7C686ea1d3bc2b4c6fa92cd99c
> 5c3
> >>
> 01635%7C0%7C0%7C637937460494602259%7CUnknown%7CTWFpbGZsb3d8ey
> >>
> JWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C
> >>
> 3000%7C%7C%7C&amp;sdata=3DZiDgTTZbcifNMBjDHTCdMKC1hgmf7BGzuvCJe%2
> >> FyagzQ%3D&amp;reserved=3D0
> >>
> >> Doing things twice, reviewing twice is waste of time. I actually
> >> spotted this duplication after I perform a review, but this patch
> >> should be abandoned and Abel's patches should rather go.
> >
> > I am not sure if Abel is still working on this task. The goal is to get=
 the imx8dxl
> supported by upstreaming kernel. As both patches were picked up from the
> company internal repo and modified for upstreaming requirements, I don't =
mind
> whose patches to get included.  Please let me know which one is easy for =
you to
> go ahead, and I can continue with Abel's patch if needed.
>=20
> I just don't see the point for doing the review second time. Why sending =
poor
> code based on internal repo instead of continuing something which got rev=
iew?

I am sorry to introduce double effort for your review. When I took this tas=
k, I just found that this part of codes were not in the upstreaming kernel,=
 and Abel didn't seem to push what he has done onto the internal repo yet. =
The process is to get the latest company release package, and do the upstre=
aming based on it. The code base may have some gaps to the upstreaming stan=
dard, but I am working on it.  Thank you very much again for your time and =
the valuable comments.

>=20
> (...)
>=20
> >>> +     xtal24m: clock-xtal24m {
> >>> +             compatible =3D "fixed-clock";
> >>> +             #clock-cells =3D <0>;
> >>> +             clock-frequency =3D <24000000>;
> >>
> >>
> >> Didn't you ignore (again) comments?
> >
> > The SoC requires two Crystal clock inputs, one is 24MHz and the other i=
s 32KHz.
> The board design doesn't have an option to change the values. That's why =
we
> keep the nodes here.
>=20
> It's the same everywhere, nothing new here. Where is the clock? On the bo=
ard.
> Not in the Soc. For convenience clock could be here, but at least the fre=
quency
> by convention is put to the board.

It is a little different here. Although the XTAL itself is on the board, a =
user has no choice here to select the clock frequency. It must use the 24MH=
z and 32KHz XTALs, and the two frequencies can't be changed. This is the ma=
ndatory requirement.

>=20
> Best regards,
> Krzysztof

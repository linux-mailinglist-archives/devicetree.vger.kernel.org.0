Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0574679D569
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 17:55:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236539AbjILPzU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 11:55:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236598AbjILPzO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 11:55:14 -0400
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04on2082.outbound.protection.outlook.com [40.107.7.82])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 596FE1711
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 08:55:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jU2YISaTdQltWXnKBodeLO0y1MbUtq/p0E1xWRzD5rJwz4zhVdaFTLVp8q7lOz6EA3LLOexg+jWZQdtphWJnDS9fBn3bz1bGAwRLTyT5TQK3oiT22Mx6GbEsIqt5bR0d45UWEp8PQShaZibf9DvSpA2ZoUkDXETKJsFu4dAT+zkZigKq5RX53lKIO4snXD7mz6Iq8+0zSnq0rv1cDS12DoyCFE5eLF5USCS4yK6nvshll/gbDcLNsaCPnI4aZvDQLIfCtqC62kC6XmATmDC2HFasCZlp/ozphzKg9RtUFANjkTDTsPqWtvCTQTYlP4p/EYNiDnw0QRuRo9W3L0fTmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=raffYmuHZNJMo+wFjLaCRVNGPGvO7uiVmg++56YqMbA=;
 b=eyqexSSm3gvDWCFsjfm9X+erKfTaMtsx0bCRPqnLRPsrmvFWyO5LuvrX4icCG9d0dProPCBTp3C17GPbxpp6Ni0BIpMTSpnpuxm5f7lk5tfMRiwcdGRKTw+QoL7ya0YD0qBgFOWPJr7UWmHAmAX9jKAHOa3NJI8RhHk6tKFCopn1DZCaCSxYUYmlHqrciZd22mK2/R35smHDLkraUJuNLCgeW4RGEVA3cm64FSSQPejK9IeaZ70CJSU5ot+leoRoEIu8v7U2CFLu47EXVvayVOw+2SIjBhJ9WKhE097BQuZElIEsC8iCKUSJl6ECZfMjxyq+pQp/Le++oNgXHCWYPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=raffYmuHZNJMo+wFjLaCRVNGPGvO7uiVmg++56YqMbA=;
 b=QNexjLn7YAgeMCRZzLS57RCLfRQQkI297sTelYXTEfrPW095Qrz9JdYRA9b1+9/VowOsnedS4IUfSWkb6XZgU717y6IM/Y4ALKQPnv+JKzfjJxaaFrXWJcpHjTpgLvuD9ozbgRcm6Qc/H8whhwaaTGuVNbfUmv1f9ajXktUJxns=
Received: from DB9PR04MB9234.eurprd04.prod.outlook.com (2603:10a6:10:372::6)
 by DBBPR04MB7897.eurprd04.prod.outlook.com (2603:10a6:10:1e7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Tue, 12 Sep
 2023 15:55:06 +0000
Received: from DB9PR04MB9234.eurprd04.prod.outlook.com
 ([fe80::f669:3c24:23:1bc3]) by DB9PR04MB9234.eurprd04.prod.outlook.com
 ([fe80::f669:3c24:23:1bc3%3]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 15:55:05 +0000
From:   Mirela Rabulea <mirela.rabulea@nxp.com>
To:     Fabio Estevam <festevam@gmail.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>
CC:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Fabio Estevam <festevam@denx.de>,
        "alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>
Subject: RE: [PATCH v2 1/2] dt-bindings: imx8-jpeg: Add clocks entries
Thread-Topic: [PATCH v2 1/2] dt-bindings: imx8-jpeg: Add clocks entries
Thread-Index: AQHZ5ZF/uQneK47m6EyvvNB5PHgEeA==
Date:   Tue, 12 Sep 2023 15:55:04 +0000
Message-ID: <DB9PR04MB923493D0DA82C9EC4386BC2A8FF1A@DB9PR04MB9234.eurprd04.prod.outlook.com>
References: <20230908141238.642398-1-festevam@gmail.com>
In-Reply-To: <20230908141238.642398-1-festevam@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR04MB9234:EE_|DBBPR04MB7897:EE_
x-ms-office365-filtering-correlation-id: 14acff40-5764-4e2f-73e4-08dbb3a8a1a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NVIinIDFb2t5pc3QSHsLxs5dwgTLTYY4EdxXC8shBKRwBGrHpvV2iB/kpQzi6b+/ZRvmK7bVemvFy6RuybdzYISjKeZUSAdIvUAglsENHbU/AQDO2Lh9gYHdVkH0tOUIZqAaqy2jLq7MxSbM7FTfr+2ADXBqoijq4n0CgiV7PzzufgIbM0SJoJsfvcrVYJFxuiwk+x2kmAXus0gPWR4UCIsP6RY512PNjp2LewRbAyM1gCpYm4fLEZR5QcwR9Cok9EX8fR3wzYRFMcw9JAGvvy7UDf7KVcxA2yQw6S4uGbrdieUlQQqy7dLOFQasv1Tinut6mN8tB8Dk6JLcbuwc6A2LrjsenoNDneuiKX1Ngs1GxhnrWUr540dkmupqD7d6uGMF26samXdMEBjOYNUvsJFw7tYEBwR3qP1DKTrTmvMzuVQadeUYhZA+vY/IDxrYwkRzaW4GCma/TjRxmaZq/GQ1fZOc4dZe6XB95yIuwJLHtJGv9pa4g4Y7pzgPM920Xv9KttepwOjpXOB4IYbzuKo+N29rfM/wY9yohBBaQoJKoGnzRCgWiVVrNGajheRU7aYVdNxmkowLm2GWknKckwMupHyeUSRSPb27DVLErxOL40n20zyzlp2DjwVo73hO
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB9234.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(39860400002)(136003)(366004)(396003)(451199024)(186009)(1800799009)(71200400001)(7696005)(6506007)(53546011)(52536014)(41300700001)(122000001)(38070700005)(2906002)(33656002)(38100700002)(55016003)(86362001)(5660300002)(966005)(45080400002)(478600001)(9686003)(83380400001)(110136005)(8936002)(8676002)(316002)(76116006)(66476007)(66556008)(26005)(66946007)(44832011)(66446008)(54906003)(4326008)(64756008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SOUIuFqstWz8XWd8/9yZ8d6XjztMKYfgwLMk3zpreKfJ0dtkbHVEQgyWu/QI?=
 =?us-ascii?Q?89LJSbXxlfEKqImp3dJkY/iTVXepHtDoNXz7IRnsZ/5fOWnJUl7CxewFETuj?=
 =?us-ascii?Q?hmrNdc9kddCO2wUuHK5nAvzBViTYZE4Lompqgpbw+FYEU7PC37DF0MZwO7Gf?=
 =?us-ascii?Q?rUVH0kFPs7O9Ry9WsW00cYd/U5dpn25XE38xKYX3527OCkiHNhrM8SfnSqhe?=
 =?us-ascii?Q?xJDS1z3wUEdc+CTvbNu4tEN7DUMNbvhD6ovQK5Tx1Yqz6T/itcR+XNIFIYvw?=
 =?us-ascii?Q?3DslxQqnpyHiMwo7q1O3DVUQ3l0gpE1uFk+486rpGq+uKJnvLpDAtiVswF8L?=
 =?us-ascii?Q?19eFAu3cxvKmys/A1Q8u32l9IF0CcrJwkA6sMq1fUqyVwWuu4rutwHvycU4m?=
 =?us-ascii?Q?5BX43/NT4S+4Cb0DDYFFyNC/pSGqHfAaaXOgLqWXA+4vj6OqEV+62NiaeYMz?=
 =?us-ascii?Q?ttWtNiAfKE7nRgWzFrIqoVqOIBPOh5qzp0/K8ROp5l+O5eMsUOsP/Tra9dH3?=
 =?us-ascii?Q?1wpecNY4vrbxzprBXlhAKcczOFW0dmSM/VcipJ1Bl7pzxQ4/8qk3DXTUcjJ2?=
 =?us-ascii?Q?fXL8e4DkUZF1Bco5PF8jAaiNHddK60qf/h4eB995slrRsz9mZQ4wKynhY3bO?=
 =?us-ascii?Q?NuAUlxRijifTi4oc1sDL2CulklHVkV6IHDJIPFk3OwYowBV6RoxMA9F3y+Or?=
 =?us-ascii?Q?fTGsAb3Qx7l9b8gjFn21Z1So2gJ7ndh05LkkPzkJ45DbEMOEsVhcoyClwP3q?=
 =?us-ascii?Q?pBOrxq35fztN73nQzZPzAW3uK4rbTQT96bi7xaNnEdHauiApGj6LmLLyyCUY?=
 =?us-ascii?Q?xxW06VtjXfsPuKbsIbMoh6znb0QD4e7yH1LoVydlhE3b04ngo0PFGPTkDURy?=
 =?us-ascii?Q?627FdoIEqWomX0xGakhsmlWfHeMszY6wXmNohTp2Fvw2Cuq3tb3CGU9gvIdq?=
 =?us-ascii?Q?5raBM+gqa0K7ASR5y6gajCG3m40bsy+8NXJWrSibbF+OL/aIKx2bEAVMn780?=
 =?us-ascii?Q?Qo2X+o6KRCApSU5M45DxxgA62EahmKzmRcRRolL3wSMemPRD9sX/nzFzp3jj?=
 =?us-ascii?Q?EYgVfKyATPyqXDVhB+Ayd2Tli+LN5U3wToQM0zkP9B8G9ysICZ/A+Q+qOVHF?=
 =?us-ascii?Q?CLmkkjpS1mjvVs5mrX9SmT2Hi3PzwdiEiK5m6hmmOsSFP0ZGrclWvgOwEB21?=
 =?us-ascii?Q?clNL5ql+Ck4dkrTqgcz3ohmL6q6AJ9WaKw78ZGYVo+Qv7DrAP4h8C6DyBmqr?=
 =?us-ascii?Q?oTIOmAAYS1GTjWA/vIZdgznlajz+vgD4zF4SahgFpolbzTMHxquyb46z78UU?=
 =?us-ascii?Q?3JKT3gqz2ZSR0qEgPLxYZF2gn05OopKZREzZfzgl8AHpuhNeOs4qs8INe26I?=
 =?us-ascii?Q?eCu/Gy9FfwnoQQAuwnHM0sGzrdq28UakC6d5JkUrP8gwhP8kN0IKQceGRs3r?=
 =?us-ascii?Q?99rn8qSMCAGZE54dEbCnY6dna3kxdiaQ+lTPbWUoSM6uI1BGNAwJgtfmEJtF?=
 =?us-ascii?Q?ImKmKmyLxqi5pmPjjJjQrRgNWil3oR5i2XNhw4y7s6YXYVHvf57/kbHL+apC?=
 =?us-ascii?Q?goqPySXoFjmDS/I7fBApoklt0mbsr/E15zPhy2HI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB9234.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14acff40-5764-4e2f-73e4-08dbb3a8a1a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2023 15:55:05.0170
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OYX+VMQPCisIUI97mcTw6W6UPWMlPAfM48oYgckaX+qkk2jbEXpv1KlNxAFtCLDFAVn0GRSC/rj1cEyYVh3jBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7897
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> -----Original Message-----
> From: Fabio Estevam <festevam@gmail.com>
> Sent: Friday, September 8, 2023 5:13 PM
> To: shawnguo@kernel.org
> Cc: robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
> conor+dt@kernel.org; Mirela Rabulea <mirela.rabulea@nxp.com>;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; Fabio
> Estevam <festevam@denx.de>
> Subject: [PATCH v2 1/2] dt-bindings: imx8-jpeg: Add clocks entries
>=20
> From: Fabio Estevam <festevam@denx.de>
>=20
> The JPEG decoder/encoder present in iMX8QXP and iMX8QM SoCs need the PER
> and IPG clocks to be functional, so add the clock entries.
>=20
> This also fixes the following schema warning:
>=20
> imx8qm-apalis-eval.dtb: jpegdec@58400000: 'assigned-clock-rates', 'assign=
ed-
> clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctr=
l-[0-9]+'
>         from schema $id:
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fdevice=
tre
> e.org%2Fschemas%2Fmedia%2Fnxp%2Cimx8-
> jpeg.yaml%23&data=3D05%7C01%7Cmirela.rabulea%40nxp.com%7C69f66da1744
> 7425f2da308dbb075acd4%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0
> %7C638297791671220834%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAw
> MDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7
> C&sdata=3DYoF9rQPIu2JP3nqXnQN5POXHhB5NP%2Fk%2FnAreCNk4yNA%3D&rese
> rved=3D0
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v1:
> - None
>=20
>  .../bindings/media/nxp,imx8-jpeg.yaml           | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> index 3d9d1db37040..7899e17aff3a 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> @@ -31,6 +31,14 @@ properties:
>    reg:
>      maxItems: 1
>=20
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: per
> +      - const: ipg
> +
>    interrupts:
>      description: |
>        There are 4 slots available in the IP, which the driver may use @@=
 -49,6
> +57,8 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - clocks
> +  - clock-names

Hi,
As Rob Herring pointed out, there is already a similar patch sent before by=
 Alexander Stein, but Fabio's patch is somewhat more complete, as it makes =
the "clocks" required, and also updates the example. The errors mentioned i=
n the commit description are indeed fixed.

But I think the "clock-names" should not be required, as the driver does no=
t need the clock names. Other than that, I agree with this patch.

Thanks Alexander & Fabio!


>    - interrupts
>    - power-domains
>=20
> @@ -56,12 +66,16 @@ additionalProperties: false
>=20
>  examples:
>    - |
> +    #include <dt-bindings/clock/imx8-lpcg.h>
>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>      #include <dt-bindings/firmware/imx/rsrc.h>
>=20
>      jpegdec: jpegdec@58400000 {
>          compatible =3D "nxp,imx8qxp-jpgdec";
>          reg =3D <0x58400000 0x00050000 >;
> +        clocks =3D <&img_jpeg_dec_lpcg IMX_LPCG_CLK_0>,
> +                 <&img_jpeg_dec_lpcg IMX_LPCG_CLK_4>;
> +        clock-names =3D "per", "ipg";
>          interrupts =3D <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
>                       <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>,
>                       <GIC_SPI 311 IRQ_TYPE_LEVEL_HIGH>, @@ -76,6 +90,9 @=
@
> examples:
>      jpegenc: jpegenc@58450000 {
>          compatible =3D "nxp,imx8qm-jpgenc", "nxp,imx8qxp-jpgenc";
>          reg =3D <0x58450000 0x00050000 >;
> +        clocks =3D <&img_jpeg_enc_lpcg IMX_LPCG_CLK_0>,
> +                 <&img_jpeg__lpcg IMX_LPCG_CLK_4>;
> +        clock-names =3D "per", "ipg";
>          interrupts =3D <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>,
>                       <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
>                       <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
> --
> 2.34.1


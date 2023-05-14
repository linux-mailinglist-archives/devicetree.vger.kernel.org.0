Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EFA3702064
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 00:17:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbjENWRp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 May 2023 18:17:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbjENWRp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 May 2023 18:17:45 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB48C10F0
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 15:17:43 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1pyK21-0007SO-TN; Mon, 15 May 2023 00:17:33 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pyK1y-000DdW-CM; Mon, 15 May 2023 00:17:30 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pyK1x-004SF2-Kh; Mon, 15 May 2023 00:17:29 +0200
Date:   Mon, 15 May 2023 00:17:29 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Marek Vasut <marex@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: timer: fsl,imxgpt: Add i.MX8MP variant
Message-ID: <20230514221729.zk3xvgmkeubooiwd@pengutronix.de>
References: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de>
 <20230327173526.851734-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="lrvlaqneq4ybm7wy"
Content-Disposition: inline
In-Reply-To: <20230327173526.851734-2-u.kleine-koenig@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--lrvlaqneq4ybm7wy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, Mar 27, 2023 at 07:35:25PM +0200, Uwe Kleine-K=F6nig wrote:
> The i.MX8MP has the same register layout as the i.MX6DL, so add it as a
> variant allowing to add the GPT IP blocks to the i.MX8MP's dtsi file.
>=20
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml b/Do=
cumentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> index 716c6afcca1f..f5f8b297da13 100644
> --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
> @@ -31,6 +31,7 @@ properties:
>            - enum:
>                - fsl,imx6sl-gpt
>                - fsl,imx6sx-gpt
> +              - fsl,imx8mp-gpt
>                - fsl,imxrt1050-gpt
>                - fsl,imxrt1170-gpt
>            - const: fsl,imx6dl-gpt

Patch 2 (which makes use of fsl,imx8mp-gpt in the imx8mp.dtsi) is
already applied. I wonder who will pick up this one?!

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--lrvlaqneq4ybm7wy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmRhXfgACgkQj4D7WH0S
/k6V/Af/QCb7ZnvVzRWyM9Y0nFAKUQzc5CKd3IAr50iDwfDCf8Y148BCKqX9PN+c
WKQbf+A9BHcqhqu1AoQoZQks6M55/0ic4USIKAXw1wlyo7C+mukCNP2PCoiG9GM6
2NjH8raKtv8vmRG40vhVbA1o6VkK5Qts8ICeTZriiWH0oTuM2jMmwi+gPKJeYbsM
VtgYI9eG7Z1bQe25NkQb9s1PAg2QwIimInYyWXLlUzlPkrVgm9D2OS5gbTnwAX9T
MuLTnr6HyFNOOukCv2ZNGoQADugwqCmVy1est0bC98yUaLj05U9yrVpaqjW4qsFl
wmK7PsSd15Dk5ebLcr9FQPoRYWXZvw==
=Cqjt
-----END PGP SIGNATURE-----

--lrvlaqneq4ybm7wy--

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 975BC6CBCFF
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 13:03:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229646AbjC1LDe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 07:03:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230507AbjC1LDc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 07:03:32 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11D827ED3
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 04:03:18 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1ph76c-0005qm-Tr; Tue, 28 Mar 2023 13:03:10 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1ph76b-007HmW-Gh; Tue, 28 Mar 2023 13:03:09 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1ph76a-008f7t-RD; Tue, 28 Mar 2023 13:03:08 +0200
Date:   Tue, 28 Mar 2023 13:03:07 +0200
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
        Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH 0/2] arm64: dts: imx8mp: Add GPT blocks
Message-ID: <20230328110307.x76wnzejuv342cfu@pengutronix.de>
References: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fwrcnh2b6wwprfvx"
Content-Disposition: inline
In-Reply-To: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--fwrcnh2b6wwprfvx
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 27, 2023 at 07:35:24PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
>=20
> according to the dt binding we have the following major GPT variants:
>=20
> 	imx1
> 	imx21
> 	imx31
> 	imx6dl
>=20
> I compared the GPT documentation for i.MX8MP, i.MX6DL and i.MX6Q (which
> is a member of the imx31 variant) and didn't spot a difference. So
> either these are actually identical, or I missed a detail. In the latter
> case i.MX8MP might be a member of the imx31 variant, too, and not as
> advertised in the commit logs of the imx6dl.

TL;DR: I did it right, i.MX8MP has a GPT of the i.MX6DL type.

> Does someone know (or spot) the relevant difference?

I found it. The relevant difference is that the i.MX6DL variant has a
bit EN_24M in the CR register which is missing on i.MX31. Finding that
was a bit complicated by the fact that i.MX6Q in fact has a GPT of the
i.MX6DL type starting with rev1.1.

The only difference betweeen these two types in the gpt driver is:

static void imx31_gpt_setup_tctl(struct imx_timer *imxtm)
{
        u32 tctl_val;

        tctl_val =3D V2_TCTL_FRR | V2_TCTL_WAITEN | MXC_TCTL_TEN;
        if (clk_get_rate(imxtm->clk_per) =3D=3D V2_TIMER_RATE_OSC_DIV8)
                tctl_val |=3D V2_TCTL_CLK_OSC_DIV8;
        else
                tctl_val |=3D V2_TCTL_CLK_PER;

        writel_relaxed(tctl_val, imxtm->base + MXC_TCTL);
}

static void imx6dl_gpt_setup_tctl(struct imx_timer *imxtm)
{
        u32 tctl_val;

        tctl_val =3D V2_TCTL_FRR | V2_TCTL_WAITEN | MXC_TCTL_TEN;
        if (clk_get_rate(imxtm->clk_per) =3D=3D V2_TIMER_RATE_OSC_DIV8) {
                tctl_val |=3D V2_TCTL_CLK_OSC_DIV8;
                /* 24 / 8 =3D 3 MHz */
                writel_relaxed(7 << V2_TPRER_PRE24M, imxtm->base + MXC_TPRE=
R);
                tctl_val |=3D V2_TCTL_24MEN;
        } else {
                tctl_val |=3D V2_TCTL_CLK_PER;
        }

        writel_relaxed(tctl_val, imxtm->base + MXC_TCTL);
}

I wonder about a few things:

 - Does setting the V2_TCTL_24MEN flag has an effect on the i.MX31
   variant? I assume the 24M clk is on unconditionally there?
   OTOH in the RM of the i.MX31 (MCIMX31RM Rev. 2.4 12/2008) the value
   V2_TCTL_CLK_OSC_DIV8 (i.e. b101) is reserved for the CLKSRC field. So
   maybe the 24M clk cannot be used as a clksrc here?

 - The check

 	clk_get_rate(imxtm->clk_per) =3D=3D V2_TIMER_RATE_OSC_DIV8

   looks strange. If the per clk runs at V2_TIMER_RATE_OSC_DIV8
   (i.e. 3000000) Hz it's not the 24M clk, is it? So using
   V2_TCTL_CLK_OSC_DIV8 has no effect?!

   If the check is always false, we can handle the i.MX6DL and the
   i.MX31 type GPT identically.

 - Should we change i.MX6Q to use the i.MX6DL type GPT? Is rev1.0 still
   relevant?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--fwrcnh2b6wwprfvx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmQiyWoACgkQj4D7WH0S
/k5oqQgAiPlttCJ9hDsNhZvIwC8q6BFGXLhIcn0uV76/8ZfH6NWSBhJgHt1ybpyS
PgRLuyV4YWMQ5Yt+rok8R0Y5oJY96rtwqwW4eUxxqE+YUUj2lYCmOurvR8lt+xhZ
q9KJ7UgR+DeRlCqhq2salp7nIhltd9GlA5NYMhsUYNNn/nzMLwYLBA1szgH7lrhK
fMN0F245lPz+tnifj394mKJ62NEcpBNnnDWnznyq/fLiZXSphOoqorTWN6pF5h+l
wohdajR8zlqCVU9q8vdOeWV8+BD+ypAq/ijrrBBrX5xp1eYZ1vCD5B2HrXilOTWl
2dSF9REqm9ZlIFY7eHNAJbvUdYZwaA==
=uxad
-----END PGP SIGNATURE-----

--fwrcnh2b6wwprfvx--

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4457C6FD74F
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 08:41:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230192AbjEJGlj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 02:41:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236056AbjEJGli (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 02:41:38 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 678DE559B
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 23:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1683700857; x=1715236857;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=yDsXYFn69cYT8ZJ7FLvuYpWejcSC9pirO43SFyHwpLo=;
  b=UFmh+qadJMoiEuzVpwnRGot1gff+xaBk93C6ob8w93m057ncREwkkRRr
   elReYC8nhv25X+DD1mCg8ObGYQ5+LBjxf4eUTS4QPcebobtIyEBIP73Fx
   5n/AI4leI5TxujdX8Ki7+2KhY5JE5WNVtvHALe+7IND8hveFxf7MCMU6/
   196v8LJwT0RoXbdpnqluR4mH1KU/G7gex4oqCPrRE7LCoNnrLEqTaQoZs
   AO+FZTrUetDX3ZS36G9lQ8Z5RHK0bEfQW4GVlwSA5H0zeHmxro4jllwzf
   QCafRrw0AXxC8URok+1MsizjWxbLG10ASllxw9FAdvYR/J9PcPZnQIO04
   Q==;
X-IronPort-AV: E=Sophos;i="5.99,263,1677538800"; 
   d="scan'208";a="30817905"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 10 May 2023 08:40:00 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 10 May 2023 08:40:00 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 10 May 2023 08:40:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1683700800; x=1715236800;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=yDsXYFn69cYT8ZJ7FLvuYpWejcSC9pirO43SFyHwpLo=;
  b=KN4PppphGV7I031iNa2WlDybLWFmaAj2w9bYddT0+FV5kQBYlYRhfRPw
   7ObjL1zZ3WsTYOf6XQWRARgQg4Kn94OulzDLaGaFiF5NkWyk88IacTv/c
   nAPHJY7AbbrWeEKyivwxzJ3icsSFeF5gmbd1U0raRb2o1lDGeqJcwDIzE
   L0kx8SMpPiaaCdqItw9DaKsidWn31uKeiGDf2Qq73F/TREKBbzsQkzPGr
   LQi8/grv8QDI9qNLQ1wAZWSbm/dDZOlwFf57DfmL7Jjqc8nCx1rzWaFRb
   2mARsw2mJVHjGGueNds27jDXeoyrh8IhGPwqsL2joCy4o8OMEQ9s5UM1T
   w==;
X-IronPort-AV: E=Sophos;i="5.99,263,1677538800"; 
   d="scan'208";a="30817904"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 May 2023 08:40:00 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 20E02280056;
        Wed, 10 May 2023 08:40:00 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 0/2] arm64: dts: imx8mp: Add GPT blocks
Date:   Wed, 10 May 2023 08:40:00 +0200
Message-ID: <10272942.nUPlyArG6x@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230328110307.x76wnzejuv342cfu@pengutronix.de>
References: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de> <20230328110307.x76wnzejuv342cfu@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Uwe,

Am Dienstag, 28. M=E4rz 2023, 13:03:07 CEST schrieb Uwe Kleine-K=F6nig:
> * PGP Signed by an unknown key
>=20
> On Mon, Mar 27, 2023 at 07:35:24PM +0200, Uwe Kleine-K=F6nig wrote:
> > Hello,
> >=20
> > according to the dt binding we have the following major GPT variants:
> > 	imx1
> > 	imx21
> > 	imx31
> > 	imx6dl
> >=20
> > I compared the GPT documentation for i.MX8MP, i.MX6DL and i.MX6Q (which
> > is a member of the imx31 variant) and didn't spot a difference. So
> > either these are actually identical, or I missed a detail. In the latter
> > case i.MX8MP might be a member of the imx31 variant, too, and not as
> > advertised in the commit logs of the imx6dl.
>=20
> TL;DR: I did it right, i.MX8MP has a GPT of the i.MX6DL type.
>=20
> > Does someone know (or spot) the relevant difference?
>=20
> I found it. The relevant difference is that the i.MX6DL variant has a
> bit EN_24M in the CR register which is missing on i.MX31. Finding that
> was a bit complicated by the fact that i.MX6Q in fact has a GPT of the
> i.MX6DL type starting with rev1.1.
>=20
> The only difference betweeen these two types in the gpt driver is:
>=20
> static void imx31_gpt_setup_tctl(struct imx_timer *imxtm)
> {
>         u32 tctl_val;
>=20
>         tctl_val =3D V2_TCTL_FRR | V2_TCTL_WAITEN | MXC_TCTL_TEN;
>         if (clk_get_rate(imxtm->clk_per) =3D=3D V2_TIMER_RATE_OSC_DIV8)
>                 tctl_val |=3D V2_TCTL_CLK_OSC_DIV8;
>         else
>                 tctl_val |=3D V2_TCTL_CLK_PER;
>=20
>         writel_relaxed(tctl_val, imxtm->base + MXC_TCTL);
> }
>=20
> static void imx6dl_gpt_setup_tctl(struct imx_timer *imxtm)
> {
>         u32 tctl_val;
>=20
>         tctl_val =3D V2_TCTL_FRR | V2_TCTL_WAITEN | MXC_TCTL_TEN;
>         if (clk_get_rate(imxtm->clk_per) =3D=3D V2_TIMER_RATE_OSC_DIV8) {
>                 tctl_val |=3D V2_TCTL_CLK_OSC_DIV8;
>                 /* 24 / 8 =3D 3 MHz */
>                 writel_relaxed(7 << V2_TPRER_PRE24M, imxtm->base +
> MXC_TPRER); tctl_val |=3D V2_TCTL_24MEN;
>         } else {
>                 tctl_val |=3D V2_TCTL_CLK_PER;
>         }
>=20
>         writel_relaxed(tctl_val, imxtm->base + MXC_TCTL);
> }
>=20
> I wonder about a few things:
>=20
>  - Does setting the V2_TCTL_24MEN flag has an effect on the i.MX31
>    variant? I assume the 24M clk is on unconditionally there?
>    OTOH in the RM of the i.MX31 (MCIMX31RM Rev. 2.4 12/2008) the value
>    V2_TCTL_CLK_OSC_DIV8 (i.e. b101) is reserved for the CLKSRC field. So
>    maybe the 24M clk cannot be used as a clksrc here?
>=20
>  - The check
>=20
>  	clk_get_rate(imxtm->clk_per) =3D=3D V2_TIMER_RATE_OSC_DIV8
>=20
>    looks strange. If the per clk runs at V2_TIMER_RATE_OSC_DIV8
>    (i.e. 3000000) Hz it's not the 24M clk, is it? So using
>    V2_TCTL_CLK_OSC_DIV8 has no effect?!
>=20
>    If the check is always false, we can handle the i.MX6DL and the
>    i.MX31 type GPT identically.

I think this is related to commit 2b2244a3e7c3 ("ARM: dts: imx6: make gpt p=
er=20
clock can be from OSC") where clk_per can be set to 3MHz for imx6qdl. The=20
commit message also mentions i.mx6q > rev 1.0.
This 'osc_per' is also currently causing a lot of dtbs_check warnings for=20
imx6qdl boards.

Best regards,
Alexander

>  - Should we change i.MX6Q to use the i.MX6DL type GPT? Is rev1.0 still
>    relevant?
>=20
> Best regards
> Uwe


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



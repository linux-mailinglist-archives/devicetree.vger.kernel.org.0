Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F7A270F5BA
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 13:57:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbjEXL5U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 07:57:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230225AbjEXL5S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 07:57:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6825918B
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 04:57:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DF65163C5D
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 11:57:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E39D7C433D2;
        Wed, 24 May 2023 11:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684929430;
        bh=iIH0qE/QN5EsuIOiBySRP5iUYWEHMgTqsDrIgV1fXKk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ehkuyuj0kVP8pTXI+LO8ZSMqaq8CBRlenOEKbSFp0P6QFaWLZ0z3kMpjkoOxrQu9w
         5fqn2e9BZI1GDQTVSJinI/A4aRJZTqIU3Fr/7T/D6rHzakhbBWUcSyc4UZcCXFVrZ9
         Av6x8fFlY34TQ+WCt1BI6uXPPuMIErnKXhQdv6YHWVO8jqicA7XjK3+1Uqt2VIumSB
         b3RYpz3YrEynTF8Kg2wGKir0/f4b8FkFLaQEDF8XB//EfQTLUIG/tDnVacENi3nMT2
         rOTMwEPvIt9l/p+ecjhSl+LWR+JkuJqMdhIYcJsW/G7hYJdoDOZIgZKUaQJQH8qp64
         xSLmcT1kHZp6Q==
Date:   Wed, 24 May 2023 12:57:02 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, zyw@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, perex@perex.cz, tiwai@suse.com,
        lgirdwood@gmail.com, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/6] ASoC: es8328: Enabling support for 12Mhz sysclk
Message-ID: <f5b780ac-e079-4c24-9dfc-05aee52deb9c@sirena.org.uk>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="+rKVKEWVYZn7J9Tb"
Content-Disposition: inline
In-Reply-To: <20230523213825.120077-2-macroalpha82@gmail.com>
X-Cookie: You will be divorced within a year.
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--+rKVKEWVYZn7J9Tb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 23, 2023 at 04:38:20PM -0500, Chris Morgan wrote:

> +static unsigned int ratios_12000[] = {
> +	8000, 11025, 12000, 16000, 22050, 24000, 32000, 44100, 48000,
> +	48000, 88235, 96000,
> +};
> +
> +static struct snd_pcm_hw_constraint_list constraints_12000 = {
> +	.count = ARRAY_SIZE(ratios_12000),
> +	.list = ratios_12000,
> +};

...

> +	case 12000000:
> +		es8328->sysclk_constraints = &constraints_12000;
> +		es8328->mclk_ratios = ratios_12000;

The other constraints have separate rates and ratios, with wildly
different values between the two - the ratio (I'm guessing a clock
divider) being written to a 5 bit field which obviously can't contain
the actual sample rate.

--+rKVKEWVYZn7J9Tb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmRt+40ACgkQJNaLcl1U
h9Aw1wf7BFOU6DO0NZWHZ9jydC567ScFkTrSAt6wSkPFgkeD7w4S0T2Z3oq/wTue
a8ekwXfod9RDFZQx9jlJTNU4rpEhoY52WPbrSLnXUacpDtVMbmG4KlsVyjMBDXJf
DKgHb2tx6d7ysETphH0A7nqjc2Vn7Av+Gih4f8aVTXVopI5KFe/jqqPZP0u5hcNP
bW2oLU1i/eFxKiAtq+f4Nt3x4IOF/TEP2YhTSYuvfc1X/S0v65Jza5ZjjYG1DQnA
wgZNjZqNC6OoFXvUGgnh8EogEKdhRkbxXmVaYAa3los6gQy2MOCCwYE0SpDMvx43
CNoKmDoevLKi0tK+KksbKcGEzoW/mQ==
=sTV7
-----END PGP SIGNATURE-----

--+rKVKEWVYZn7J9Tb--

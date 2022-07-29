Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 031AC5850F8
	for <lists+devicetree@lfdr.de>; Fri, 29 Jul 2022 15:35:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236579AbiG2Nfj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jul 2022 09:35:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236667AbiG2Nfh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jul 2022 09:35:37 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64DCE24BE6
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 06:35:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 04A17B827B0
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 13:35:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D89AC433D6;
        Fri, 29 Jul 2022 13:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1659101733;
        bh=OPnmHe7xqIRuz4QI8wZC/8APNp4xzRDjJrUr9X3kF9M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=t30MSvduBlMTQZckvb2AxnwIrsTUfq06OH+yTTugp5FVfxSetZjJHMpsou1XXs+AZ
         OU3fwVUbHqnEz585yxbddmzGZoG2Q3/4/7Yp1pA0e+af/ZIYi7cbLEFX48i/z0XD1d
         rijRLETJugQ5fi187EHotPsyIiwqcduLHqaaDoZmME/Ua6Mbcapgwf8c9AkJLwydlJ
         01T4MFPV8LK2aWi+57gOmBLUxW/LIvivx2BvYIz2+NvF8bnrfmLZAXhuvJS2PBo4E5
         EWnxmAcqvjFrDXPLzmEsO5to/L3N1OLspHGLB9XCD8qjWltXXp4bm7UHL76ccaGAdA
         pe66tW/3/0yjg==
Date:   Fri, 29 Jul 2022 14:35:28 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Zhu Ning <zhuning0077@gmail.com>
Cc:     alsa-devel@alsa-project.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, devicetree@vger.kernel.org, robh@kernel.org,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: Re: [PATCH v4 1/2] ASoC: codecs: add support for ES8326
Message-ID: <YuPiIHvkK4pb6Mae@sirena.org.uk>
References: <20220729090857.579785-1-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="A/sDrsDDQfaXBz8i"
Content-Disposition: inline
In-Reply-To: <20220729090857.579785-1-zhuning0077@gmail.com>
X-Cookie: Chairman of the Bored.
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--A/sDrsDDQfaXBz8i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 29, 2022 at 05:08:56PM +0800, Zhu Ning wrote:

> +static unsigned int es8326_rates[] = {
> +	8000, 12000, 16000, 32000, 48000, 96000
> +};
> +
> +static struct snd_pcm_hw_constraint_list es8326_constraints = {
> +	.count = ARRAY_SIZE(es8326_rates),
> +	.list = es8326_rates,
> +};
> +

These now aren't used, you should see warnings about this which will
turn into build failures in an allmodconfig since it's built with
-Werror.  Otherwise than that one small thing this now looks good.

--A/sDrsDDQfaXBz8i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLj4iAACgkQJNaLcl1U
h9AKSAf/XESgiF0L737Iu8Wd451H4iGXfZIA2LMbUc9JyLDw0OB/OkiO4otMQxKS
Am5bXzHPOVaoJuh3iUEq6y2JlWigIQH1vMT8NhkXBWlNoo2Zvz1Tr3XA7uocWV4Y
Lmr6ThAMjjFy5keWqaxd9KnVsX8yX6srz5uy8LQye3q/LK3AALxwKkojc6GM0rKQ
Xt+m0e2AHXBQygNc291RpVi45V4UAe8jb4OBiI146U5XZUFCAWaECGtolXQuQLQS
jN6Hk9yesHh+hp2KplfmQwkGUOYBp1ilBaJs/QxyEBZGSPxAle/9htbTG+Ab9axK
X+ulIeq85WDKEg3vCKcH9nUTKWquLQ==
=DHk6
-----END PGP SIGNATURE-----

--A/sDrsDDQfaXBz8i--

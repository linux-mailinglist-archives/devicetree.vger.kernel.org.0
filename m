Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4EA7576715
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 21:04:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230428AbiGOTEd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 15:04:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbiGOTEc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 15:04:32 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92EF13E84
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 12:04:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 8E4F5B82E11
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 19:04:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B27C4C34115;
        Fri, 15 Jul 2022 19:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1657911869;
        bh=vFOuUhDDk7ZbJ1Zwwa6YcJ0NqzmDz1ZI5+SCn128S4k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=PxlC5mOw0BQ0sGfHYO7S/laafBTpQl5eCCkczwgGQMKuxoFaPrRfbhVMmYsLM0Txr
         IRBKK4VilhWWLJJsov5KYb84q+YksPs/9T6sYarxt6hLjZAGGh2DXuhXOKQibAiC08
         kRsRrf1rvfFTCM8GYn6c6oOfKVp+/KgzsILfJg2f2sWwcQ1cTJvvUYZriYVQK9ELhE
         jEd0XlL6dQLwRkdMVOHZ11+rbFW2KQOOBPQg+WrS/gu/72yR4nQe1thQjZOu+G/82N
         /5sYpRcO+16FcymVwqbAdL9gTIXpWGp05SfIO2K4yKGb2Gi7B8iwa2oYARg5AA90kC
         vu65XnJLD5EOw==
Date:   Fri, 15 Jul 2022 20:04:24 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Zhu Ning <zhuning0077@gmail.com>
Cc:     alsa-devel@alsa-project.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, devicetree@vger.kernel.org,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: Re: [PATCH] ASoC: codecs: add support for ES8326
Message-ID: <YtG6OO5XlAFFcJjV@sirena.org.uk>
References: <20220715054100.9240-1-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="WzpKlPhY3WuQ4DUk"
Content-Disposition: inline
In-Reply-To: <20220715054100.9240-1-zhuning0077@gmail.com>
X-Cookie: You dialed 5483.
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--WzpKlPhY3WuQ4DUk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 15, 2022 at 01:41:00PM +0800, Zhu Ning wrote:

Looks mostly good but there's still some issues here, plus the ones
Pierre found.  Only one or two are substantial though, some of the
things below are really minor:

Please check the coding style matches the kernel coding style -
checkpatch will probably help here.

> +	snd_soc_dapm_mutex_unlock(dapm);
> +}
> +static void es8326_jack_detect_handler(struct work_struct *work)

Blank line missing between functions.

> +	if(!es8326->jack)
> +		goto out;

Missing space after the if.

> +static int es8326_resume(struct snd_soc_component *component)
> +{

I'm not seeing anything in here to resync the register map with the
device - the driver is using a register cache so that's going to break
if the device looses power over suspend.  TBH it's not clear to me that
the driver isn't hard coding a specific set of paths...

> +	regmap_write(es8326->regmap, ES8326_INT_SOURCE_58, 0x08);
> +	regmap_write(es8326->regmap, ES8326_INTOUT_IO_59, 0x45);

Some of the hard coded register write sequences in here look a lot like
they're assuming a specific board layout and might need more device tree
configurability - what if the board doesn't use an interrupt or uses a
different one?

> +	ret = device_property_read_u8(component->dev, "everest,mic1-src", &es8326->mic1_src);
> +	if (ret != 0) {

This is adding a DT binding but there's no DT binding document.
Previous versions of this driver did have one, please include it with
every submission.

> --- /dev/null
> +++ b/sound/soc/codecs/es8326.h
> @@ -0,0 +1,187 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * es8326.c -- es8326 ALSA SoC audio driver

Commend has the wrong filename here.

--WzpKlPhY3WuQ4DUk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLRujcACgkQJNaLcl1U
h9CMYQf8DF6sLAnw3ygRgDwV529SWix+B4Usjc73Xe3qvGlu6hcp/cY3lxagkol3
wckVPVTeqSRgLf8GpqWYb0cXdT8vZ4AwgJGDFD1kLf9yJ1lrv7unIdOxBZAVH5Co
F/3I9B/kfIiR5Ewj4LmYcBpVxKbBCyHUMMl9VDgXXn5irOeH8HFpvfFqHZ+rnYGM
gD1k3Hw6Z7NaXRT35skH6XdNauC7tsXb3fqFrbCWDmhxAoS5caftCHNeDlArOqf1
JhBvJuTH/DGZ/fpvUdTnaz0E9pVtnZxAj93uMg1PDIgXJNGYvw4LuiD9opvnxhH+
vbWd473I6sezF5TM3Np1QGDv5uW6qQ==
=vHQL
-----END PGP SIGNATURE-----

--WzpKlPhY3WuQ4DUk--

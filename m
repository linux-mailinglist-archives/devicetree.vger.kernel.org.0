Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 585145815C4
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 16:56:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233721AbiGZO4o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 10:56:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233250AbiGZO4n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 10:56:43 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74FA226AD9
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 07:56:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1113D601CD
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 14:56:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7727EC433C1;
        Tue, 26 Jul 2022 14:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658847401;
        bh=8LCAQ/XKhmCI8QLqG+ep4teGmM1x8rveBJ36yESzFnQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tqfjuZFKjR8gtO2uTx0fXkzBl0z6mAWvS2GB1WR9DVQHWBY7D4azRyDmmsBxOoYBF
         +Z7rC8XIMEIaqSm1xeE1SDFjn/KMfZ8TQDpyDrKLuzZom+Zh/TbzCZ5o78T4zvwgHV
         qqVLR/BgTBY8lCjTkjBm0WTWt2bDNyeYyex0LSQ4Gze8GQEM1CEi6HoMRTaARHLCll
         W+TsBGW7635bOcv1t4ythrjUX4NM8UM1d4YBA89lUXnwUSYP3163ojJuUELkIslEYd
         S+BBcZw6Lgs1E0BsM5LsgEh0a/iYBn1nVQGTK4a77FRGJq1rS76/u60cWrtPvQwsEm
         +iJiKI1cxWT0w==
Date:   Tue, 26 Jul 2022 15:56:36 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc:     Zhu Ning <zhuning0077@gmail.com>, alsa-devel@alsa-project.org,
        robh@kernel.org, ckeepax@opensource.cirrus.com,
        devicetree@vger.kernel.org, tiwai@suse.com,
        Zhu Ning <zhuning@everest-semi.com>,
        David Yang <yangxiaohua@everest-semi.com>
Subject: Re: [PATCH v3 1/2] ASoC: codecs: add support for ES8326
Message-ID: <YuAApMG8XbxOoGIv@sirena.org.uk>
References: <20220726131747.127992-1-zhuning0077@gmail.com>
 <2f031e44-4d8a-a69f-697f-1bb83ba1f9f9@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="rSGISV+IhT6QpsQ0"
Content-Disposition: inline
In-Reply-To: <2f031e44-4d8a-a69f-697f-1bb83ba1f9f9@linux.intel.com>
X-Cookie: All rights reserved.
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--rSGISV+IhT6QpsQ0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 26, 2022 at 09:06:10AM -0500, Pierre-Louis Bossart wrote:
> Much improved version, thank you. See additional comments/questions below.

> > +	regmap_write(es8326->regmap, ES8326_CLK_CTL_01, ES8326_CLK_OFF);
> > +	regcache_cache_only(es8326->regmap, true);
> > +	regcache_mark_dirty(es8326->regmap);
> > +
> > +	return 0;
> > +}

> One question on the interrupt handling: should there be an interrupt
> disable on suspend and conversely an interrupt enable on resume?

That shouldn't be needed (in general the interrupt enable/disable stuff
shouldn't be needed at all).

> > +	ret = clk_prepare_enable(es8326->mclk);
> > +	if (ret) {
> > +		dev_err(&i2c->dev, "unable to enable mclk\n");
> > +		return ret;
> > +	}

> I am not really following what happens if es8326->mclk is NULL. Why
> would you call clk_prepare_enable() with a NULL pointer? If you look at
> the code in es8326_set_bias_level(), you do test for that case, so why
> not here? Something's not right here.

> Could it be that this is a scope issue? This block should be moved under
> the scope of the if (!es8236->mclk) test, no?

The clock API will happily consume NULL clocks (it uses NULL as an
equivalent to the regulator API's dummy regulator), there's no *need* to
skip clock handling if you've got a NULL clock.

--rSGISV+IhT6QpsQ0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLgAKMACgkQJNaLcl1U
h9BUTgf/fWzI+fU9MnDWLd5w605hoXAlREJU2+Ix5LTMCtZQyKvgN5C9bvUYDTrr
rWIOESYWdVxxPKjX/QSRB9fI2e/w2ABagOs6kOgd6L6WbHaN3JSnSIJUQHsvArQV
w4r/4ZQv1e7Qpn6qBQIECOqECtT+UDEipAUttdAHCXjYi+VhvQH3ddf/Tem+RIhR
CPM5PcPjLj5aoQk2Z0KxPRmrFdX2eswOqFTJGq0mmgpxBf3gnUdoGeWMU36Ye3pU
yc42gip6dKMo4c4IGKpxqYkN0eeLpGf1SWp1enEAwKZtLXY6WFxcW7+QEKGaUdPb
HXuPdBWnZnIRtl5PyQ0MbxcMMGr8RQ==
=RMZJ
-----END PGP SIGNATURE-----

--rSGISV+IhT6QpsQ0--

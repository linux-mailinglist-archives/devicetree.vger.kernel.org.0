Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F95C381150
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 21:59:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230230AbhENUA3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 16:00:29 -0400
Received: from mail.kernel.org ([198.145.29.99]:57772 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230149AbhENUA2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 May 2021 16:00:28 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25B7361574;
        Fri, 14 May 2021 19:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1621022356;
        bh=kvpM2wP0uIglMvvx7Q23dMMBxKa2Vo33yjfFPo9LiLQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=O1WtW9SfpMHAjK+C5VCcOBrmdexpWk18bUjozXxg5NNigk+ATDstnA8GiZ8CrMJBE
         Bzpl/ejl47SjBh4Dg+4EsuQIN9vMbZYEXgKLzhpzoCl5m6WvDpZsHVExQb1aBwO41F
         AHxsW9bxzm8aXtNDS6oeAdN0Hge2MIoDq7lINRpgldCFi3uW4WvqC9M1H4RO12Ldvu
         bdeBnRZdRYkpejr5mt765gXxNEau/svpcwYSZcvAIBW9+qrpM3ZgP0XfI7tMxv7D7v
         7E1huwY7iaIDs149Fb0kEh0vQmqe1YD8R0ku1pyRNezMNCJAltFcG3h9f3qUu4rKTG
         grrWg1tlG/qVA==
Date:   Fri, 14 May 2021 20:58:35 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v10 2/4] ASoC: Add Rockchip rk817 audio CODEC support
Message-ID: <20210514195835.GD6516@sirena.org.uk>
References: <20210514171940.20831-1-macroalpha82@gmail.com>
 <20210514171940.20831-3-macroalpha82@gmail.com>
 <20210514174958.GC6516@sirena.org.uk>
 <20210514183324.GA20917@wintermute.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ZJcv+A0YCCLh2VIg"
Content-Disposition: inline
In-Reply-To: <20210514183324.GA20917@wintermute.localdomain>
X-Cookie: Necessity is a mother.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ZJcv+A0YCCLh2VIg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 14, 2021 at 01:33:24PM -0500, Chris Morgan wrote:
> On Fri, May 14, 2021 at 06:49:58PM +0100, Mark Brown wrote:

> > > +	if (!node) {
> > > +		dev_err(dev, "%s() dev->parent->of_node is NULL\n",
> > > +			__func__);

> > There's no need to fail the probe here, you won't be able to read any DT
> > properties but that shouldn't stop the driver binding.

> If I'm not mistaken this is actually telling us to fail if the parent
> device (the PMIC itself) isn't present. I think I'll remove this as not
> necessary since if the parent node isn't present the mfd driver will
> never load, meaning this driver will never load either.

So it is - I edited incorrectly when I went to reply.

> Below this line however we're failing if the codec node isn't present.
> Are you telling me we want to bind the driver if the node isn't present
> (such as in the edge case where the driver is present and the PMIC is a
> rk817, but the CODEC is not in use)? I will remove the return code if

Yes.

> you think that is what needs to be done. My concern there though is if
> we do that we'll either be in a position to again report a bunch of
> errors for the edge case of users who want to use the PMIC but not the
> codec (in this case missing clocks and whatnot) if we try to bind the

Why would there be any errors?

--ZJcv+A0YCCLh2VIg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmCe1moACgkQJNaLcl1U
h9BDCgf/fcUp6NX1vj4DehSa1d/ysInM3TiL047VkuC5a5gJXUHV+mazQKyvfx7p
4HM9osvdJP9DxW0DMRceJuGUOAMAaZtSi6lpkF95RElw5FUQ46U+lnKcQwWyKyRp
lbqHNiIdwkdoGj9cHr1wp0sQPyQyMUFTMrIydZ6SHaTUkk4i4jOlqsBeMg7f4OGy
itcLEGC8BtzddPnNFM//0oiqDSZfGj7S0yzqyAwtULqndz6E1xQ79hG9IazoFn5C
S8pRJqdITTk/hB+azI+x52JzZrG4Cs1hHezvR8tIY6iSrFjG2SOITEK+KDiVq74/
42JnTRAyk8OYBqh1+b/u3QlvAFAzqQ==
=wmN+
-----END PGP SIGNATURE-----

--ZJcv+A0YCCLh2VIg--

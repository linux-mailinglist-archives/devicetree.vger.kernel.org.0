Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91F914C8CE5
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 14:45:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235124AbiCANpw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 08:45:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232082AbiCANpu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 08:45:50 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B52C19F388
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 05:45:09 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 6DCBFB818D1
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 13:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0441AC340F0;
        Tue,  1 Mar 2022 13:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1646142306;
        bh=eBTzL6MmQwg+V8bbbSmjlT/a2olT1yoXStUwSJGOaog=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JBhwmukr+e7mpibQbsB6Ik/TnewToBB4tcfJUFWSmVJbM9U1pEeUrY8hdjXMTeD5+
         kGJfa1ElbsZOz+/89xaQbMSizuZxG8PBox50RgjcoxgWoFmfPRlIsdVqVP18dMD6eb
         XbclLgFMXMIbv1Ilgm3ff0bGtftgTvgfRDp2IITHd7G/SiBDM3ZnXlBMs93/VsRJFB
         J5WjZ5ZFZsKDzsCdgvQDg2+2phiYrqYeFoyo49EZuR1bNhskKT8A1F4HoCFuwvJVEZ
         5vwR8xs5IxQH/SX7g0uPnU6rrE70ui6kU4i3jmFGveW/lQvTqx7qdbgnQOj8pAd7Hp
         rw+qK/EoY3vXQ==
Date:   Tue, 1 Mar 2022 13:45:01 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>
Subject: Re: [PATCH 2/2] ASoC: codecs: Add Awinic AW8738 audio amplifier
 driver
Message-ID: <Yh4jXfABBzXQAowc@sirena.org.uk>
References: <20220301123742.72146-1-stephan@gerhold.net>
 <20220301123742.72146-3-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="e0XqVz8VgxRwZibj"
Content-Disposition: inline
In-Reply-To: <20220301123742.72146-3-stephan@gerhold.net>
X-Cookie: You have a message from the operator.
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--e0XqVz8VgxRwZibj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 01, 2022 at 01:37:42PM +0100, Stephan Gerhold wrote:

> The Awinic AW8738 is a simple audio amplifier using an enable GPIO.
> The main difference to simple-amplifier is that there is a "one-wire
> pulse control" that allows configuring the amplifier to one of a few
> pre-defined modes.

What exactly are the modes here?  Looking at the web site for the part
it seems like it's selecting a power limit for the speaker so it makes
sense that the mode would be fixed in DT but it's not clear from the
driver.

> +	aw->gpiod_enable = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
> +	if (IS_ERR(aw->gpiod_enable))
> +		return dev_err_probe(dev, PTR_ERR(aw->gpiod_enable),
> +				     "Failed to get 'enable' gpio");

Are we sure that enable is the best name for this pin?  It's more
complex than just an enable since it's the 1 wire data - according to
what's on the awinic web site it looks like the actual label is /SHDN
which is similarly misleading though :/

--e0XqVz8VgxRwZibj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmIeI1wACgkQJNaLcl1U
h9DwLQf+OD/DUxU01avnx4nV345JZNvT5Wb1DEdhtu8PIDWFp1tDw2khUkWGBgXO
KaU0noMXF1uM/DbNWE/9xHrOlGwtogv61Pk/Caoy5c30VUgXyewy5qCTQ3PFPy2f
oZg+s2FDE32ngKwhKy2X2Chh8GAJ3EIofbLBNS9k7KEkmx1LgC+Yd8NqB63jKfLm
ZQvSf/Rc0jZ4Est/myWYtAtYH6bk0YeG8CD+8j/etTqd6Y3pIWpP9kZisBJJt21C
NLShcpLQFDx4CS6ZdHepucLUJ0cyxdDgrkcfvg4IJ3XEfoGdcZRNkZuC5j3bBLQ/
PtWLu3EieSkTx7NoZ+Vxp5T4EAbzKg==
=pbol
-----END PGP SIGNATURE-----

--e0XqVz8VgxRwZibj--

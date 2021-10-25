Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9016A4392ED
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 11:44:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232732AbhJYJqa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 05:46:30 -0400
Received: from mail.kernel.org ([198.145.29.99]:59268 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232546AbhJYJq3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 05:46:29 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 493F060EFF;
        Mon, 25 Oct 2021 09:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635155047;
        bh=5HtCo0/UJttBQs5MtQSjJ/UGL8Uud9O/+4gZVB2kT2o=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fkiPFNWckVoYiTX0J2JM++IriFcBEEdoOaGfIP/T11GYqw2cAHhIllDHfvKBfyDhM
         V03WZSzKMm0wQy5MKDQ+8eaGADTGtx803enuAmI7V/f+RsX8Sv1Dk0DgXtu97j/b4a
         xaQGlYkRdftWdRHZTqh1G2pI7vo4rwjb+7umRZYLIrJnihXJOebqoeI3QyP4EE6ykA
         8hy0KtknG2N1ZpwlNOC/W1MspugTr7Ha/n9tzwQVPn2WkHIjb4ci18X30HtZwSAkd1
         yxbdScNc+e3uzcqkiRU78bwz8TZdWPIW11+lvapjlV/JLx2ifmNSrzdB5QrAhHhwAz
         Bt8NCeStuBKaw==
Date:   Mon, 25 Oct 2021 10:44:05 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Alexander Stein <alexander.stein@mailbox.org>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: sound: amlogic: t9015: Add missing
 AVDD-supply property
Message-ID: <YXZ8Zefl4SIzz0zJ@sirena.org.uk>
References: <20211023214856.30097-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="g2USKoGlaHE/dm4O"
Content-Disposition: inline
In-Reply-To: <20211023214856.30097-1-alexander.stein@mailbox.org>
X-Cookie: From concentrate.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--g2USKoGlaHE/dm4O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 23, 2021 at 11:48:53PM +0200, Alexander Stein wrote:
> Fixes the schema check warning "audio-controller@32000: 'AVDD-supply'
> do not match any of the regexes: 'pinctrl-[0-9]+'"

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--g2USKoGlaHE/dm4O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmF2fGQACgkQJNaLcl1U
h9BqRQf/bK8bavnWPSqbeyhE6HDi6A/v3s7mGb/Nf1YnoG6RdTjFKgfLV7KxgN7m
Wf8+Fu6FoWGv1vTVbsa08C8xYOF3Dr1AWcPG5gOdyItVvyDXuyW6xDiS1hXIsJzK
0SBvb0wHWq5P3bvm3qLOu9gs8Oo57FeB8Fp6Ymb1gJ9mpngjL246UL1XlmWM3Be2
gHfAHUal0CzYQsKVrpAHeOFWT7ddVWizZ/wunGs9kbtcYdEGuyuw+OVhtx1ugKpx
1YxdoOimwpQbpNkmMpOvK4hJKFQVtQDZJvTC9Gmp6FYDwB0S2VdJeI4eYLJJmS4q
ZB9E9KRMQp3voiu8atOvkdru2xhTBA==
=XjmJ
-----END PGP SIGNATURE-----

--g2USKoGlaHE/dm4O--

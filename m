Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D94A328352C
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 13:50:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725931AbgJELu2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 07:50:28 -0400
Received: from mail.kernel.org ([198.145.29.99]:49190 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725914AbgJELu2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 5 Oct 2020 07:50:28 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B904A20757;
        Mon,  5 Oct 2020 11:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1601898628;
        bh=UZVfuP1aRfwrbBFJKfqea9aS4yvWgRH18g0vwiE7JUQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BaKL8xo71qV17N/t9fGAhq+bn8wwCb+dG7ioGRxw9SMDW/iz7JSuFPnVdsEf5uhpf
         hvCe6dW0au36/1bvUY4cCIGkqCmK0uKJbPzEbiEjiQDKR4xi2P+x68916e+34Ovcd+
         YIs51l1towxws7uWgEFMtLbhc3MF5/KhlLuy2wHg=
Date:   Mon, 5 Oct 2020 12:49:25 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Primoz Fiser <primoz.fiser@norik.com>
Cc:     alsa-devel@alsa-project.org, Timur Tabi <timur@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] ASoC: fsl: fsl_ssi: add ac97 fixed mode support
Message-ID: <20201005114925.GC5139@sirena.org.uk>
References: <20201005111644.3131604-1-primoz.fiser@norik.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="yLVHuoLXiP9kZBkt"
Content-Disposition: inline
In-Reply-To: <20201005111644.3131604-1-primoz.fiser@norik.com>
X-Cookie: Most of your faults are not your fault.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--yLVHuoLXiP9kZBkt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 05, 2020 at 01:16:43PM +0200, Primoz Fiser wrote:

> bits. But in summary, when SSI operates in AC'97 variable mode of
> operation, CODECs can sometimes send SLOTREQ bits for non-existent audio
> slots which then "stick" in SSI and completely break audio output.

If this is something that happens based on the CODEC shouldn't we be
doing this by quirking based on the CODEC the system has rather than
requiring people set a separate DT property?

--yLVHuoLXiP9kZBkt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl97CEQACgkQJNaLcl1U
h9C96gf/T7WsDXzutk8Io6bB7BZKUlJPkuMr5OzGzWy+TQhGS8Cl3gtnQjYIuliB
VN5TrTI7TL7+sXZNYESI6Nlljf+B7ick4s/8Xtc+ymdiJ3azdp3GRGWbh9SirX1P
3N6IOrNs9aoT8RnRrKtpKBWnvsAt9yecZ83/giXvUue7Rj9NDwR4E+s8MeIy0Z9f
xk7qGwQTCmz5cjzQldBvVxW8SmpSsaRN1q6EwCh9GG3Agx+DlfmcrKjxRMrQCkXH
azhMKoi16YLjLG3nNvykcor08tE8NtjfByY0yBmsl/fZlBC4mXUwNt+cnMT83Jan
6vjlx2j+zxe+gNqIjFORCDLIImZ1Gw==
=B5dM
-----END PGP SIGNATURE-----

--yLVHuoLXiP9kZBkt--

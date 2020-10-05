Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BB8328425A
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 00:04:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727005AbgJEWED (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 18:04:03 -0400
Received: from mail.kernel.org ([198.145.29.99]:47376 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726934AbgJEWED (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 5 Oct 2020 18:04:03 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0AE0820665;
        Mon,  5 Oct 2020 22:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1601935443;
        bh=61XGn3T4xXkqPSTxzD7SbY0ibI+JKrb8n4iSHgAM7y0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=1gBpJz925Mkt8c+LEOvzjBlUY34zwZ4R5sChRzuHHq+WnmNgSKKniEi+eZPyfK/F9
         5Ikbgm0zZNiVdIbgOceXhk+tfJqTEmfD31DwB8p/IJjhgrc8pn8TlnV4JmRTqNgh7j
         ib8sEne6DdcKGGfwIn+omKKqpgrR8QgnonfOou98=
Date:   Mon, 5 Oct 2020 23:03:00 +0100
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
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>
Subject: Re: [PATCH 1/2] ASoC: fsl: fsl_ssi: add ac97 fixed mode support
Message-ID: <20201005220300.GL5139@sirena.org.uk>
References: <20201005111644.3131604-1-primoz.fiser@norik.com>
 <20201005114925.GC5139@sirena.org.uk>
 <bc31e0f2-969c-4eb1-1dc0-cf4284427a4b@norik.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="HBg0C3yr6HVa1ZCc"
Content-Disposition: inline
In-Reply-To: <bc31e0f2-969c-4eb1-1dc0-cf4284427a4b@norik.com>
X-Cookie: Most of your faults are not your fault.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--HBg0C3yr6HVa1ZCc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 05, 2020 at 02:59:53PM +0200, Primoz Fiser wrote:
> On 5. 10. 20 13:49, Mark Brown wrote:

> > If this is something that happens based on the CODEC shouldn't we be
> > doing this by quirking based on the CODEC the system has rather than
> > requiring people set a separate DT property?

> To be totally honest, we are not 100% sure if this is only CODEC's fault or
> something else might be causing these issues.

OK, the description made it sound like it was an interop issue with the
CODEC but if there's concerns about there being board related issues
then a property is fine.

> Additionally, we are using WM9712 codec and UDOO board is using VT1613,
> right? So these issues might not be CODEC related at all.

ISTR people had got the WM9712 (or was it WM9713?) working with some
i.MX SoCs.

--HBg0C3yr6HVa1ZCc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl97mBMACgkQJNaLcl1U
h9Ai9Af9EnetNzk27asZeCJEUdHxcx5lmB/10Xw9EZX8DNXzvfNdgSG4mKxKsNyz
+DRy92SDN7NXUUssT6807ne146GaVps7IEtaL0cN0h7O3xUVksrwts3lo/064MNs
BwqiHT7sB7+xjbDTSsHnvhdgcgB19Z/KkZ8euwkKjviD7MZ7d/gc6TcrsHetxjb5
E3oUYzUExSWwFKgLrd3Hl6kWAnllNqENh6ZvdVgQJK5YXTpaDvxD9qEW8Amzu6fC
pIUbIownl7b/hS/47s0mWdEToVhIV+O3Ff/touHfOSOL2HblGjDwMl81dZ88ch9E
wlNQd9ZlafSqiWdpuMXUdyFz0q28MA==
=t7Cu
-----END PGP SIGNATURE-----

--HBg0C3yr6HVa1ZCc--

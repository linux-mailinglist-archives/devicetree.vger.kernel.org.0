Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 507B640042A
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 19:30:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350026AbhICRbD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 13:31:03 -0400
Received: from mail.kernel.org ([198.145.29.99]:42058 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1350214AbhICRbC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 3 Sep 2021 13:31:02 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id ADB6061100;
        Fri,  3 Sep 2021 17:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1630690202;
        bh=ILOKCVEg/GU2ma2vAM0rasggdXVr/bBb2evSi/xMUA8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=q60iLjlbUQx1P80P2nECV2eZ/FBcP00+l9l/RSIdpiM7bmGY7OjOJc1KcK7buv3nw
         aC5EimUOv5fE5hx2VAyD5uxSVjYDSvzrAdi5nx4nfhGM4xiCKdhaJrPIsff8hPDnHG
         ytM+cdgciop3d/X3FZeCnUqb1VMKh97uxcl3+jXuzBsdv6L6UUGpTqx6AULl6dkGpD
         blavFlD7tF3PS3mIsuVIx6oFRmcggexhTwn6sborXFPtVFt5CWUN2JhW4mNEDYRVj+
         ENOrOi3ROzxpdrNGIh0DlOAVXTeoo44kOc1qTShAvoPQrxk04ZDt0RFSMAi9xeTCb2
         488BpNwirqeRg==
Date:   Fri, 3 Sep 2021 18:29:27 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, robh@kernel.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
Subject: Re: [PATCH v5 14/21] ASoC: qdsp6: audioreach: add basic pkt alloc
 support
Message-ID: <20210903172927.GN4932@sirena.org.uk>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-15-srinivas.kandagatla@linaro.org>
 <ddb4f36b-8a43-d1e9-0429-78d8eefc9474@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="GEn4szYucjS2InE7"
Content-Disposition: inline
In-Reply-To: <ddb4f36b-8a43-d1e9-0429-78d8eefc9474@linux.intel.com>
X-Cookie: Darth Vader sleeps with a Teddywookie.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--GEn4szYucjS2InE7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 03, 2021 at 09:23:32AM -0500, Pierre-Louis Bossart wrote:

> > +struct apm_sub_graph_params  {
> > +	struct apm_module_param_data param_data;
> > +	uint32_t num_sub_graphs;
> > +	struct apm_sub_graph_data sg_cfg[0];

> I thought the use of zero-length arrays [0] was deprecated in favor of
> flexible arrays []?

Yes.

--GEn4szYucjS2InE7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEyW3YACgkQJNaLcl1U
h9Adogf8CCIbwxTLYgzK5uMCVZ7zopHEWKyCmaLinXyxUYs4/ulpK5Hzzq4UlzN2
pBfynj4lv4+V7x5XzxmL+ZOCdR0YTcODcfOo/dwz1mUn3CFNA9lIAO+PRMQnpFDE
5OX0OCi5u5ADj+cAetKrQymg8X50EW6SvUGLPvsXE8t+IgiTEUZZKUAyAO/q1ogs
lB+w1+hhY8ecX8s9rSC3SEWf6DZvVNymqqJhA/H8U/jgeHNekQk1g3dnkaTeK3Ar
MS80AqbS1roc+3+2Z/XNL0rgo6Wvr85Gk/96LEC8FEiJmjHy5ty9yHytZBBNQusj
vX39jAJAgEZN71YY1UxDVpYJRfFSmQ==
=IfNE
-----END PGP SIGNATURE-----

--GEn4szYucjS2InE7--

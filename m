Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59A543D0E53
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 14:02:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236933AbhGULTa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 07:19:30 -0400
Received: from mail.kernel.org ([198.145.29.99]:54494 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238552AbhGULOB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 07:14:01 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id EEDB160E08;
        Wed, 21 Jul 2021 11:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1626868478;
        bh=baLtFlAJEjIPiYNy/i8p2sM/a2bagW2pCQyLdYEmwbI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=d+GRbb0t02nycmuFooMKU66BHuLCLb4ribUOQr+lyhRrzfVFNHg8K7/kuL6jMwB3e
         d5Hho0Mtt+DKktalG2nLOVK8He92IIO+ci3Yu8Z9mavtep0WUryBKc0DVI4Ck3lmly
         +ReG/mDwkFMi5LC+ab3F4ZHIMcMFEClwNPRho76euxerSyQgCn6h7c9ieAYgOVuUZf
         u3OXdEYUDBURSTnZw/71x4wtmQRBh8VTOY8HB5/WdesGheu1K2ti1wVEm+duhU7nVj
         EshXBdoD4gW7EHtIgcA+C+nVnk/2wMbWQcnt6YzePSfsE3gT5Cuq6FiI1vsjMtwaMx
         iXw9Rp3M8Ofbg==
Date:   Wed, 21 Jul 2021 12:54:33 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Rob Herring <robh@kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 09/14] ASoC: audio-graph-card2: add Yaml Document
Message-ID: <20210721115433.GB4259@sirena.org.uk>
References: <87a6mhwyqn.wl-kuninori.morimoto.gx@renesas.com>
 <87wnplvk2a.wl-kuninori.morimoto.gx@renesas.com>
 <CAL_JsqJKZ-sjbnihAkdXDk4tW8xVmyhwkHLHWouZg6da0cc99g@mail.gmail.com>
 <87lf60v9xk.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="l76fUT7nc3MelDdI"
Content-Disposition: inline
In-Reply-To: <87lf60v9xk.wl-kuninori.morimoto.gx@renesas.com>
X-Cookie: Many pages make a thick book.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--l76fUT7nc3MelDdI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 21, 2021 at 08:32:07AM +0900, Kuninori Morimoto wrote:

> > Why do we need these changes? I'm not wild about a new generic binding
> > replacing an existing one which only has 2 or 3 users IIRC. Plus
> > there's already the Renesas variant. (On the flip side, only a few
> > users, easier to deprecate the old binding.)

> Sorry I don't understand
> 	- Who is "2 or 3 users" ?

Just that there's not that many users of the existing audio-graph-card
(though it's a bit more than 2 or 3 and it's newer stuff rather than
old).

> 	- What is "Renesas variant" ?

I think that's the rsrc-card though that got removed.  There's also the
Tegra audio graph card though.

> audio-graph-card2 is based on audio-graph-card,
> but different driver not minor variant.
> Becase these are different, it can't keep compatibility.
> This is the reason why we need audio-graph-card2 instead of expanding
> audio-graph-card.

I think what Rob is looking for here is a more detailed description of
what the problems are with the existing binding that require a new
binding - what's driving these big changes?  TBH this is part of why
I've been holding off on review, I need to get my head round why we
can't fix the existing binding in place.

> > I also would like to see the graph card replace the simple card
> > binding. Surely it can handle the 'simple' case too.

> Do you mean you want to merge audio-graph-card and simple-card DT binding ??
> audio-graph-card and simple-card are different drivers.

It's more about making sure that new users that currently use
simple-card are using audio-graph-card instead - we need to keep
simple-card around for existing users (or at least the binding but
probably it's more effort than it's worth to merge the binding parsing
code elsewhere) but we should be avoiding adding new users of it.  I've
been pushing people to use audio-graph-card for a while, TBH we should
probably just go ahead and flag simple-card as deprecated in the binding
now since I don't think there's any reason anyone is forced to use it at
this point.

--l76fUT7nc3MelDdI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmD4CvgACgkQJNaLcl1U
h9CUugf+OgqBJP57PKzCBUfTJszQ4Wy+rLHO2QvYlJP9P1skokZ42H/MLODKVeBF
C1eQJcxxIw6Ygh2gkd5sY5NcLgw1RSRzgG58bB2doFdrEjgiTE0WfjcpIvKa+9RL
ThPtldYruMmIei4On/RQMLcfnVR1dXo1uvHAtimoctDBzleTYiTFJluhfg1wJ9dW
xRmwc2G0LGv00KdArl4dA5ZJpGbmozj+sUz4hUX5IJ4Y1RDJNfFn9wk9rZtcCGPu
OwEqUks7VSU2uVHHYOumy6cRxHkjosbVseLwmF4FFJNJjxpP8UJqp6JY0w+3RlFU
wZVAu0UrVO3sXv59QT6FeMY79D1yCA==
=RubF
-----END PGP SIGNATURE-----

--l76fUT7nc3MelDdI--

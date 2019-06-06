Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 25D2337276
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 13:07:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726969AbfFFLHA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 07:07:00 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:56361 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726103AbfFFLHA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 07:07:00 -0400
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr [90.88.144.139])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 2F512E000F;
        Thu,  6 Jun 2019 11:06:47 +0000 (UTC)
Date:   Thu, 6 Jun 2019 13:06:47 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     "Rojewski, Cezary" <cezary.rojewski@intel.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        Marcus Cooper <codekipper@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [alsa-devel] [PATCH v2] ASoC: sun4i-i2s: Change SR and WSS
 computation
Message-ID: <20190606110647.iojplb27mdo276xk@flea>
References: <20190605100801.2488-1-maxime.ripard@bootlin.com>
 <3BD9CEE4EBD5E74B98FE2D277EB60E0B38FF8117@IRSMSX104.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="o7dxdhneu2w5lbt5"
Content-Disposition: inline
In-Reply-To: <3BD9CEE4EBD5E74B98FE2D277EB60E0B38FF8117@IRSMSX104.ger.corp.intel.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--o7dxdhneu2w5lbt5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Jun 05, 2019 at 04:36:28PM +0000, Rojewski, Cezary wrote:
> >+static s8 sun4i_i2s_get_sr(const struct sun4i_i2s *i2s, int width)
> >+{
> >+	if (width < 16 || width > 24)
> >+		return -EINVAL;
> >+
> >+	if (width % 4)
> >+		return -EINVAL;
> >+
> >+	return (width - 16) / 4;
> >+}
> >+
> >+static s8 sun4i_i2s_get_wss(const struct sun4i_i2s *i2s, int width)
> >+{
> >+	if (width < 16 || width > 32)
> >+		return -EINVAL;
> >+
> >+	if (width % 4)
> >+		return -EINVAL;
> >+
> >+	return (width - 16) / 4;
> >+}
> >+
> >+static s8 sun8i_i2s_get_sr_wss(const struct sun4i_i2s *i2s, int width)
> >+{
> >+	if (width % 4)
> >+		return -EINVAL;
> >+
>
> In the two above you start with boundary check before mod yet in
> this one the order is reversed.  Keeping the same order should prove
> more cohesive.

Indeed, I'll fix this.

>
> >+	if (width < 8 || width > 32)
> >+		return -EINVAL;
> >+
> >+	return (width - 8) / 4 + 1;
> >+}
> >+
>
> Other, probably less welcome suggestion is introduction of unified
> function which ones listed here would simply invoke. All of these
> "computations" differ in fact only in: min and max boundary. The +1
> for _sr_wss is negligible, you can append it on return.

It's not just about the min and max boundaries. It's also the offset
at which to start with (16 vs 8), and the offset to apply to the
result (0 vs 1).

That's 4 parameters out of 5 that are different. For something that
trivial, I don't think it's worth it to put it in common.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--o7dxdhneu2w5lbt5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPjzxwAKCRDj7w1vZxhR
xU5ZAQDqFqCGgErcrAi4FdZbvdZZ+e5HA8TXh3Adj2HYz68TGAEAnsOVcPT4sWAS
/Bvn0cG01lOSXngr19W99FolGay/Lgk=
=cTma
-----END PGP SIGNATURE-----

--o7dxdhneu2w5lbt5--

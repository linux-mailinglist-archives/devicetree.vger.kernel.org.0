Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A51272BF78
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2019 08:34:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726305AbfE1GeE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 May 2019 02:34:04 -0400
Received: from relay5-d.mail.gandi.net ([217.70.183.197]:43389 "EHLO
        relay5-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725904AbfE1GeE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 May 2019 02:34:04 -0400
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id F10C21C0007;
        Tue, 28 May 2019 06:34:01 +0000 (UTC)
Date:   Tue, 28 May 2019 08:34:01 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: vendor: Add a bunch of vendors
Message-ID: <20190528063401.7uikujzahuq4wlxm@flea>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <20190525134140.6220-3-maxime.ripard@bootlin.com>
 <20190526160600.GA1399@bogus>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="mqpnwsn2vk4qeuus"
Content-Disposition: inline
In-Reply-To: <20190526160600.GA1399@bogus>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--mqpnwsn2vk4qeuus
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

On Sun, May 26, 2019 at 11:06:00AM -0500, Rob Herring wrote:
> On Sat, 25 May 2019 15:41:38 +0200, Maxime Ripard wrote:
> > Add all the missing vendors used in Allwinner DTS.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  .../devicetree/bindings/vendor-prefixes.yaml  | 58 +++++++++++++++++++
> >  1 file changed, 58 insertions(+)
> >
>
> Applied, thanks.

While the other patches are in your tree now, this one looks missing.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--mqpnwsn2vk4qeuus
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOzWWQAKCRDj7w1vZxhR
xQLAAQD6nKGIFIcd43Os6xkOABzRfXLk5hNDNjqwz6+qzA55YAD+Ln1mULNMU9lR
UWa0T77cSkTVD8BBjCxcUZM5jWxy0gk=
=Zkd0
-----END PGP SIGNATURE-----

--mqpnwsn2vk4qeuus--

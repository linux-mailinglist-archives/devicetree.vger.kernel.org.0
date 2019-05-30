Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7875F30257
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2019 20:54:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726670AbfE3SyB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 14:54:01 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:37841 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725961AbfE3SyB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 14:54:01 -0400
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 8BD9BFF806;
        Thu, 30 May 2019 18:53:54 +0000 (UTC)
Date:   Thu, 30 May 2019 20:53:48 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Chen-Yu Tsai <wens@csie.org>
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Sean Paul <seanpaul@chromium.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        dri-devel <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH] dt-bindings: display: Convert Allwinner DSI to a schema
Message-ID: <20190530185347.aql4znrk5msk2q6o@flea>
References: <20190527120910.18964-1-maxime.ripard@bootlin.com>
 <CAGb2v66uhrm20BwmODkPZjSM6Ek+xEg23w2Cs49ikW3WcU1Lqg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="n26wko6czjrwlbek"
Content-Disposition: inline
In-Reply-To: <CAGb2v66uhrm20BwmODkPZjSM6Ek+xEg23w2Cs49ikW3WcU1Lqg@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--n26wko6czjrwlbek
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, May 30, 2019 at 09:48:02PM +0800, Chen-Yu Tsai wrote:
> On Mon, May 27, 2019 at 8:09 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > The Allwinner SoCs have a MIPI-DSI and MIPI-D-PHY controllers supported in
> > Linux, with a matching Device Tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device tree
> > bindings for that controller over to a YAML schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Looks good to me. However not sure why you replaced the clock index macros
> with raw numbers.

The examples are compiled now, and unfortunately we can't use the
defines at this point.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--n26wko6czjrwlbek
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPAmuwAKCRDj7w1vZxhR
xTrkAP9aecEKOK5bHZC70YnbsnYn/b1tZ+7DzzXoqX/FQEYF5AEAylRFy9rknaOQ
uAzr1PQPqbqIGy8rVpSH/ibPa/zelgY=
=yRoQ
-----END PGP SIGNATURE-----

--n26wko6czjrwlbek--

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 189CA24A16
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 10:19:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726775AbfEUITS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 04:19:18 -0400
Received: from relay8-d.mail.gandi.net ([217.70.183.201]:51267 "EHLO
        relay8-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725790AbfEUITS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 04:19:18 -0400
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 4C0FC1BF206;
        Tue, 21 May 2019 08:19:06 +0000 (UTC)
Date:   Tue, 21 May 2019 10:19:05 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: Device Tree nodes ending with -supply
Message-ID: <20190521081905.hrxpob2llmtgdtj4@flea>
References: <20190520155127.cdc6dofoqckwsrrb@flea>
 <CAL_JsqJhBji40AnA=ND116N0+DkvzhX=Rt-wa=DX3Fd3uQRdAw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cq65ay2ooptglc76"
Content-Disposition: inline
In-Reply-To: <CAL_JsqJhBji40AnA=ND116N0+DkvzhX=Rt-wa=DX3Fd3uQRdAw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--cq65ay2ooptglc76
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 20, 2019 at 02:46:11PM -0500, Rob Herring wrote:
> On Mon, May 20, 2019 at 10:51 AM Maxime Ripard
> <maxime.ripard@bootlin.com> wrote:
> >
> > Hi Rob,
> >
> > I've noticed that you recently added support to validate the *-supply
> > properties in the dt-schema tools.
> >
> > However, we have a family of PMIC that are exposing a bunch of power
> > supplies (battery, AC, USB, etc) to know what is currently powering
> > the board.
> >
> > All these various supplies are exposed as children nodes of the PMIC
> > itself, and they are named *-power-supply. For an example, you can
> > look at:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/axp209.dtsi#n56
> >
> > Now, those are obviously not properties, and yet the current dt-schema
> > schemas are trying to validate them.
> >
> > I'm not really sure how to fix that. Changing the node names seems
> > like an obvious solution, but they seem to be what they should be. Can
> > we reduce the scope of the validation to only match properties (ie
> > arrays?) and not the nodes (objects?)
>
> While I'd prefer to avoid that node name, I fixed it with the fancy
> new if/then schema:
>
>   ".*-supply$":
>     if:
>       not: { type: object }
>     then:
>       $ref: "types.yaml#/definitions/phandle"
>
> I'll push it out shortly.

Great, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--cq65ay2ooptglc76
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOO0eQAKCRDj7w1vZxhR
xbWdAP9q2hlGIuZ0B/clAsr/IpvrVeYNlafIx72qJ/oQ2YzlKgD9H0Z8PN9oqzMf
HNLygFFaTCGOeyQxtNv5wftT1fWTaAA=
=Rowu
-----END PGP SIGNATURE-----

--cq65ay2ooptglc76--

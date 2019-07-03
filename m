Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 578B15ED0A
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 21:58:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726739AbfGCT6G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 15:58:06 -0400
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:55759 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726833AbfGCT6E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 15:58:04 -0400
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 80E2140008;
        Wed,  3 Jul 2019 19:58:00 +0000 (UTC)
Date:   Wed, 3 Jul 2019 21:57:50 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 3/7] dt-bindings: net: mdio: Add child nodes
Message-ID: <20190703195750.vupb3r5xoujjw6pe@flea>
References: <20190703095513.12340-1-maxime.ripard@bootlin.com>
 <20190703095513.12340-3-maxime.ripard@bootlin.com>
 <CAL_JsqKgBXxbg_9ZKfmj6y0s_5Z5QZw3RmdJfSHEpjh84m9brg@mail.gmail.com>
 <20190703141300.duhk2qj3m5qpkp3h@flea>
 <CAL_JsqLr32VK=HSeY52NCkZj-gBfLhTWu5eheXWk--fL16zBYg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="25ib7336ijmsjdbi"
Content-Disposition: inline
In-Reply-To: <CAL_JsqLr32VK=HSeY52NCkZj-gBfLhTWu5eheXWk--fL16zBYg@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--25ib7336ijmsjdbi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

On Wed, Jul 03, 2019 at 08:20:32AM -0600, Rob Herring wrote:
> On Wed, Jul 3, 2019 at 8:13 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Wed, Jul 03, 2019 at 07:53:43AM -0600, Rob Herring wrote:
> > > On Wed, Jul 3, 2019 at 3:55 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > >
> > > > The child nodes of a mdio bus are supposed to be ethernet PHYs, with a reg
> > > > property. Make sure that's validated as well.
> > >
> > > I don't think this is always true. I seem to recall there's some
> > > timestamping devices connected via mdio.
> > >
> > > In any case, it's not a long list of names, so we can probably just
> > > enumerate them as needed. Does this generate any warnings?
> >
> > I did a run on both arm and arm64 Allwinner DTS, and it doesn't.
> >
> > I can do one on multi_v7 / arm64's defconfig, but that's probably
> > going to be a bit hard to tell from the noise of warnings.
>
> I do allmodconfig because that will build all dtbs. You can run checks
> with a single schema like this:
>
> make dtbs_check DT_SCHEMA_FILES=a-single-schema.yaml

Right, of course :)

I just did it, and apart from a few arm32 broadcom boards that don't
have the right address-cells / size-cells (probably false positive due
to the fact they use mdio@something as node name), there's no other
warnings.

I'm not sure what you were on about though. If there's another node
than an ethernet phy, we won' have any warning since we don't have
additionalProperties to false.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--25ib7336ijmsjdbi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXR0IvgAKCRDj7w1vZxhR
xVMUAQCQCy0qGWX1fT3+VMSxXrsFCgBl0tUKQd7LZgRe/RuZgwEAkgTei2NisG9X
kGdN9aKhFE9NrPSPW3cnLh36AdQXUgQ=
=H5Ni
-----END PGP SIGNATURE-----

--25ib7336ijmsjdbi--

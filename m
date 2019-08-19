Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0862792504
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2019 15:31:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727525AbfHSNbB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Aug 2019 09:31:01 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:47783 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727487AbfHSNbB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Aug 2019 09:31:01 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 8E1D5240008;
        Mon, 19 Aug 2019 13:30:58 +0000 (UTC)
Date:   Mon, 19 Aug 2019 15:30:58 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, tglx@linutronix.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
Message-ID: <20190819133058.bujcawpw5rgsfp4g@flea>
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
 <9df53981-d1b2-433c-e61f-7c000c71bc55@linaro.org>
 <20190812091631.j2pr7i2zeput3hrc@flea>
 <42ee55ee-258c-7588-fea3-db3c661a0156@linaro.org>
 <20190812112411.ty3npkq6ztbushhm@flea>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="u5prx2f64eoqygbx"
Content-Disposition: inline
In-Reply-To: <20190812112411.ty3npkq6ztbushhm@flea>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--u5prx2f64eoqygbx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 12, 2019 at 01:24:11PM +0200, Maxime Ripard wrote:
> On Mon, Aug 12, 2019 at 11:21:50AM +0200, Daniel Lezcano wrote:
> > On 12/08/2019 11:16, Maxime Ripard wrote:
> > > Hi,
> > >
> > > On Mon, Aug 12, 2019 at 10:59:51AM +0200, Daniel Lezcano wrote:
> > >> On 22/07/2019 10:12, Maxime Ripard wrote:
> > >>> Newer Allwinner SoCs have different number of interrupts, let's add
> > >>> different compatibles for all of them to deal with this properly.
> > >>>
> > >>> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > >>
> > >> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> > >
> > > Thanks!
> > >
> > > Can you merge this through your tree (along with the bindings)? I'll
> > > merge the DT patches
> >
> > patches 1-4 then ?
>
> Yep, thanks!

Ping?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--u5prx2f64eoqygbx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVqkkgAKCRDj7w1vZxhR
xbepAQCWHgrNba54ySml5bNd587ZvZnP5TK5AjUaKHVhUVTzUAD+Li7sWvaQd0cZ
RqB2LELzNfW2VyjKXWSRctv1YsjZ6g4=
=fn3W
-----END PGP SIGNATURE-----

--u5prx2f64eoqygbx--

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BC62F89919
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 10:58:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727196AbfHLI6I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 04:58:08 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:41233 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727170AbfHLI6I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 04:58:08 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 44C1660007;
        Mon, 12 Aug 2019 08:58:06 +0000 (UTC)
Date:   Mon, 12 Aug 2019 10:58:05 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     daniel.lezcano@linaro.org, tglx@linutronix.de
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
Message-ID: <20190812085805.qwjbsms6kktjkf45@flea>
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ac53bymogihrt7bf"
Content-Disposition: inline
In-Reply-To: <20190722081229.22422-3-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ac53bymogihrt7bf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Daniel, Thomas,

On Mon, Jul 22, 2019 at 10:12:21AM +0200, Maxime Ripard wrote:
> Newer Allwinner SoCs have different number of interrupts, let's add
> different compatibles for all of them to deal with this properly.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Ping?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ac53bymogihrt7bf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVEqHQAKCRDj7w1vZxhR
xcoeAQDX2OPSnyQP6fMTStReVJ7LbtqbCcnDfcxvducn1Y65JAEArH9kGf+VdAsI
4xyZWrH+YOLr59ZbO6yyf/X1sDZ45wQ=
=Thbx
-----END PGP SIGNATURE-----

--ac53bymogihrt7bf--

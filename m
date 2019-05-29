Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7D7DE2D649
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 09:27:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726741AbfE2H06 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 03:26:58 -0400
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:38249 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725894AbfE2H06 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 03:26:58 -0400
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 752A240011;
        Wed, 29 May 2019 07:26:56 +0000 (UTC)
Date:   Wed, 29 May 2019 09:26:55 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/5] ARM: dts: sun7i: icnova-swac: Fix the model vendor
Message-ID: <20190529072655.3zlpssjmidbf5djq@flea>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <20190525134140.6220-4-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="mgqdrh2vmna5rpic"
Content-Disposition: inline
In-Reply-To: <20190525134140.6220-4-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--mgqdrh2vmna5rpic
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 25, 2019 at 03:41:39PM +0200, Maxime Ripard wrote:
> Even though the SWAC is just a baseboard to the icnova SoM, the vendor of
> the baseboard somehow ended up with the board name instead of the vendor
> name. Fix that.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--mgqdrh2vmna5rpic
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXO40PwAKCRDj7w1vZxhR
xTOiAP4w0jMv0U/jU1vKaNdAI7mKu22x5teHidnViwUaNQsN4QD+I9tJk+ELEHkI
1BfEXisxOX+TAViiVPuYNQfyP6brmgc=
=Iykm
-----END PGP SIGNATURE-----

--mgqdrh2vmna5rpic--

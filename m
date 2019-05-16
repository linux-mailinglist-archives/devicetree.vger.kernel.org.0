Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AEE262015D
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 10:33:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726336AbfEPIdI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 04:33:08 -0400
Received: from relay11.mail.gandi.net ([217.70.178.231]:59119 "EHLO
        relay11.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725975AbfEPIdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 04:33:08 -0400
Received: from localhost (unknown [80.215.246.107])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay11.mail.gandi.net (Postfix) with ESMTPSA id 8AA99100019;
        Thu, 16 May 2019 08:33:01 +0000 (UTC)
Date:   Thu, 16 May 2019 10:33:00 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: bus: Convert Allwinner RSB to a schema
Message-ID: <20190516083300.unlmhvr2aueawa3y@flea>
References: <20190507193848.22205-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="5rbbzdkam5ymrs3h"
Content-Disposition: inline
In-Reply-To: <20190507193848.22205-1-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--5rbbzdkam5ymrs3h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 07, 2019 at 09:38:48PM +0200, Maxime Ripard wrote:
> The newer Allwinner SoCs feature a bus designed for the PMIC, similar to
> I2C called RSB. Let's convert the device tree bindings for that bus over to
> a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

queued for 5.3

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--5rbbzdkam5ymrs3h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN0gPAAKCRDj7w1vZxhR
xfSOAP4w53UkHq9VRYESn9kb47BhLxkUOoZUaa432ND2A8uL+QEAh/meksiVja9V
X1RYaA4H2p40X7ARMa1cYAdBpBIuCAY=
=BL1r
-----END PGP SIGNATURE-----

--5rbbzdkam5ymrs3h--

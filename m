Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 052A62D64B
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 09:27:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726080AbfE2H1N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 03:27:13 -0400
Received: from relay10.mail.gandi.net ([217.70.178.230]:39059 "EHLO
        relay10.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725894AbfE2H1N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 03:27:13 -0400
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay10.mail.gandi.net (Postfix) with ESMTPSA id E449324001E;
        Wed, 29 May 2019 07:27:10 +0000 (UTC)
Date:   Wed, 29 May 2019 09:27:10 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 5/5] ARM: dts: gr8-evb: Fix RTC vendor
Message-ID: <20190529072710.ipddsox4rzeqko4h@flea>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <20190525134140.6220-5-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="qjh6lptw2dk5bg75"
Content-Disposition: inline
In-Reply-To: <20190525134140.6220-5-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--qjh6lptw2dk5bg75
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 25, 2019 at 03:41:40PM +0200, Maxime Ripard wrote:
> For some reason, the RTC vendor is reported to be phg, while the part is
> actually made by the much more known NXP. Fix that.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Applied.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--qjh6lptw2dk5bg75
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXO40TgAKCRDj7w1vZxhR
xSbWAQCWESCj0FTJl5kClqKo7k9z1VtSLNlsZs7ikyfTwXDBBQD9F02H5zZwvPJP
jPcpKgvaHfTXpGdSfeSKb0ZlgTuhEQ8=
=cUdi
-----END PGP SIGNATURE-----

--qjh6lptw2dk5bg75--

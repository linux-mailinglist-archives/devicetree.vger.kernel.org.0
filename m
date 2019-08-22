Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 469B2995EF
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 16:09:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731280AbfHVOJh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 10:09:37 -0400
Received: from relay10.mail.gandi.net ([217.70.178.230]:41887 "EHLO
        relay10.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725987AbfHVOJh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 10:09:37 -0400
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay10.mail.gandi.net (Postfix) with ESMTPSA id 617D0240005;
        Thu, 22 Aug 2019 14:09:35 +0000 (UTC)
Date:   Thu, 22 Aug 2019 16:09:35 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Sunil Mohan Adapa <sunil@medhas.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        wens@csie.org, robh+dt@kernel.org, mark.rutland@arm.com
Subject: Re: [PATCH v3 0/2] arm64: dts: allwinner: a64: Add A64 OlinuXino
 board (with eMMC)
Message-ID: <20190822140935.pwtpu7pzbd7y2xdg@flea>
References: <20190821195217.4166-1-sunil@medhas.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="o357ly3g6xw34l2g"
Content-Disposition: inline
In-Reply-To: <20190821195217.4166-1-sunil@medhas.org>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--o357ly3g6xw34l2g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 21, 2019 at 12:52:15PM -0700, Sunil Mohan Adapa wrote:
> A64 OLinuXino board from Olimex has three variants with onboard eMMC:
> A64-OLinuXino-1Ge16GW, A64-OLinuXino-1Ge4GW and A64-OLinuXino-2Ge8G-IND. In
> addition, there are two variants without eMMC. One without eMMC and one with SPI
> flash. This suggests the need for separate device tree for the three eMMC
> variants.
>
> Changes:
>
>   v3: Separate dts for eMMC variants
>
>   v2: Fix descriptions for VCC and VCCQ
>
> Version 2 of this series already committed in linux-sunxi tree as
> 8d3071f3e85894be35a1b35bcf6fdef970c81018 must be reverted before applying this.

Applied, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--o357ly3g6xw34l2g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV6iHgAKCRDj7w1vZxhR
xWLhAQDOkw9X6DlCQETlzeftJrXZtaROlRQI7eMcpSHu1NX55QD9GLwat/8lSR48
phvN3wKPU67uCQ7L3ceu7WVMPjUoFQY=
=G4R+
-----END PGP SIGNATURE-----

--o357ly3g6xw34l2g--

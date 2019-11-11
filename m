Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5C977F7440
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2019 13:44:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726964AbfKKMoh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Nov 2019 07:44:37 -0500
Received: from mail.kernel.org ([198.145.29.99]:60290 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726847AbfKKMog (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 11 Nov 2019 07:44:36 -0500
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C5A272067B;
        Mon, 11 Nov 2019 12:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1573476276;
        bh=ajhH1bcwy4ImOiIuHSO7YajCw6n21tL7RDGRVB2lHtM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=yl9Pko/Cg33dLyvhkVwIuiLSPyzwt2KxbU/Ss3AwM5MMbsQWucFJULjjtjGQ10TEx
         st47qj1aDGfQ162L1RBfekvhxpBFbYY3+GV9guBw2G8YYsCyaY4RgRwIE1wfE5Vcfa
         /fm9r/B+gbdBOdA+QpjjicrVjPAbRj1CqU/2vfcQ=
Date:   Mon, 11 Nov 2019 13:44:32 +0100
From:   Maxime Ripard <mripard@kernel.org>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Cc:     Andre Heider <a.heider@gmail.com>, wens@csie.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: allwinner: orange-pi-3: Enable IR receiver
Message-ID: <20191111124432.GN4345@gilmour.lan>
References: <20191109113436.17979-1-a.heider@gmail.com>
 <1875943.ZifhFTZG3p@jernej-laptop>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="nrXiCraHbXeog9mY"
Content-Disposition: inline
In-Reply-To: <1875943.ZifhFTZG3p@jernej-laptop>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--nrXiCraHbXeog9mY
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 09, 2019 at 04:51:39PM +0100, Jernej =C5=A0krabec wrote:
> Hi!
>
> Dne sobota, 09. november 2019 ob 12:34:36 CET je Andre Heider napisal(a):
> > Orange Pi 3 has an on-board IR receiver, enable it.
> >
> > Signed-off-by: Andre Heider <a.heider@gmail.com>
>
> Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Queued for 5.6, thanks!
Maxime

--nrXiCraHbXeog9mY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXclXsAAKCRDj7w1vZxhR
xdnRAP9kz9UkW10ZyT53shKPssao4oAtfBWovW3wUZt+pIdHlAEA8dzaiqlQxN/L
9g722MgEQ/++mOPW9dR97OJqnlwMpgU=
=wYZ1
-----END PGP SIGNATURE-----

--nrXiCraHbXeog9mY--

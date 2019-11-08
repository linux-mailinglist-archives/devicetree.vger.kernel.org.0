Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DFAC5F4180
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2019 08:47:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726672AbfKHHrx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Nov 2019 02:47:53 -0500
Received: from mail.kernel.org ([198.145.29.99]:51006 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726103AbfKHHrx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 8 Nov 2019 02:47:53 -0500
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 48E44207FA;
        Fri,  8 Nov 2019 07:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1573199272;
        bh=BEIC9kZNW/7rRYdn8u76AT0RcINEwXwV9vd7H0LNO54=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Wpyq7Y+YaOgAjqa9wd/TLcYTT5We/+G6DEsBwtYWKvRgFyl+HOihh9gNpW9oC09/N
         efRtwR49AVtAP6EEpp3a6gptyGvqIkzX15pYlWI3ewUe6E9Nh3jrmD0RmV2XAcbVTy
         ZjGMQNZeUfR9WYMgIlP81YBLed1X+5ln/Ly+HJE4=
Date:   Fri, 8 Nov 2019 08:47:49 +0100
From:   Maxime Ripard <mripard@kernel.org>
To:     Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: media: Fix Allwinner A10 CSI binding
Message-ID: <20191108074749.GB4345@gilmour.lan>
References: <20191107222027.2529654-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="LpQ9ahxlCli8rRTG"
Content-Disposition: inline
In-Reply-To: <20191107222027.2529654-1-niklas.soderlund+renesas@ragnatech.se>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--LpQ9ahxlCli8rRTG
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Niklas,

On Thu, Nov 07, 2019 at 11:20:27PM +0100, Niklas S=F6derlund wrote:
> Running 'make dt_binding_check' on the binding results in error and
> message:
>
>   Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml: $=
id: path/filename 'arm/allwinner,sun4i-a10-csi.yaml' doesn't match actual f=
ilename
>
> Fix this by using the correct path in $id.
>
> Fixes: c5e8f4ccd7750487 ("media: dt-bindings: media: Add Allwinner A10 CS=
I binding")
> Signed-off-by: Niklas S=F6derlund <niklas.soderlund+renesas@ragnatech.se>

Which tag / tree are you using to see this? We should have a fix in
-rc5 already

Maxime
--LpQ9ahxlCli8rRTG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcUdoQAKCRDj7w1vZxhR
xSu8AP4l6M5K1KJB7J1V1oU2aWJsSV6/5hKDU07CkVec0ygbAwD+LA60dPyY/elr
Q6VSn8mfaAVD+wsCqyBacDDVuw+oqAk=
=rEMR
-----END PGP SIGNATURE-----

--LpQ9ahxlCli8rRTG--

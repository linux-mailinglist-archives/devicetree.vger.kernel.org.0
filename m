Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 590E22E2784
	for <lists+devicetree@lfdr.de>; Thu, 24 Dec 2020 15:00:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726839AbgLXOAJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Dec 2020 09:00:09 -0500
Received: from mx2.suse.de ([195.135.220.15]:59824 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726746AbgLXOAJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Dec 2020 09:00:09 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 5ACF4ABA1;
        Thu, 24 Dec 2020 13:59:28 +0000 (UTC)
Message-ID: <da25a2c8fcdd5549b078446cd80db182896168c5.camel@suse.de>
Subject: Re: [PATCH V2 3/4] drm/v3d: Don't clear MMU control bits on
 exception
From:   Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Eric Anholt <eric@anholt.net>,
        Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.org>
Date:   Thu, 24 Dec 2020 14:59:27 +0100
In-Reply-To: <1608755714-18233-4-git-send-email-stefan.wahren@i2se.com>
References: <1608755714-18233-1-git-send-email-stefan.wahren@i2se.com>
         <1608755714-18233-4-git-send-email-stefan.wahren@i2se.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-SF/wIJ8KXzM2cPAzM0qP"
User-Agent: Evolution 3.38.2 
MIME-Version: 1.0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--=-SF/wIJ8KXzM2cPAzM0qP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-12-23 at 21:35 +0100, Stefan Wahren wrote:
> From: Phil Elwell <phil@raspberrypi.org>
>=20
> MMU exception conditions are reported in the V3D_MMU_CTRL register as
> write-1-to-clear (W1C) bits. The MMU interrupt handling code clears any
> exceptions, but does so by masking out any other bits and writing the
> result back. There are some important control bits in that register,
> including MMU_ENABLE, so a safer approach is to simply write back the
> value just read unaltered.
>=20
> Signed-off-by: Phil Elwell <phil@raspberrypi.org>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas



--=-SF/wIJ8KXzM2cPAzM0qP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl/knr8ACgkQlfZmHno8
x/6jWgf8DvOFJ7x+Rt7bbYKe2TRB8OW5AEsJjP3/Z4mf05WCAp0ND4dwOzfE0RIM
dKq5eUneQl7w19aHRPqRMdZydruet70/Vw5cAHvdBVwENpni/jdmwxyxOCV8ZKL7
BfwjzHopcBF+cLq/X5jtkUtWMBBsw2leeWpqKejohPzEs6fqZb7Ndyr9KH55pILE
rB4cqJaxJ8UM06AYXWqZmZa7kF0ImPU15skR2QsVjIfEiI8m+zfhZOHEj2zIudJs
Og6Iw96bn5rxuB9+ayOVwJmzpXBNz9Ub6yJ4MfH8Qd64besQIXSLPqRHG/M9+80K
9Lm/Li+snkeMW16tZTtwQb6rLW5KRw==
=a/ej
-----END PGP SIGNATURE-----

--=-SF/wIJ8KXzM2cPAzM0qP--


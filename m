Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93A0436592C
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 14:45:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231393AbhDTMqK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 08:46:10 -0400
Received: from mail.kernel.org ([198.145.29.99]:51960 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231251AbhDTMqK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 20 Apr 2021 08:46:10 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 44796613C3;
        Tue, 20 Apr 2021 12:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1618922738;
        bh=1PbygNKNA9EvrMlkEWK72bdIa0ZxSTl0x8B6/YQXO2s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=c1REMYIdhU539VDKxORP0yBu2CXY9emWxY4FW/YkH81b81jshxdkBXmKCeT+IassZ
         wXQxmQFduQp1YC78+jDyIbLhZzDNhlgfbgo7mm8+bYIhYmF9gHfYk/OvvRkUVICZ1B
         YtYWfZpl48rBEeUwhIY+P4R/r+oKXi2i3OYKuRYNKFhw6fbDlgiAmntxiV/2mRCuXs
         QIqsDOH6mCqA/rQrWQkAnbPGkcZYwM6HyXWJn6RotsibV5HuaA/B53GQUkfn+IHnKV
         JYYWvOY63af7bMyN/gvC+rljj0LH0lU9qNO0+V8oUC9iLcprsxRf/s2lNje/5U32vK
         zKUQml7HEhInQ==
Date:   Tue, 20 Apr 2021 13:45:12 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Chris Morgan <macromorgan@hotmail.com>
Cc:     alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [v6 1/3] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210420124512.GB6073@sirena.org.uk>
References: <SN6PR06MB5342B036562B085C95BDAB42A5499@SN6PR06MB5342.namprd06.prod.outlook.com>
 <20210419165116.GE5645@sirena.org.uk>
 <SN6PR06MB534296C9BA80C56C0AD694FAA5499@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kXdP64Ggrk/fb43R"
Content-Disposition: inline
In-Reply-To: <SN6PR06MB534296C9BA80C56C0AD694FAA5499@SN6PR06MB5342.namprd06.prod.outlook.com>
X-Cookie: Falling rock.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--kXdP64Ggrk/fb43R
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 19, 2021 at 12:51:12PM -0500, Chris Morgan wrote:

> If we enable the regmap bits unconditionally, is there any potential harm?

No.

--kXdP64Ggrk/fb43R
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmB+zNcACgkQJNaLcl1U
h9Dqhwf8DwMjOS3ql7o1vVhEAhOHbM0j8T7ks7rSuRBSoqrv5mU+LPb1W0vJovNv
33e7iiwoCCPMvnkxsker7D6+cLPuTpOJXSoeFzXvv93kF07XbcTiBy6jf298mLAq
FyC2cwSQiasp7rS5q+GXmzjMyg7Yymg7O0KswVqM8cqLKFkQN71ElYP8bIL/rQAk
14XnBBevdM7BBYL4AMWHiWOgxr61K8j66w3BkBrSKcZIh7qo4vXdV6j3HdbJElox
WXqejeKgV7bHSRAgg2vXNW8mVFdzJaC3Sq4VhU5jlXZbWj5ozLrHPQgEIC+M/t+/
Fvm2WBosJrq/rwJQGHrybYjkTdt2ew==
=yQfx
-----END PGP SIGNATURE-----

--kXdP64Ggrk/fb43R--

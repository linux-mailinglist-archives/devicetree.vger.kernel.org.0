Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B12F33F8809
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 14:52:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237301AbhHZMxW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 08:53:22 -0400
Received: from mail.kernel.org ([198.145.29.99]:60186 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233687AbhHZMxW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Aug 2021 08:53:22 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7A07E60E0B;
        Thu, 26 Aug 2021 12:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629982355;
        bh=k+jKDPMkrQDoBPL6bBTji+fg/yJH4WCO5skRGfORL90=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=R5ii20vj8IZkbZ2ySUYS1CHi5JAfY0HZFhupeuFGb6R8VxaE+14Didhpc0zKN8Mh6
         S0XUSNNx/0d/ALp90WOgZre9BuUtOk/HErVQd2Fa500wynIxd48Yx0mn0bdiPjmCe7
         DNJ0YSiKNKqqF6UQ1iqvuuadEQqASkrYYjNXnsAdiWG35aNNqWkZeGY4zCn9CBJXAg
         XvZIE77Wtw82mJz43QDq4vfYJCjkpr2HwpnUTGY1C+lIHlOurrlLaRC+9Uuef/UKJw
         eO+AuCuiUnnRA2xYBgnoLnr1t9afSlhm0auWKCGuT3zGf3kgdzhjtMmCbgQHEwhQlO
         CsZkFkBWO86hQ==
Date:   Thu, 26 Aug 2021 13:52:06 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     heiko@sntech.de, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH v3 05/14] ASoC: rockchip: i2s: Fix concurrency between
 tx/rx
Message-ID: <20210826125206.GD4148@sirena.org.uk>
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629950520-14190-5-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sgneBHv3152wZ8jf"
Content-Disposition: inline
In-Reply-To: <1629950520-14190-5-git-send-email-sugar.zhang@rock-chips.com>
X-Cookie: /earth: file system full.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--sgneBHv3152wZ8jf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 26, 2021 at 12:01:51PM +0800, Sugar Zhang wrote:

> +/* tx/rx ctrl lock */
> +static DEFINE_SPINLOCK(lock);
> +

Why is this a global and not part of the driver data?  It's also not
clear to me why this is a spinlock and not a mutex.

--sgneBHv3152wZ8jf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEnjnUACgkQJNaLcl1U
h9DhSgf+MgL/IQ9Mq6omKDRWYltsw14qyPu33shx7ZijOx+Opu9cYlPB75kmxRWv
ylkwSG6o1RVEmHD/Y7XifgmrS7/pk9aqxCYTF7fdgfzA6Vj20AwJxcdRq5hXtGXg
3rCgH6yqOL3qysd2VYiNOTO8jPNaq9wzeB4kwS8HC8DtBNvXXCtgID85w6Ihmqd+
FNm9G7td36rGQWX2OFy/pGWAo77ZR55VtaLM/7WWBeC0oxZ6QXO/3xwFvbFqgXF/
gLWxHGW5siQgtzqk1NDS/fmSjlQtQgTjKY3PxawKGwtTW/smMt6mp+Jz94YvbT8J
JaZ90zWGfcxu9o8JkUqGN8YIbk8k/Q==
=FFmq
-----END PGP SIGNATURE-----

--sgneBHv3152wZ8jf--

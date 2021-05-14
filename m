Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E72D380F42
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 19:50:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232178AbhENRvv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 13:51:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:49340 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231331AbhENRvu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 May 2021 13:51:50 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id BD93B6144C;
        Fri, 14 May 2021 17:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1621014639;
        bh=jYNf28zRzJSBDffE3Tvr9JhYjPINmsR9nJFi2qdxp/Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Lidc+BbSgQEfs5TVZop8wH4OeU7ku5b/raE7xOJvFdRvX9ftlIBIeT2/cV9mKpjJI
         FwpBK++peuQO31+PYLbutyrXJki+qx0w37Db+HEhNiy9AcR7YE9jL+7l/ni9LeloCx
         Eas2CR0fp/y6Rv6CBY67TtEeir0E1VXG7YSsErrHwmHgEhljgussjCKnb+TP7wR5Cq
         pDnlROJK2qf1JxGLN8BpgSjiDZxH4+i+TQsG+EefJP2xyAx3VkMG5fiVn5qa11gcEd
         RZXNuiIvKWy7QgN1H0j0En0AlX+Mv9L7YP3gfdD6bsmAoq247Vk6ov+Ey/aorxK/Td
         VGm5jLBXWCOrA==
Date:   Fri, 14 May 2021 18:49:58 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v10 2/4] ASoC: Add Rockchip rk817 audio CODEC support
Message-ID: <20210514174958.GC6516@sirena.org.uk>
References: <20210514171940.20831-1-macroalpha82@gmail.com>
 <20210514171940.20831-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5G06lTa6Jq83wMTw"
Content-Disposition: inline
In-Reply-To: <20210514171940.20831-3-macroalpha82@gmail.com>
X-Cookie: Necessity is a mother.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--5G06lTa6Jq83wMTw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 14, 2021 at 12:19:38PM -0500, Chris Morgan wrote:

> +static int rk817_codec_parse_dt_property(struct device *dev,
> +					 struct rk817_codec_priv *rk817)
> +{
> +	struct device_node *node = dev->parent->of_node;
> +
> +	if (!node) {
> +		dev_err(dev, "%s() dev->parent->of_node is NULL\n",
> +			__func__);
> +		return -ENODEV;
> +	}

There's no need to fail the probe here, you won't be able to read any DT
properties but that shouldn't stop the driver binding.

--5G06lTa6Jq83wMTw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmCeuEUACgkQJNaLcl1U
h9BxKgf/fSl9+6oIVB12S3dB4m1qbEr547nf28A1ciTOQ9Ga8SU6khBFvnTN+LX9
ibe048u1W0AQ63NahERGqZ/IBJ4a7cTfKnBM+hlDb+Tq5r3OgXbexf7kSQhpN3Gx
yqrVlrZAqs69XOJGQxcMPXZ2+FkLpjBo3CBaLjvXG4RuGZ4tijA4/aksfX2KVRlQ
qQVaNQuMJPNtPfZkNwQ+ggAPXrpOvhImxSdSmHwwvaLW3P5zvh5C0YRDNgZ1dNvo
nce7sZOxCNQlX2YYMc1Vglpx3reY+6tH5N7mAKDtVDt9nvi/jJ/oHShFBerXELwI
AKEpwYcoz7Ub+Ww9XFdEz4uGP0fF9A==
=RJAJ
-----END PGP SIGNATURE-----

--5G06lTa6Jq83wMTw--

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AB69298CEC
	for <lists+devicetree@lfdr.de>; Mon, 26 Oct 2020 13:33:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1775183AbgJZMda (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 08:33:30 -0400
Received: from mail.kernel.org ([198.145.29.99]:58788 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1775182AbgJZMda (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 26 Oct 2020 08:33:30 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 3801E223AB;
        Mon, 26 Oct 2020 12:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1603715609;
        bh=4SFrOofkbOuHq20J4eNmo7bqNQONigwBpTqFe+QuLaU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MSTvQ9JgDU4E266eDtnpE8fF00rqLD5a/zR06pFR74pkcYrVT49BHkMKe6c3hBZ/Y
         pl1wiSQKrZux5zzJ8W8cjqWoWJQ4RPXGOqeM+tlMindjzcY/6jLJm+zfLlf9D+RdsU
         z+hJjyvLO00Pf9ZfTwtTiuUnnzWjC1QQgY/+0THY=
Date:   Mon, 26 Oct 2020 12:33:25 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     robh+dt@kernel.org, matthias.bgg@gmail.com, tiwai@suse.com,
        tzungbi@google.com, alsa-devel@alsa-project.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        shane.chien@mediatek.com
Subject: Re: [PATCH 1/2] ASoC: mt6359: skip first time data at the beginning
 of DMIC recording
Message-ID: <20201026123325.GC7402@sirena.org.uk>
References: <1603521686-13036-1-git-send-email-jiaxin.yu@mediatek.com>
 <1603521686-13036-2-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="KDt/GgjP6HVcx58l"
Content-Disposition: inline
In-Reply-To: <1603521686-13036-2-git-send-email-jiaxin.yu@mediatek.com>
X-Cookie: Safety Third.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--KDt/GgjP6HVcx58l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 24, 2020 at 02:41:25PM +0800, Jiaxin Yu wrote:
> We can choose to drop away any length of data from the beginning according
> to project needs. Some projects don't want to throw away any data, because
> they want to use recorded data to do echo cancellation, so they have to
> make sure that they are aligned with the reference data as much as
> possible. Or there are other algorithms in the upper layer to eliminate
> this noise. Or some projects want to eliminate this noise form the kernel
> layer. However, the minimum recommended value is 50ms to skip pop noise.

This seems like something that would apply equally to all DMICs so
should be done at a more general level rather than in this specific
driver, for example it could be done in the DMIC driver.

--KDt/GgjP6HVcx58l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+WwhQACgkQJNaLcl1U
h9AEVQf+KDjMkz85oAAg0VSQQiu0FRenOToPtwGoQnRHHFP4/5pWNlo/BFTRsPwW
Ws/YQ+VVaEd4tRYjkiwwyl6wTG4YHhuYotHDt8ytKVlsmOAiiL7t4FD0OXbW4LFc
zhJT6TTQ8hLXystWPFnD0ls22uWoH8PvKIMZhLO61kb39D6zMYUiHZBCBeeUzpdE
KlcnnCYNa5KQ/NLKDQJyRDLbQdTkkA+B+Tg2K6NF/iuV3AX8wd6FJjEdsjRhJHHW
gUAnKtK9vcPNNfY388XcSXJwhllb6DvWRQf0RvF4+IYVO9Hb/2Tjpuk4DcKCN/xV
+ODyoEfWbZqBWEjcTOePJ969+sAiyA==
=a14I
-----END PGP SIGNATURE-----

--KDt/GgjP6HVcx58l--

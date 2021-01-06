Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14BC62EC02C
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:10:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726206AbhAFPKP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:10:15 -0500
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:44597 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726109AbhAFPKP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 10:10:15 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 03C0D5C014E;
        Wed,  6 Jan 2021 10:09:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 06 Jan 2021 10:09:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=AMfMGv8NGjUUraUJcmF/p2Kr+xF
        7CnZmDPXn8K9zbXw=; b=A6m0T83ePsBfiqYqgZUywCb84gNgWRkcoPuDh6zr91b
        9IjDD25Evyf1H7H2UFoAhUVcYZ5l6QRhYYU+5Hsv4FHLcHBFW7C9jcObAEgEf5KS
        H9i8fHFPru6Wdio7r+Z9aEqNyLx2sNpI5uB8ykXa3rIGuhxr6uKPfBkTckc1izZQ
        ayPxvhCw2B+iDkGZu9CBuCpsTD6CkBuXytEFrUEcC1TCW6P6dB4tDcFMOmNNq4YM
        ZCjN72mE03QweXe/eExkBh3UK2Si9psX/Jbyr0d52YsRlI+X7/KSMCiNc3y4NOpV
        SNV8deGYgpAPdx4BG+ENxWoWHB+112MaoLkdTZzrmgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=AMfMGv
        8NGjUUraUJcmF/p2Kr+xF7CnZmDPXn8K9zbXw=; b=cVZMnJayOPOWlUVqNtgWV3
        dTpcUCyHT731oTPVMSScx1QjVwewfLUnJdvi8aFC7Q95yGHiO0ll+kbph58OZcLf
        HqJ8XL7ghRTiuCoxq1rLXW7sEQjgTcpewus7Hr8agIhg/kX+wi8e4YHTDeFb9Vjj
        0jOw268EtLOjjTJXa67ZAC37gdq13eAzKwW5AXRNUvoUl71kKFI6J6gUlZTr0dSS
        KCqGHxmoBdSQLbAiR3kwh8MHvRqg2pOjHsq9lTS1WT4VVNbfKm+ifNHRH0ZyGEiB
        BoWCkFAVOsrtW/YVrfgwmIVhdzD9MQ9oFIPFrmpksC+MJhP+atAyDg6scpvAS5mQ
        ==
X-ME-Sender: <xms:k9L1XzKfsHNteDH8uL8VuAjru3cO3qBpPHbdZcEu0iZ09Kll88iYLw>
    <xme:k9L1X3LQSFeE53O6mshMVvYyDYb4iTC1Z7R4MPLxp4SH-AxNLkBUczTHV7x9L5cfZ
    r4wBMGOhDyc85QIbNo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrvdefledgjeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:k9L1X7uEv5G8FF62F5e0TtWhcNiPXANNZC6SjE8fvd4S5XHHvYGr4Q>
    <xmx:k9L1X8bxEuuLy0GZmNVYym8RPYU7dnF2HpylEepUnuEahRPedsGOaQ>
    <xmx:k9L1X6aZFO8LvopRk3tZJSdDO8dcdslQcKT1qrEeBWjhNPeqKOHutg>
    <xmx:lNL1X_M0LE_8sWGfMkr9AhbzsDEi02GiGzGWAEvWoElt8a3TWMLweg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 6B0771080059;
        Wed,  6 Jan 2021 10:09:07 -0500 (EST)
Date:   Wed, 6 Jan 2021 16:09:05 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Eric Anholt <eric@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V2 1/4] drm/v3d: Use platform_get_irq_optional() to get
 optional IRQs
Message-ID: <20210106150905.twjp6kvcnf2v6eqy@gilmour>
References: <1608755714-18233-1-git-send-email-stefan.wahren@i2se.com>
 <1608755714-18233-2-git-send-email-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="56ymy2nz5f75j7xx"
Content-Disposition: inline
In-Reply-To: <1608755714-18233-2-git-send-email-stefan.wahren@i2se.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--56ymy2nz5f75j7xx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 23, 2020 at 09:35:11PM +0100, Stefan Wahren wrote:
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20
> Aside from being more correct, the non optional version of the function
> prints an error when failing to find the IRQ.
>=20
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Applied, thanks!
Maxime

--56ymy2nz5f75j7xx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX/XSkQAKCRDj7w1vZxhR
xU2aAP9RMFIWJD5/tlu5qYA9TpTcXrbDwbl3p7sE+4hn4EFCxgEAvxC9lGV0og4l
O0ubClrgwfCdBtCAjwzdZcFXUqHSRg8=
=kHQZ
-----END PGP SIGNATURE-----

--56ymy2nz5f75j7xx--

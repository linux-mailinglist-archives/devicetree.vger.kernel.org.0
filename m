Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57B722DAB05
	for <lists+devicetree@lfdr.de>; Tue, 15 Dec 2020 11:43:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726512AbgLOKnF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Dec 2020 05:43:05 -0500
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:54319 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725535AbgLOKnF (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 15 Dec 2020 05:43:05 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id DD3065801CF;
        Tue, 15 Dec 2020 05:41:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 15 Dec 2020 05:41:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=IVHUcxd6jPfq0gERSuEaAzfSIsw
        xq6fdJuohmu/LEU0=; b=egPnR0Sqa+yTk4hK79/BaLtnZsh/hElYQOA4UzVraz+
        w8Uo0AKYJ9RhAedNbDpaOZOGMjFrQFGufEjWQV0K/aapRMgDW+Uj6GsQXOdXVQ2v
        e2gykxJRn924Qz9KakN/V7huDrG0YcuOrFO0GfG5S1Wj26FN2ZpO8INzFsTpBs2m
        /rLQWMPIGiU+XASCKx1O6YctquGpTs75pCVagTpmGTdXW2N6z+dhP+7cH7FN7PG1
        eS7rl2QOm1FqEk3vAX/PmB4gOu7L3k/ukKLOrcWeja6H3hX5k9ROOpmL1hox2y8Q
        CsG3gjk9FqHeD+GpXwiTDWmdEfz+sGitKmQb1hTj/HQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=IVHUcx
        d6jPfq0gERSuEaAzfSIswxq6fdJuohmu/LEU0=; b=fOL72VEhc0g9sJnVlYRO9R
        JClY06gdskAVrryVQQh9risA3JYZ4JsRLt6GzLN6Z+DRXNtkU4Jx1OheQr4FTX0+
        yMLyQQq3PNR4JLpLnI1rCT5GtX7VYaBmU1xnX9XPkgiiymzymwY0OaCLuQ+3GJlK
        E4MASRmD8c1mMW56ONpsbtYy2wZL9thYnmILaXzVy58eqI6KvKsmxpME+BjaHj+M
        M0XuYlTZB3Ejyp/wy6LGVZxCiSUvZWVNpa85Rxtt+UhDaCEJxquJEpEiH37ZDIE0
        8gYCTjZ66AH6UrKTq36x/GhnmyNGWyZ6xez5npocTHJC2yuDc95SvNlBdFyfGpCg
        ==
X-ME-Sender: <xms:85LYX_0b5RXgaNWmUxtl1uxuNGs8wms88RmR129AdGD6_ODBbxCQ2w>
    <xme:85LYXyUuE_7tO8WTa6V9ULX9iB17BD-bNxEX_BeT1A6nTvGszIobleCRRMKe-J1Gm
    WQmR2X10hbcduZrbD4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeltddgudekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:85LYX67QZstiRlLYaFoqZlEgeFSjFnNAKLhFc-WBgXGYCcMUou0lqQ>
    <xmx:85LYX5I3qk1NAvL7cL-3ZR2lnmTanPSZRDsf4AczV526gvsMX6FLiw>
    <xmx:85LYX7J0kq4eC0hDEPXGXY_Rs-eTFkFEkQ1Jz2Q-zLtotJEXvMAyAw>
    <xmx:9pLYX6vXvS_WagMQA3Q9Wuzdp4qQ8s9CWk4Go8P2ssz7Zq3v7P_aMQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 684E624005D;
        Tue, 15 Dec 2020 05:41:55 -0500 (EST)
Date:   Tue, 15 Dec 2020 11:41:53 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Anholt <eric@anholt.net>
Cc:     devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v2 0/7] vc4: Convert to drm_atomic_helper_commit
Message-ID: <20201215104153.xdwrcvi7fr7etz2v@gilmour>
References: <20201204151138.1739736-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cwkuxl3gevsekw5l"
Content-Disposition: inline
In-Reply-To: <20201204151138.1739736-1-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--cwkuxl3gevsekw5l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 04, 2020 at 04:11:31PM +0100, Maxime Ripard wrote:
> Hi,
>=20
> Here's a conversion of vc4 to remove the hand-rolled atomic_commit helper=
 from
> vc4 in favour of the generic one.
>=20
> This requires some rework of vc4, but also a new hook and some documentat=
ion
> for corner-cases in the DRM core that have been reported and explained by
> Daniel recently.
>=20
> Let me know what you think,
> Maxime

Applied, thanks!
Maxime

--cwkuxl3gevsekw5l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX9iS8QAKCRDj7w1vZxhR
xehjAP9wOcR9qJcXi7naiRZnAejp0hlygHQ6DJWoGfUCMt3SZgD+N0zHvjYPWzcd
4WJiwGq6z+Zxs0+webVjQO18NRL1wQY=
=WbCd
-----END PGP SIGNATURE-----

--cwkuxl3gevsekw5l--

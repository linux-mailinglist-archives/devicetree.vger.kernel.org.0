Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E609E29259F
	for <lists+devicetree@lfdr.de>; Mon, 19 Oct 2020 12:21:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726309AbgJSKVO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Oct 2020 06:21:14 -0400
Received: from new3-smtp.messagingengine.com ([66.111.4.229]:35005 "EHLO
        new3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726115AbgJSKVO (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 19 Oct 2020 06:21:14 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id F3A7758019F;
        Mon, 19 Oct 2020 06:21:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 19 Oct 2020 06:21:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=CmI/yzS39y8scuNl6SBtQyLPFOs
        RLDPgbQCjjFuFEoQ=; b=FpaO/kD4ZPpqNbrT4cFATBwr4nRh6cRwnAuwBdzL/Oh
        nelG/EJtb9rGBYCFSoYgvjmfU/Q0cZ/ZwkZzDL/HPDWB7Uqhkms+tV1zENZYrJwM
        iVkIAlPQ3Nu0L1jCW05H9fxaONX1ySokNQ/iI6Brm0Vagcn2+hZjcPeAgu7uJcrM
        o9fmDrtAsTzd1tNpfrqyn9I2avymWXtTp98Ne4SUmNWu7i9bVer1uJqJtGTROmDf
        9Zyz5waF6mk+o2FeC9mrwZN7k4myTdMtLN8gVwMK46f7BGNY2iK8ZiLMYrp8xqeT
        FDFXeI2ljxMpU1y1SXOIwW9GAe6dfw2yt6wjzbo3Big==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=CmI/yz
        S39y8scuNl6SBtQyLPFOsRLDPgbQCjjFuFEoQ=; b=JqDsg3al+RucRtdvg62yr0
        Cs9MyaM/+zIPEyIQg1eQsFuz86YJuM08laOvuxDpfZL6WsUgr3T29wYST4tcov9L
        i0VhA1I9tHkP8DdH4TryFaNV1MpD8jCXbgKRvV01lH5jxUqFkeG8aRv+BUVj4Xva
        Bofnpr4raX0BYC70a595U3bFpEuV8yDK0dwsHsZfz5E4KiqnLl0H7djiTi+w01xz
        GYpjO8MfeAWQyqB6m2ApeUL/N/jCiFvxa92Ro9E1UeXmexBJGBj5UUJax8SBWijj
        Z9kXc+nGx4/B84JpgoCvR2OoQdlB4zipzoRjj3DWtgA5P2FkKIDPPJaIuI5+CFpg
        ==
X-ME-Sender: <xms:l2iNX5ALBe81KWcnJX6h2mNkHFLkYRJP9b-EO9xMVCftv9pMK74w5Q>
    <xme:l2iNX3hoPx5XPl0-zyoWLFZedfpEQVoPAEfRIuI_tTWGnIYgGPHru9i0ZuALjWtz5
    FVHaNVbRf1RGXR_Aqo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrjedugddvkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:l2iNX0mj2y5yqRr5Fy2WI2RF9N1qIEEoiERAu98mFABwbaUQH-eQRg>
    <xmx:l2iNXzyIZ2LSSDvAPZCIQANkeGkC2eQzmAE6CEKIoMlKVksXxVSHIg>
    <xmx:l2iNX-StDsbb75A7dI1vNqwzJ1x18JpIIK4SPssVH8o4eVZtZlhhwQ>
    <xmx:mGiNXzjvheYmPiXo7g5Ca0acqWr7pjoorLFEazQjT9_Kdnb5sQORtw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id C10CF3280064;
        Mon, 19 Oct 2020 06:21:10 -0400 (EDT)
Date:   Mon, 19 Oct 2020 12:21:09 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Hoegeun Kwon <hoegeun.kwon@samsung.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Eric Anholt <eric@anholt.net>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-rpi-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        =?utf-8?B?64KY7ISx6rWt?= <sungguk.na@samsung.com>
Subject: Re: [PATCH 1/4] drm/vc4: kms: Split the HVS muxing check in a
 separate function
Message-ID: <20201019102109.lowyazvsbkl6ozsr@gilmour.lan>
References: <CGME20201008112530epcas1p30d837c7b03283651c988a2177558e376@epcas1p3.samsung.com>
 <20201008112519.43691-1-maxime@cerno.tech>
 <7dd0013d-b78b-7338-968f-0c42264bb940@samsung.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="kqq6f6tenjmmdcbu"
Content-Disposition: inline
In-Reply-To: <7dd0013d-b78b-7338-968f-0c42264bb940@samsung.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--kqq6f6tenjmmdcbu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Hoegeun,

On Mon, Oct 12, 2020 at 09:25:05PM +0900, Hoegeun Kwon wrote:
> Hi Maxime,
>=20
> On 10/8/20 8:25 PM, Maxime Ripard wrote:
> > The code that assigns HVS channels during atomic_check is starting to g=
row
> > a bit big, let's move it into a separate function.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Thanks for this patch set, I checked all patches well works.
>=20
> All patches:
>=20
> Reviewed-by: Hoegeun Kwon <hoegeun.kwon@samsung.com>
> Tested-by: Hoegeun Kwon <hoegeun.kwon@samsung.com>

Following some discussion with Daniel last week, this is going to be
significantly reworked for the next iteration, so I won't take your tags
(but will Cc you for the next version).

Maxime

--kqq6f6tenjmmdcbu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX41olQAKCRDj7w1vZxhR
xVYIAQCw2GCLd1VI5IaivG2ETMGZEwfakTHKBku0pCrTBAESwwD/QpzxkVa858d+
/C6vCPjhlqqjTYwzf+IB40AMm1nSSA8=
=UP7u
-----END PGP SIGNATURE-----

--kqq6f6tenjmmdcbu--

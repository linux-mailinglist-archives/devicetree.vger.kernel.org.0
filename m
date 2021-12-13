Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE3C34731A4
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 17:25:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231150AbhLMQZk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 11:25:40 -0500
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:57443 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234617AbhLMQZk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Dec 2021 11:25:40 -0500
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailnew.nyi.internal (Postfix) with ESMTP id A0040580231;
        Mon, 13 Dec 2021 11:25:39 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Mon, 13 Dec 2021 11:25:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=aer+B+lcnEMM49FAXe/Wa5BCXcZ
        nwikS+/HAy+GpLRw=; b=bLWmuay8A21AJjemj5SEz1ZVyHdW0vtdJj32COFZREj
        LPvAkL0W/lyToMmhTn6pp6cyYIEFrsJ4KgocaXU+iJUQxyVQx+yeRE3dGwSGcMDh
        YYP5fLXnmDFD7z7Olum0A2tu3ahSZS7uaSbzfRqZx+N2xcsu+1VB8VHnJ9luoDTq
        dmwCXeuz68BcjppSQ45y6BLnXmFcZ2j+5wSKpiI4+d3kcK7tvXVXuUEmA0+Ny66q
        dGnuIKF9SB/ArM9TdTnPcQA2YPkLCeWbeCEK1sbSfDNUcgcYcFwbozEKuAJcowqN
        /aj6JQoxwX2WqHg5xU/u09k0vCryYJGNJOl7Se2ZNIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=aer+B+
        lcnEMM49FAXe/Wa5BCXcZnwikS+/HAy+GpLRw=; b=TY8lZbjaLMfdcGLdPXCewD
        pHk/k2CNxFH0vgI360CWOGaClaPemASm9LRo99CHonIy1mEpPwNj/ouCEpwLmOUi
        7GPmgd1+EgHWbVT5XedkdCWuN61XTjsYW9swKAYJntDVythcpZrp/4lYINHNGjjr
        GIKp51LrmJIZHc4b1zAeRVgsYr7RRUDvvomJPy90nF28f/KtZFMQs0Hth3TB0ZK/
        jxsEXc3ozXfpT2C4N2v2X2Puu8yXZvxmfFDp8kYruAIiHQGlejjH1cFRcCT7eJtT
        dEG3x04lIQ8g7/1wz4ffC+DKE9OZnrNG8ClwLpwjKMcQXcymuA34HgvxpVOMApNA
        ==
X-ME-Sender: <xms:A3S3Yb4BdwbLNMV2TBYlpT0N339t74Fvo2UvpfXf5NKsWko-b-eOFw>
    <xme:A3S3YQ6OWlM-nqFHiypazJlsVhpTRE5CdeSFRuvuTuMvPiZv-dehPiHN2SmW01vil
    sHfYMYY0Tg56zCYAmc>
X-ME-Received: <xmr:A3S3YSdod-lbbGmfUoTl9qep6bDZy3RL7zyG8VSASGo7Zn5hoDypK4kOcXk1-K4xNLib8WFmGgarMr8uaYZ178fNiTDkZjFLct7bSzHt>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrkeekgdeklecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:A3S3YcLOQcoIYfXMclG9av7BTc7PNPyzdVpsnNVJK0mMlci-bmyT8g>
    <xmx:A3S3YfIY41CEW7_1Z9mr3UE2f6KZgECHKkkkg8535KpB5M5H9DQq6w>
    <xmx:A3S3YVynGdVKA4wubL48ps4SctFVYYKZV9CVNNrwp2YFNekRlh8Y0Q>
    <xmx:A3S3YUcbfwd1wEO6HKCJqwswhCwciyZ2VMY3AeNpgWEfM7VnYUzjQg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Dec 2021 11:25:38 -0500 (EST)
Date:   Mon, 13 Dec 2021 17:25:36 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Ray Jui <rjui@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Scott Branden <sbranden@broadcom.com>
Cc:     bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dom Cobley <dom@raspberrypi.com>,
        linux-rpi-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 0000/1584] drm/vc4: Use the firmware to stop the
 display pipeline
Message-ID: <20211213162536.u7abvsvystogpwu2@houat>
References: <20211213162437.248949-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dcxnv7jloknxsvje"
Content-Disposition: inline
In-Reply-To: <20211213162437.248949-1-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--dcxnv7jloknxsvje
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 13, 2021 at 04:58:13PM +0100, Maxime Ripard wrote:
> Hi,
>=20
> The VC4 driver has had limited support to disable the HDMI controllers and
> pixelvalves at boot if the firmware has enabled them.
>=20
> However, this proved to be limited, and a bit unreliable so a new firmware
> command has been introduced some time ago to make it free all its resourc=
es and
> disable any display output it might have enabled.
>=20
> This series takes advantage of that command to call it once the transitio=
n from
> simplefb to the KMS driver has been done.
>=20
> Let me know what you think,
> Maxime

That was obviously an error on my end, I'll resend it, sorry

Maxime

--dcxnv7jloknxsvje
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYbd0AAAKCRDj7w1vZxhR
xTbjAQDemkWZujO5xECuB2uudgoxUJuGoQxY0g5wdiyVl83yoQD/RjmrrukzVoHc
INQOlEZXHs+9P7AkoI0oweQZ+kfwPg8=
=V/aw
-----END PGP SIGNATURE-----

--dcxnv7jloknxsvje--

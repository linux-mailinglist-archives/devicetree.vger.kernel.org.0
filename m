Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A25F92D626D
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 17:50:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391073AbgLJOhQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 09:37:16 -0500
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:49203 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2391065AbgLJOhM (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Dec 2020 09:37:12 -0500
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailnew.nyi.internal (Postfix) with ESMTP id 5735058021E;
        Thu, 10 Dec 2020 09:36:04 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Thu, 10 Dec 2020 09:36:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=3z9Szm3Ad/8VO+yw0Ly9E6T/RAB
        14J7iX5gNjptn2qk=; b=q6sV9R8Zh4/AyXAVZEygTD0pmX4r8Z8xjA2j3x7ZtRQ
        mnBIQqLGlTc3d16Xv9Obh1rVukG2dIx4+JFewWFD2RimyXk4gG0HtV3mr35znFVI
        yp+MzKg6WfVcjmWZZuYckUJE4vGlqAvzw5nE9rAWwpy+gCL4Jx+0HaT98mE1WEoW
        LDnxnqbMjC8fgAAWvb+JeuX8BGSQxDC6vGj9oqCDkOKqTyoRdgZajfceCWpbIiGT
        XagGk4s60njGqfFZ6+5XLlpnatL248M72R6UYVZ+G+WsRRqqvIlKlvEkWJCU+6YG
        nCbnNCe3z6rmdXs8Odq4ewm0NMNjCx+Uwl3DP8rL1wQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=3z9Szm
        3Ad/8VO+yw0Ly9E6T/RAB14J7iX5gNjptn2qk=; b=eYTu3vwBOg6QaezX6316k9
        ayxVgrzgfMVQmHeF6XVwP5WbL1z68V4BOVw5pLpyqkxDqAqgOL6ilMDC+XiTk5r6
        bTGCSKZcjapbkz+eQf9/zoy9SYMYBZZsMDI5/o03aQSFQFaDVhJdpVXNrODxVEZm
        Ktzp52DcjdNBhKUdzQzbP//eRbCXzA5X+lWhwebiT8hAlN/ZflPrfmK0U8VBX0Ow
        XQMinv7SGaDq7nqBgpteD+rYe6zl49Bvx6TA0RkDI6KUWAvAcIL9xgqfFmXfuwM5
        gEEVqZYnpDomROaUYaRnbFc03+ZdGWvpu/KO7MmdWIAELdgEFYENWDZi35N0aChg
        ==
X-ME-Sender: <xms:UjLSX4QCGt1OtsepXCGElKY2JPiQ4RBQySfKo9pMbyZLA5bniPuEAw>
    <xme:UjLSX1sre7TuxOHq9016IxJObnhkmZ3-jvv2oWwVOrjJ92gkhnNrBH3JJbVBJPcx1
    9aUNL1JAdwEmjBk4P0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudektddgieeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:UjLSXystbgQmWFwQmYXVlExQUikt0O7Ydhpb7T_i7dAaerjZaNMKbQ>
    <xmx:UjLSXzzKzI5ekt7gvhf8F0Zhm-aLrkN-UGkMH0dHcHLcu01NJ-OJtw>
    <xmx:UjLSXwgNM1FyGxw4bs99I0pUkGarD3sYFSnchcLYgV4TDbCDHUPRYA>
    <xmx:VDLSXwVxIWowyLt0UVslKNSD7z9Mw2OEWlT6-wAxSWQ52XxfjlRZ_Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 4747A240064;
        Thu, 10 Dec 2020 09:36:02 -0500 (EST)
Date:   Thu, 10 Dec 2020 15:36:01 +0100
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
Subject: Re: [PATCH v2 5/7] drm/vc4: kms: Remove unassigned_channels from the
 HVS state
Message-ID: <20201210143601.5eq5tlcprcgr5iup@gilmour>
References: <20201204151138.1739736-1-maxime@cerno.tech>
 <20201204151138.1739736-6-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cwwd5mdmnb2nyhs5"
Content-Disposition: inline
In-Reply-To: <20201204151138.1739736-6-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--cwwd5mdmnb2nyhs5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 04, 2020 at 04:11:36PM +0100, Maxime Ripard wrote:
> @@ -893,12 +890,17 @@ static int vc4_pv_muxing_atomic_check(struct drm_device *dev,
>  	struct vc4_hvs_state *hvs_new_state;
>  	struct drm_crtc_state *old_crtc_state, *new_crtc_state;
>  	struct drm_crtc *crtc;
> +	unsigned int unassigned_channels;

This should be initialized to 0, I'll fix it up while applying if
there's no other comment.

Maxime

--cwwd5mdmnb2nyhs5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX9IyUAAKCRDj7w1vZxhR
xcBUAP98BtLSYdyG9czJbCTqk6TP3TxpOjoevKYfF6IBduwicgD+NeUJTj4zcQjZ
gHZqnkBAbtk0psU3k2/31SFSg9HzMwI=
=zdAR
-----END PGP SIGNATURE-----

--cwwd5mdmnb2nyhs5--

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DAA4258F1B
	for <lists+devicetree@lfdr.de>; Tue,  1 Sep 2020 15:31:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728161AbgIANbl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Sep 2020 09:31:41 -0400
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:46547 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727792AbgIANbO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Sep 2020 09:31:14 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailnew.nyi.internal (Postfix) with ESMTP id 2EB915804AC;
        Tue,  1 Sep 2020 09:23:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 01 Sep 2020 09:23:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=i4a4Vc79BKcVGGESDqGhBWme9T/
        FMINIMNhdV3mKrsw=; b=YbsaaUnQ0BhF+ipnLYgOmHmN1CzD1sA10EMgXtZ9jp+
        LSaENLNEJq5KOz6zG4cQSSKq2+RLLI51ZXrC1cA1o2CC9IKt0VeNcHEQn8QKEreV
        0u++kTEJ2jFERnlZ9TiN9+kgzP3P669QgKagZD/X2fT6G6LZ6CYlXrOmJQUucTHk
        uBjqdthGtyaS8TIsAw455yOWzm3j5gbo3XPkaogPYKYq9LvCQD+I5HMVuP7TVIn7
        g7Ts3aOnqOiSkKiojVsVa6nfulR8crTB/pbzNjV0FUU5L7+fygo3fmBs6zQAAnAg
        AXK8PTUDtcTVXJ9STii4BpCZWVmeV6Fj/6AqhOU27Mw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=i4a4Vc
        79BKcVGGESDqGhBWme9T/FMINIMNhdV3mKrsw=; b=VUaJGLOuL5hEse8JqhDidp
        9wspKyMohIvWDIQ5vIEYRluKOMHE/0Nd0Q8HLyFrFN4CVDlCP6JG1sVehkk6KOFs
        osfCbgYyY6jssiyJuLIX3dQweyyEKtVbOdGLlUTzEiuc3x8hat7mFV9drtJRej78
        EE9E3HzN0sAxzfFJZaLSXeJ6zQYHUVZnhWOnJpnaPBS8fcGA227sV2D80Gxa2vnO
        B8tFc43cbQbHhxHIlVtpAYSSmnAeqbxYjyZIneurlVn5iWSbsjYLjKQKa9xAN/jJ
        cjBy/RSI3AWCN2np7gRk7BxzawGmB1d2LsvvPkPs0ZTncGKR2lmeyJ/hznvn0dug
        ==
X-ME-Sender: <xms:X0tOXzSa1r-p1bhv4Bm6-AFfk9kXjmV6o8EqqoInALB0wj7BUNcG1w>
    <xme:X0tOX0x80ATydbTyK2SJbBV94Ei3ESNtuM8-xjNhYnf1EdRPXWaKmrqOcy31O9Wnp
    2yGGGPkA3NY0-bBhc8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrudefjedgieehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:X0tOX42M4dGaazBrDG-Lb3kh61UwxxUa6ZJ97nhv9pC79ZVrngOMUQ>
    <xmx:X0tOXzDyLh4WWDTsCSXS0bmHOFs0QX0T59ImtsI7fs8YRt6-39Pv8Q>
    <xmx:X0tOX8gCGCj2kF_9RBeVcay3rfl9aTB3tp4qiX-ECpfhVh4U_wowoQ>
    <xmx:YEtOX_P-pOJWpWTvcsiruOnJsTRhOJSCB7J2MneW2Rh3LegrX_WaGw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id BE16F328005D;
        Tue,  1 Sep 2020 09:23:42 -0400 (EDT)
Date:   Tue, 1 Sep 2020 15:23:40 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/4] drm/of: Change the prototype of
 drm_of_lvds_get_dual_link_pixel_order
Message-ID: <20200901132340.tahqsx3sknl47ile@gilmour.lan>
References: <cover.7029eefe5c5350920f91d4cd4cbc061466752f3c.1596101672.git-series.maxime@cerno.tech>
 <6169dd15782627c8415583881fa94ba39c4f5221.1596101672.git-series.maxime@cerno.tech>
 <20200831202852.GU16155@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3kd5jztc53k3bqxi"
Content-Disposition: inline
In-Reply-To: <20200831202852.GU16155@pendragon.ideasonboard.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--3kd5jztc53k3bqxi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

On Mon, Aug 31, 2020 at 11:28:52PM +0300, Laurent Pinchart wrote:
> Hi Maxime,
>=20
> Thank you for the patch.
>=20
> On Thu, Jul 30, 2020 at 11:35:01AM +0200, Maxime Ripard wrote:
> > The drm_of_lvds_get_dual_link_pixel_order() function took so far the
> > device_node of the two ports used together to make up a dual-link LVDS
> > output.
> >=20
> > This assumes that a binding would use an entire port for the LVDS outpu=
t.
> > However, some bindings have used endpoints instead and thus we need to
> > operate at the endpoint level. Change slightly the arguments to allow t=
hat.
>=20
> Is this still needed ? Unless I'm mistaken, the Allwinner platform now
> uses two TCON instances for the two links, so there are two ports.

Yes, and no.

The two TCONs indeed have each a port of their own, so we do have two
ports indeed. However, what we don't have is a port entirely dedicated
to the LVDS output.

Our binding uses a single port for all its output (RGB, LVDS or TV/HDMI
controllers) with different endpoints.

Maxime

--3kd5jztc53k3bqxi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX05LXAAKCRDj7w1vZxhR
xSibAQD1HF4Q5q//NoIsxVrLeCjH9AuTTUkol3pjIVBmtuQ8cgD+J0UTt6M8Hzs0
HWeFkjFwn1nbrGBWdKBi5mqzbortaAE=
=5SKz
-----END PGP SIGNATURE-----

--3kd5jztc53k3bqxi--

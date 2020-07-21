Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 668B1227B9B
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 11:23:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726892AbgGUJXq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jul 2020 05:23:46 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:35375 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725984AbgGUJXp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Jul 2020 05:23:45 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailnew.nyi.internal (Postfix) with ESMTP id 281BF58010D;
        Tue, 21 Jul 2020 05:23:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 21 Jul 2020 05:23:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=x0tir+s+BOA84v7ZwfmMnAHoypG
        Rmb6HnlXSdXNH2I0=; b=fV65wltrZ3rUv6cZRL2rvf6GyJaJowvLYnQbRlZLgMh
        iCD88uBovfc557F1XIu8yCoQBxw8OVPNqFfugeVjQllsLRRHe30Iln3yBPteyI22
        5ZxzC5kcP60fjYXBHgaAUiBsfDkjCzOd+ZAf0z+xdtsNkirS6inMddCGzbC6bEsB
        c7PoaH6fISg+aN2Iu3M+wGm5+5jW4moHa0cgBAuCGTlWN3G4fUj3Fhflq98rS1hS
        jwlmdh086G5dKlMGejGofVLuxO6xffQKKu/caInNzPg01wLsSDoYd/tRp989kDPM
        yPL2HHLVXjjA+K1da1sPE6/CYo1UivU4NM7fnzv6JJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=x0tir+
        s+BOA84v7ZwfmMnAHoypGRmb6HnlXSdXNH2I0=; b=MTnB31s3EU6RFpUCuCYDXO
        3YZk8e+bjoZ52wD5jP6RzdTjRILGC1ygxdZr/TiGlB9CMo1Czg1IQQKxgFYONlnT
        /puzlmM7YvS6MWIBGI0MuLRsQ1h35cJSUNvw5lmqtKNMFH1jOkPis01R4qYrosYZ
        wLSQHMsAhywiAkRn6ZwsM5N8C3KuDzbQSg5FS7sRsVRVDDe9tODEZQa3wFourZBZ
        zRVh4y/hblE9dkfuo04qMvRWOv4jlGB3bGo2nb/qswl0ZQNzjlI2mj/rdSLDLyt0
        xe+yuW9e1Wh0Z2mAoyMC2yQYT37cfJf0vAE3o8psdZBnydY2bAZAkgYZ1zIXFOMw
        ==
X-ME-Sender: <xms:G7QWX2Ulju6BysJfXK8sElzp_0fHg-DD7o_jaVMeQJXBKiUxDs251w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrgeeigdduudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:G7QWXynGMJ-UQ-RN-5QI9AG6o2Y7PHFQuaK3_qNR68CS8S9hDY1-Zg>
    <xmx:G7QWX6aN-cz87Hg7_1bM6MT5zocXDCAOS8JJ04bYAKio27ASwWuqgw>
    <xmx:G7QWX9Xfb0nJxrD_H6iq7g6UcZ93zRGP2W8fM63B9bSjBrxz8_1nwA>
    <xmx:ILQWX6Us7OlF1nO3lVZ_p-kWq3LT5qG9CP5naVistWKtfXrq2riePA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 7A6883280063;
        Tue, 21 Jul 2020 05:23:39 -0400 (EDT)
Date:   Tue, 21 Jul 2020 11:23:33 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh@kernel.org>
Cc:     Chen-Yu Tsai <wens@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Siarhei Siamashka <siarhei.siamashka@gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: display: panel-dpi: Add bits-per-color
 property
Message-ID: <20200721092333.yr3wwmrxwz5rvpam@gilmour.lan>
References: <20200714071305.18492-1-wens@kernel.org>
 <20200714071305.18492-2-wens@kernel.org>
 <20200721021026.GA3382460@bogus>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="odw3lcwqgr2hgq6u"
Content-Disposition: inline
In-Reply-To: <20200721021026.GA3382460@bogus>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--odw3lcwqgr2hgq6u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 20, 2020 at 08:10:26PM -0600, Rob Herring wrote:
> On Tue, Jul 14, 2020 at 03:13:01PM +0800, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> >=20
> > Some LCD panels do not support 24-bit true color, or 8bits per channel
> > RGB. Many low end ones only support up to 6 bits per channel natively.
>=20
> This should be implied by the panel's compatible property.

I'm not sure it should, or at least it's not sufficient. Some panels
while 24 bits capable might only have the higher bits connected to save
off a couple of pins per color, in which case we should probably
describe that somehow.

Maxime

--odw3lcwqgr2hgq6u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXxa0FQAKCRDj7w1vZxhR
xZkZAQDftXEa79LnkvoDY7JmWNKr84twqwgwvGDvry1EED0yNgD/T4JNTJQkfpM+
3Rm9c1KwCUpO971+NRBdz79kBZgYVAw=
=ofIw
-----END PGP SIGNATURE-----

--odw3lcwqgr2hgq6u--

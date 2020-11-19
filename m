Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C216B2B93B2
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:33:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727245AbgKSN3r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:29:47 -0500
Received: from new3-smtp.messagingengine.com ([66.111.4.229]:52403 "EHLO
        new3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727187AbgKSN3r (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:29:47 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 8DED25806CE;
        Thu, 19 Nov 2020 08:29:45 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 19 Nov 2020 08:29:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=6hUvGAfZ19Ea+2x3ZdtJmfNrC0h
        M1l3nty/18E6f97w=; b=M/1SReLKq+mq3zAoUbd8B2PcOa1ouyVgUaNRGYtTuZV
        ylUEeu+1f0GKNTVLTM2ldrLjCGyUgUGDfek3YtMJjiJQCksta3bdqVxQY8MtgeIa
        qftkFyPX65qVLepOLQMIyD000mkq0FG06hL5F1ASGuUNQafXWZYaQcE/ifP9oGRj
        SqGXarkVS7TWGknywSIlj1iY0A4V2bgZdkgJaE0J8lykvZwzbFBnc3yRkW1gHYqE
        +6MIcuTCfxpLpZl0IAJ21TyBBAydXK4R+O1HQnngMfDWw0RB8K7usB6juc/fRLC2
        b2ig0IKy8htkP94HDqqZp1svN39iTm9wDHIURDUOD4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=6hUvGA
        fZ19Ea+2x3ZdtJmfNrC0hM1l3nty/18E6f97w=; b=E+P0MLASSihgZvoGSK+xpn
        7dmCuM52q0MNsdUs36JSrJQhmJ1dHdzdVBvtlmI6PGU20EZN6pmizrk3bKtjZK1x
        5nRKwdKbfusy3vXkWjAobQTizAhcqVXzCLxmMiDUHBs+F+EeF5wvEgrkvobnFrVI
        NJhh6gnmlAPb7FlpayM2ATdI08yUbnrpQtd5jglGDeZGrf1aU+6GNlM/KD40iVvg
        fk/ZyWqqT5B1oFQgIXfyjJwWctu6Djc1rYzfDH6TLnx+8NvWS8vi5W+s6OhPuSLf
        L8UhQ8M3MTlFBbK8qx57QA43T/hDELa0rgdMbE3Rp8+RkrnSVbFsxusQfkPZi87w
        ==
X-ME-Sender: <xms:R3O2X4evDmjjCwicuR4E4-qEFeEEpH7K__sNhtUTV9g9Z29Pnvdj7w>
    <xme:R3O2X6MiXqoWs_-u1dL0iyQxiLm9wtR8aGCfySDhOCvrGtV3rxpg1D1bKp-Nqn1Mz
    gAwXcj_YDka2ZW6M7s>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudefjedgheefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:R3O2X5iJ11wJKjmyG4qRmUW1Hs0gMwBAqYY_e1OKvj9TqcpFPNcUXA>
    <xmx:R3O2X9-RZxpLatzx-spWWlnyd3nzLxGE0CENSIy39gvQvHFAL87RuQ>
    <xmx:R3O2X0s6_2JCdhHU7ylzsL3XLFfltiaAZIaD3ygQa7ZE_BGiQiCeZw>
    <xmx:SXO2XxOCiRatTLFY21oqQVdv6WzVQiX4yrdyG6dZIxp0P_JDCrBPLg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id ECF103280063;
        Thu, 19 Nov 2020 08:29:42 -0500 (EST)
Date:   Thu, 19 Nov 2020 14:29:41 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Eric Anholt <eric@anholt.net>, devicetree@vger.kernel.org,
        DRI Development <dri-devel@lists.freedesktop.org>,
        linux-rpi-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v2 2/2] drm/vc4: hdmi: Block odd horizontal timings
Message-ID: <20201119132941.76fdyjfke7hnsvtp@gilmour.lan>
References: <20201029122522.1917579-1-maxime@cerno.tech>
 <20201029122522.1917579-2-maxime@cerno.tech>
 <CAPY8ntCBGBv-FkOD1qR4-xOsKSB+G1Qcy5rcebRmkVWiwpRUzw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ctlopq7xqkqmmlh6"
Content-Disposition: inline
In-Reply-To: <CAPY8ntCBGBv-FkOD1qR4-xOsKSB+G1Qcy5rcebRmkVWiwpRUzw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ctlopq7xqkqmmlh6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 19, 2020 at 11:14:50AM +0000, Dave Stevenson wrote:
> Hi Maxime
>=20
> Thanks for the rewording :-)
>=20
> On Thu, 29 Oct 2020 at 12:25, Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > The FIFO between the pixelvalve and the HDMI controller runs at 2 pixels
> > per clock cycle, and cannot deal with odd timings.
> >
> > Let's reject any mode with such timings.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

Applied both patches, thanks!
Maxime

--ctlopq7xqkqmmlh6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX7ZzRQAKCRDj7w1vZxhR
xa46AP4tNoz5LDC2RZbSM5IdAloUpS1zGpCFql9crkMpVvo+egD/QwRrF4/SN2OA
zu0OCRfH/uujUbd1z0mEfu/I3G7dLAY=
=zfUV
-----END PGP SIGNATURE-----

--ctlopq7xqkqmmlh6--

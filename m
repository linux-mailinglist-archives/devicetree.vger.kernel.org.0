Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09D2B2F6072
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:45:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726329AbhANLoc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:44:32 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:33709 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727662AbhANLob (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:44:31 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id C157C161B;
        Thu, 14 Jan 2021 06:43:44 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:43:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=EvFydPWoZX2zJB+JxKrRLFkgpd3
        O1rW/NFs1l1sd2cs=; b=OiOxYp83/QrQjvUfdjCt2sagWyjggCRPQu2SlGSEnSm
        GR19pVs8Xt/Tv/i04sV3kuFfnG7G5RwCt6Cb4+QdcfNO9h/CeAbGbnyl5IXlRrTj
        INlQm7BcpnO3vzcZe9UY+AZTqOwMFJtffW3TF6FFZgL6iGf2jtgnXBbDEI5rYjG0
        nZI6jUv6IUfEKGDX37P4JqNpNWGNmPUd4l55pT/rygB+CDS/fgt2AsMUl82t5qYz
        XGlaMgHfh4SoZAIcNB2QH4lcinXuvt63Tr+byiu8N2UOhi39h+PUdE4hLl0RXxLa
        eNfMYzlCfywvUvwYTIRo4pZv/ZM8jtUcCRNtwXoG6Wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=EvFydP
        WoZX2zJB+JxKrRLFkgpd3O1rW/NFs1l1sd2cs=; b=UqRSKcqeTiD4nLs/Hsbe+I
        v+7b+neNj7F7xfGRDuxDTO+wDBl5wQj2OGM3nCqV37s6tp9XqcFWyC7M2rNJ01X4
        GYbThoAZ7LKaDKjb0mOeF3NCHLUKGAzf0/AqZbLUBsCdqMDfO21VElNOpF/IFafS
        07e++/99SeqsSoJHDiSM5mexVg4nuEQdeFWRfXbAPodWKLa9nceEBa/o+Bq+mHKt
        dLHYR2Wi1VK7nZwcZc7SvOjRdqeimagX/jJZPtscoC3f72DPr7FJrSlxcMX4p9CM
        loe5JGQomBUWR9WJUP7TN3WtS6CPVhkGAZZE9DuYudKO8AgQx18BFlv7cI1S0KZg
        ==
X-ME-Sender: <xms:by4AYAc6tu4Tw80LWJZRX8Q0AOtAiwCslXdFC8dvILjpaaBkBc-ACQ>
    <xme:by4AYCMbIzTCIssegVSoydjWcnnVtf_kxoN22wUtEkJW7sp1fFK-HBbgIW83KixNf
    cGrv369WgSwuZrZZiw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddthecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:by4AYBhY-BLkHz5FByiYSH8Pd33RBaTzgPt5UabXhMhkrskEVgP0CQ>
    <xmx:by4AYF9-5n2uEVIx7lA_2S9rx8NcHbCkvsg1YZUaT-VDlKj9gkzRGg>
    <xmx:by4AYMvshM7LCgLglRtm4gqyoc9mS3-Eh_vBOxb6UJhsdi0b_LCyfw>
    <xmx:cC4AYAgvUp_me-i8kibqp-eqf1fdOgECaB44lcprMP6nXQSLhiabyw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 6271D240057;
        Thu, 14 Jan 2021 06:43:43 -0500 (EST)
Date:   Thu, 14 Jan 2021 12:43:42 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Eric Anholt <eric@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V4] dt-bindings: gpu: Convert v3d to json-schema
Message-ID: <20210114114342.yxognfrkrazl2f3z@gilmour>
References: <1610564917-11559-1-git-send-email-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wj7rox6m6of62to2"
Content-Disposition: inline
In-Reply-To: <1610564917-11559-1-git-send-email-stefan.wahren@i2se.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--wj7rox6m6of62to2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 13, 2021 at 08:08:37PM +0100, Stefan Wahren wrote:
> This converts the v3d bindings to yaml format.
>=20
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Acked-by: Maxime Ripard <mripard@kernel.org>
Thanks!
Maxime

--wj7rox6m6of62to2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYAAubgAKCRDj7w1vZxhR
xYJqAQDm7tNI0F7G/PAfwRuT/510RnEOCxhcgFm0xoP4tAIufAD/Uyi2I4E89126
UAWuxLzMdVn1C2IzV4PyDCGOf4AEtA8=
=yT6Z
-----END PGP SIGNATURE-----

--wj7rox6m6of62to2--

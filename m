Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F36F5673370
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 09:16:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229695AbjASIPz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 03:15:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjASIPw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 03:15:52 -0500
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5090745BDD
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 00:15:51 -0800 (PST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 332D3320095E;
        Thu, 19 Jan 2023 03:15:47 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Thu, 19 Jan 2023 03:15:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm1; t=1674116146; x=1674202546; bh=AZRqOyZ8Jg
        0MbSigIqhiYgKAcHHhTXZH8+7bfjgrWU4=; b=LP5+JNiwkPnLwEx6u9gEKvzPak
        gR9u40GgP9CcYVOzfbGhJ2/ZgWW4sQNJt0BQ2YWZtlCtkhNU27aKU1NlfEwocW4s
        deNlxLjDFOJg5XLWCxO+xqqw40kCqJ1Bee1H28cpUagno9js3vjSQNu9omlLfmO1
        UA0XYllwYU/kfFEXYNfy3gc7K+F2AuydY3HKCCyRpZmaKoyrIL2tQ79r4zkO6Rbt
        WGWnSTHP0ca/s7nppeht4wmANRjNUClAb4d11HYGO+mwzBnyqGFkvQMelbRzo/Vt
        YisWgjxYgFwtI8ePMb9d0po2oEubJj3IJTbpMuGpzVAkf3IK9tVh10SxHkfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
        :feedback-id:from:from:in-reply-to:in-reply-to:message-id
        :mime-version:references:reply-to:sender:subject:subject:to:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; t=1674116146; x=1674202546; bh=AZRqOyZ8Jg0MbSigIqhiYgKAcHHh
        TXZH8+7bfjgrWU4=; b=VaQLe8YARBu4q916stigTGelbMrwK68R9xSCbIanguf+
        l7ie2L/BlLaxqZL1+b4KE+FIjoAjvUormBsO7NJ+ug9o8HD//ybJxA1CyOBeAQTP
        s3Qw8tbJl3kiXKk8wrz+ZIjsPP7JSjGwMM2SgpAAtnuHU8Nz70iqJJde4bbqc8qO
        C1SIPoGPosf2Mhanzij0adU9xkbvTzrnu1nI2uIrSlbmKSbXI5iQEjdi7VQGKvPT
        +qkfvFQtuLWZtN0y4hTeF57DxsOFAlveeJmsPrJpDy2HToPXx8xDRLrY2wbD+oOO
        BzNnB/8LYg5fjf/yBhGInIElQal4bkMGcj/5uJS5ig==
X-ME-Sender: <xms:MfzIY_Nm7wDMMrKoKqunBID-IyJkvuYtzDQpT7OQbFYOxFXBXYjf_Q>
    <xme:MfzIY59DZ2bm_m915g_KP5xwa9hwOgtfiEQuyl5jjJNGclvfoGX-6MJxSt8HyGEQ6
    lGtRpVSLOuF0OePK9E>
X-ME-Received: <xmr:MfzIY-T8rJAxohiu_j7QTKpGtJWMp8g8_pN46xmg9L9i1DoC9M6BodfOc13bAOgB0ThD_SUUP0rxgYHM-asn2H1IhLt2k6D6Y50_3CCG5MD-mg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddtledguddukecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgig
    ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrf
    grthhtvghrnhepteefffefgfektdefgfeludfgtdejfeejvddttdekteeiffejvdfgheeh
    fffhvedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:MfzIYzvx7yNbHEBqSgndxb-UFJbYvwmKoto5AyWb1XIIvtdk_8nRvQ>
    <xmx:MfzIY3d8jKhKldvaar3p6WSbbFVqZAdcwquOzs4eVSxO3k4JkqReqg>
    <xmx:MfzIY_2EPmypF7BSidS5QFm8Tl13sZnhF-tPzJzebSysey09PSp37g>
    <xmx:MvzIYzr1AuA9avFaah3yRML2Lcp1m-BqegNjohm-I2hapr5cMYumDw>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 19 Jan 2023 03:15:44 -0500 (EST)
Date:   Thu, 19 Jan 2023 09:15:42 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        linus.walleij@linaro.org, Chris Morgan <macromorgan@hotmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH V11 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Message-ID: <20230119081542.lfgvaj6lwwdb2eaa@houat>
References: <20230118233135.1174859-1-macroalpha82@gmail.com>
 <20230118233135.1174859-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="xnang3wyffhh7tnm"
Content-Disposition: inline
In-Reply-To: <20230118233135.1174859-2-macroalpha82@gmail.com>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--xnang3wyffhh7tnm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jan 18, 2023 at 05:31:32PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add helper function to find DSI host for devices where DSI panel is not
> a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> official Raspberry Pi touchscreen display).
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>

Sorry for not noticing this earlier, but this is a bit confusing.
Signed-off-by is there usually to follow either the authors or the
maintainers (or people that passed the patch along).

Given the order, the SoB here indicates that it's Maya Matuszczyk that
committed/submitted that patch, while you are the author. Obviously,
that isn't the case since you are both the author and submitter.

So what's going on?

Maxime

--xnang3wyffhh7tnm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCY8j8LgAKCRDj7w1vZxhR
xZ1XAP9XFViG0eHZD7K5/KzeUiZe3lVYfB1DC8XKmh9GP2ag3AD7BlvkM95/uzQj
IfPVTz2J4DzlByHwREBzcFBWojs09wg=
=JHSM
-----END PGP SIGNATURE-----

--xnang3wyffhh7tnm--

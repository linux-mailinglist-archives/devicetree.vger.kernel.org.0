Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10ADF53EB1E
	for <lists+devicetree@lfdr.de>; Mon,  6 Jun 2022 19:09:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239060AbiFFNrx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jun 2022 09:47:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239057AbiFFNrw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jun 2022 09:47:52 -0400
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1D4F99814
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 06:47:51 -0700 (PDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id 0837D320094E;
        Mon,  6 Jun 2022 09:47:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 06 Jun 2022 09:47:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm1; t=1654523270; x=1654609670; bh=YpFYNv7QOh
        4+yxcwjwur3dorr2EdlcofAUzMq4w1odI=; b=RCib4ykUbycziixbr4XJNn3drn
        FiNRogwbWZaQPsOOydF1bdxxg3QDpRxTUyfBx91D0cQe/jd2P9telTcnQ2hnV1Vy
        fb6ChM4g3NtFFEkd6RfjqD0pgMUSMhhcZmKjUqDn/Z9Ig2COSs38CkHdl9UWEpnY
        pvy+fsRvwX3QOfx/6dVvtz5frbkFHs+P0CytNKWcxfg6y4CcFpdXiPDdYYkZhjQa
        inPpLrxtSHv/g9i+h5EStMMHCTS1DDqbVn+CCWwMCL0hXdryCdbZ6qbjsWc8r2bF
        D6JzZ2jrkktBDDQKvKopJKkGo5v2SMLTQ87x2bakwA+0EqCq07HQZ8SQ/NFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
        :feedback-id:from:from:in-reply-to:in-reply-to:message-id
        :mime-version:references:reply-to:sender:subject:subject:to:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm2; t=1654523270; x=1654609670; bh=YpFYNv7QOh4+yxcwjwur3dorr2Ed
        lcofAUzMq4w1odI=; b=x3f4TrhVRDelyKvcYWqgkX7SwCgcAGzXEAtv7A89cK1y
        0wmbQjt2+sbuCMlUwx9MpZeaLP0i4KXBoRzaMzwxaFYK2UTOJ0c4/XxEkTVgByCB
        zJ2cQiJynI+b2p+a+BQ9GdFcxK7dFMP8ftf28xVww3W7072uo5An9TrCCJgVrfPh
        kYfxiIhcR08EquQo2vl01Fu9C2MbcUxVcQUi4id0YpPUpLklYg1etahUbM7gEFHp
        obQbYI5gxfrOuQVkXyLyODs7Z3whTqhzzJjI6j1a0XU73tU2i0RPvvWK5hJedkdO
        GbDBOh4/+BnG7eUWTzNjzeJOsZm34oSuzGROqOjO1g==
X-ME-Sender: <xms:hgWeYsElrFXscygOx6Ucj32ow-AdrGwWFjaL73bQeL21UENUP8z6ZQ>
    <xme:hgWeYlWVGZhkxzHhpcQ4VhDPdD39GkisP8B0Vq-Ml42s4oSIVj6gnZQpxdlfpqQ0q
    PFDVe_JB9AH9414wds>
X-ME-Received: <xmr:hgWeYmJLyxba5NsfyKZutYlGtI7y-VWQeEctPi5hCe5tCb3RfSSdx7lr4dk9C16tfn96dGVyC0XVQ7eaNsswYu237JhQKBizcQ-ZBAo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedruddtvddgieekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpedugfdvgfeiiefgheevueffleffiedvtdevkeehudefjeeivdegteefjefh
    hfeuudenucffohhmrghinhephigrmhhlrdhsohenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:hgWeYuGQhBlg9ML_ChHm_tLIwd39_rGgxR8DI2h0vw6AjsIWszG0EQ>
    <xmx:hgWeYiWaS-EwRD6ijIJfSakITYInWhu6CNZpKpTEFmWuZ_F04v-ykg>
    <xmx:hgWeYhN8sIpz0Cdb1OcbzIshzuffEqqOu9MfZCdCvpU--iP0HlLS2A>
    <xmx:hgWeYld37mrJa8_XNWEVydpSJD_CBqoHbTPRjW1v7q8kUJx4bNErSQ>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Jun 2022 09:47:49 -0400 (EDT)
Date:   Mon, 6 Jun 2022 15:47:48 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: display: bcm2835-dpi: warning about #address-cells',
 '#size-cells'
Message-ID: <20220606134748.zkmndftkorygdu4w@houat>
References: <a28d1fe5-eac8-bb86-cbda-f3236c104d61@i2se.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="gudndhwlv3afkpye"
Content-Disposition: inline
In-Reply-To: <a28d1fe5-eac8-bb86-cbda-f3236c104d61@i2se.com>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--gudndhwlv3afkpye
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 06, 2022 at 01:40:19PM +0200, Stefan Wahren wrote:
> Hi,
>=20
> recently i noticed the following warning during "make dtbs_check"
>=20
> arch/arm/boot/dts/bcm2835-rpi-b.dtb: dpi@7e208000: '#address-cells',
> '#size-cells' do not match any of the regexes: 'pinctrl-[0-9]+'
>=20
> During conversion to DT schema 094536003e06 "dt-bindings: display: Convert
> VC4 bindings to schemas" the properties has been dropped from the example.
>=20
> But i'm not sure how to fix this properly (drop them from the bcm283x.dtsi
> file or add the properties to brcm,bcm2835-dpi.yaml).

So #address-cells and #size-cells are used to get the children register
address and size.

However, for DPI, it's not clear what the child node is going to be in
the first place. The only one that stands out is the port node, but
there's a single one. So we don't need a reg property to differentiate
between multiple ports, and thus we don't need #address-cells or
#size-cells.

The proper fix would be to remove them from the bcm283x device tree.

Maxime

--gudndhwlv3afkpye
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYp4FhAAKCRDj7w1vZxhR
xaCkAQDo/tJkiWGSyxp1qR/tXv4JDzdA9JCcN1iUO4WqKgWjSQD/dPGlyaG2zOBq
jKdNgKmr99ApVLCXfpzedB58hhUTUQM=
=YPXe
-----END PGP SIGNATURE-----

--gudndhwlv3afkpye--

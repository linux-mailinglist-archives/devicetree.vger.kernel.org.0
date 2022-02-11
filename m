Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70C244B2712
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 14:28:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240082AbiBKN2Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 08:28:16 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:52344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349252AbiBKN2Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 08:28:16 -0500
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81E631BF
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 05:28:15 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id 7CEF03201FEA;
        Fri, 11 Feb 2022 08:28:14 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Fri, 11 Feb 2022 08:28:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm2; bh=PzaTN7mlEKSxMvKGHYiMk2tpJE/2C3uzL3iB4/
        KuUtk=; b=VBM0F/IipLdJphRO3uoN1KHR2yYCXB97SaBWxf7/sPLkzmGkWhghGs
        nz2HFKrsO2+xRfoCeXuvswL6kDmjgEHBRH/prnteIpio08TxAhl3G37r4Rb1c1Uj
        9pKEL+vRPtB0XBskYDnywPeHaB2TMLoUQVdQDJYU2n8+QmLOFUPPwKl1p4ZXlC9d
        h6vOuXBodPnsWYIh8keCg1aWuyMoDd/L0Kaa4H0skc+5zEaF/BF1jqu1JFCVW8u3
        VLgB6ZudUNSzO8TL73ghfK5w8OI+NUBhyxzHBhToIoPCadj8Fr8m/UKaCaoA6ncf
        dfBXo5cPFotChcJxd00h3AnEPtR1Soqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=PzaTN7mlEKSxMvKGH
        YiMk2tpJE/2C3uzL3iB4/KuUtk=; b=d8adZPQiCHrtimjrj0uzDm9Z/UEuhTFk9
        KUDC2gWCe59pv2GiYvWNqjfPeeKrEayIuFfX3/06CBrdbANIstStRS4gsZb4McPU
        FmnRa2uB2ueDezEKl4lAPE3LShnu7bgfOKZI4HkGpNPHE2UP7l98Lf+BXT94xNnp
        mPdMcxIN7s8DztVf28EpjLL9+9cGnIGW8Ov2ICrz0JYw+W2ztihXSnAuEoBo216t
        8MuWecSrymKDcypzPcUcFOV3fINQqpIx9rU0h9AS7bUJnnTzjdv3emtexI/tJ1m3
        HxFUsHf40ATk+BoUWNFupTJBzfngU4I9xeoPcrGzbLZ6RC58V0ehA==
X-ME-Sender: <xms:bWQGYgjW4E0Ija81r84ZW_Ld9GNyACFVgIMu2eUpnU1KVMDzozIbbw>
    <xme:bWQGYpBtXLBqzBocWB5ISEhtKP0D6U4x2pTA-gwNfMrP4Vdl58aW3SZZC6GdK6Wgw
    6vsWhNX3Y8mD44Bx1A>
X-ME-Received: <xmr:bWQGYoFe6vlc34QoY-_yOAaE3V-7G6VPI-GaXum187DjC3niEdqhG8BC1uijzcZDtzjRL0lWlAWrG1MCVTkr_uFog6Nh4PIIA7JQD7I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrieefgdehudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeduvdduhfekkeehgffftefflefgffdtheffudffgeevteffheeuiedvvdejvdfg
    veenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:bWQGYhSPgTvOO3ANAsBnE7FdJU2rpsFuLPipaQXx9d24jdNbn-qWLw>
    <xmx:bWQGYtynaTe5B88LCvFMYDuqoZdFQRoq5gX2cTzzyDRRenDHOBnXow>
    <xmx:bWQGYv68goypCXU3pH1jb55q7c1J2EPWjL9C4vN7Pyaq5a1JKIwJ5w>
    <xmx:bmQGYknNzy5_918OmvkR3h_YwYDZdhCHJDLvZ-mzzkqbofJ0yUcyog>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 11 Feb 2022 08:28:12 -0500 (EST)
Date:   Fri, 11 Feb 2022 14:28:11 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>
Cc:     robh+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 2/3] drm/mipi-dbi: Add driver_private member to struct
 mipi_dbi_dev
Message-ID: <20220211132811.nx6sdsixbilejjbm@houat>
References: <20220211130434.20732-1-noralf@tronnes.org>
 <20220211130434.20732-3-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="xkdrobkukfhjqffv"
Content-Disposition: inline
In-Reply-To: <20220211130434.20732-3-noralf@tronnes.org>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--xkdrobkukfhjqffv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 11, 2022 at 02:04:33PM +0100, Noralf Tr=F8nnes wrote:
> devm_drm_dev_alloc() can't allocate structures that embed a structure
> which then again embeds drm_device. Workaround this by adding a
> driver_private pointer to struct mipi_dbi_dev which the driver can use for
> its additional state.
>=20
> v3:
> - Add documentation
>=20
> Signed-off-by: Noralf Tr=F8nnes <noralf@tronnes.org>

Acked-by: Maxime Ripard <maxime@cerno.tech>

Maxime

--xkdrobkukfhjqffv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYgZkawAKCRDj7w1vZxhR
xZngAQCv16+b1+ZuKquRTQGqbB6QpVPUH7zQb8+TtWccxNvVbQD+KG0DEiIU+8fd
3gVk9PRMsNSGInpFlF3OzjgpuZt+3gk=
=/K/q
-----END PGP SIGNATURE-----

--xkdrobkukfhjqffv--

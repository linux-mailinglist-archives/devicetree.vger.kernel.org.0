Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 272EB546507
	for <lists+devicetree@lfdr.de>; Fri, 10 Jun 2022 13:06:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242403AbiFJLGZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jun 2022 07:06:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243365AbiFJLGY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jun 2022 07:06:24 -0400
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79BA0142A93
        for <devicetree@vger.kernel.org>; Fri, 10 Jun 2022 04:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
        s=20170329; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=hUj5o1DqAnHiMLID1jpTTw5PR6O+o4eTCGW3sI8ghOc=; b=r3Pw474NT7PlTt0K4Qiog96V0d
        0V7BVACQ/PCdQkDR1YZVcaH9KQmB6bdQiLyK29jmm+Ny1CwYOXL6hOrs2/zsAtaPdetkO2zE7fkrv
        P690Uh81ark1/7Q2Mgfvd2gN/Z7jWsWYb3BvCrvRb12mgZL/iNQbz3KBEbKsI6Jkm66L1+x7ssDc7
        muEhzOaA1BN6jpjGzliZSBCE27PVD5xDi452DjjtT/yzKMcJTwjRm9Ea3182lJrzcuiNJGDDr0lR6
        0efVJ4y3B03b4K7gZ7xxr2a85MV5EvahnKUPMAzxyotp5GqNCbHFhzojRV0gL/Ix9igQAfx6tixmA
        877FlZ7w==;
Received: from [165.90.126.25] (helo=mail.igalia.com)
        by fanzine2.igalia.com with esmtpsa 
        (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
        id 1nzcSv-00FyEU-BJ; Fri, 10 Jun 2022 13:06:09 +0200
Date:   Fri, 10 Jun 2022 10:05:56 -0100
From:   Melissa Wen <mwen@igalia.com>
To:     Javier Martinez Canillas <javierm@redhat.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Subject: Re: [PATCH v6 0/6] Raspberry PI 4 V3D enablement
Message-ID: <20220610110556.63mddbye7vxq6mzb@mail.igalia.com>
References: <20220603092610.1909675-1-pbrobinson@gmail.com>
 <cadecbfd-e174-eadb-276c-577bb2bf70f2@gmail.com>
 <9aaaaa29-11c0-d494-11dd-0bbf5d384364@redhat.com>
 <20220608155130.w4piz2g3obp7qnx7@mail.igalia.com>
 <40f27e32-720a-2f51-2164-5e152f53443a@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="jmztf5qy6qwyt4jv"
Content-Disposition: inline
In-Reply-To: <40f27e32-720a-2f51-2164-5e152f53443a@redhat.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--jmztf5qy6qwyt4jv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 06/08, Javier Martinez Canillas wrote:
> Hello Melissa,
>=20
> On 6/8/22 17:51, Melissa Wen wrote:
>=20
> [snip]
>=20
> >>>
> >>> I can take the last 3 patches through the Broadcom ARM SoC pull reque=
st,=20
> >>> but the first three should probably go via the DRM tree unless you wa=
nt=20
> >>> me to merge them all?
> >>
> >> I can merge the first 3 patches through the drm-misc tree. Can I get
> >> an ack from you for those ?
> >>
> >> The changes are independent so there's no need for an immutable branch
> >> or any kind of cross tree coordination.
> >=20
> > Hi Javier,
> >=20
> > I'm not sure if you're suggesting here to apply the entire series as it
> > is now.
> >
>=20
> No. I suggested that could just apply the first 3 patches that were relat=
ed
> to DRM, not the last 3 three since Florian will pick those.
> =20
> > I'm not able to have a functional kernel from arm defconfig, only for
> > arm64. I'd like to have this issue clarified before merge this serie. I
> > tried multi_v7_defconfig on raspbian 32-bits and got a kernel panic.
> > Things work better when using downstream bcm2711_defconfig.
> >=20
> > If you have an idea of what is going on, please, let me know. I can try
>=20
> Can you please share for info? For example your boot log when it panics,
> maybe that could shed some light on what's going on.
>=20
> > again and I'll be okay on merging it. Otherwise, let's wait for more
> > inputs to have a better picture of the situation.
> >
>=20
> Of course I don't plan to push patches that are known to cause issues.
>=20
> I mentioned that could help merging the DRM changes if needed before
> you sent your bug report.

Hi Javier,

Thanks for waiting a little.

Stefan guided me to the missing part and I'm okay on this serie.

If there's any r-b missing for drm/v3d, you can add mine:
Reviewed-by: Melissa Wen <mwen@igalia.com>

But if you prefer that I applied them, just let me know.

Best Regards,

Melissa

>=20
> --=20
> Best regards,
>=20
> Javier Martinez Canillas
> Linux Engineering
> Red Hat
>=20

--jmztf5qy6qwyt4jv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEd8WOo/JViG+Tu+XIwqF3j0dLehwFAmKjJYEACgkQwqF3j0dL
ehy+gQ//b3B4voe4RrFb3jzsMa3i0vuZFO4MLSdjDnuHJO7tNTtldAFpOXIZKbeB
Qr+uVGdDA/dXaedWWa2HR80Q4gic6DYOPS1RIlT6wymiwoJJ0ztMVscIpzZuUuiM
ZnckfISjj7TG55jmqopgv/FLmThuRLyrTZ+j8GgCO+oxQBz0US8rnX0NJieuEIr4
IXLYJfteOQRov2Y+ClEAzgUmjS2dMl7y1P8wSftVf3nTrcuvEBayeIHJ0/Dwiokn
BmwWAZpM4bdY3ugiE30Xq4yB0XQWqamLOXBrwcJmJ7ixUplHBBwAxxaIfu7lRfQk
p65LT+Meu+TBhAP/2tOp4Y1gmORTvm3NFPKRruIm92HCy/NVzeYCUwcmu33V9L0+
8xh1IC5CNNy/nn4YPIEaXOAJRtbhr2IAFBiyqDyN0J5Sj+huJFHWS8TXZjdDbjOn
uDgiuNM47yuBl+cHikXWq62DlM9jLKx92OPpo+PW+ZUoRbFkDlJBS+fUEA9A2crj
OIWl5/AWKHn+0LHZi+mnw9XvdtBg+/uDylgYmixAXHAzYpOeVWheJR/tOLhbzM/g
k4p34LWmw9/MekHPLrpiIXlEGGZqoEe67LZmKEgNgt9TzU7q1BXBp2wujgtK9LrQ
M5jx2ftRdxo+9I8GUff/k4zqS+rLMfkLOJCj5MB3y8ovZ9QBIkM=
=BuaU
-----END PGP SIGNATURE-----

--jmztf5qy6qwyt4jv--

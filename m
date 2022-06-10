Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29EDD54645E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jun 2022 12:49:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244782AbiFJKpm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jun 2022 06:45:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344303AbiFJKnl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jun 2022 06:43:41 -0400
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6B25BB9
        for <devicetree@vger.kernel.org>; Fri, 10 Jun 2022 03:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
        s=20170329; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=iEqfKoNUTt/OneHEtxD4FLS+MJ7PjZ32aZCkYLa78E0=; b=mGuTBF6yHsiFRtht+gsQ0EHHZB
        tjQHEpb6vcjvfWfC30ao9SKTbq9U0BNjXri19GCcY+mr5N8UbrR2DwvOr/FS1ri1m9WZ0fQtTORpv
        uQtB/JItqez67qvYYdE1cvySSpwVIm70949hdpbotVW5xzclLg15wbZxsnYPjh70PLrJdSAe2dAO7
        G/6/9AL2lI09BRuy+dXiJwQYFGqtmtuLsGwXBzsK+d4+BB81AXZbLVOGhBq2wBjyWuE9nOXfJ+VFA
        DzC88W2b8BSC/G0b233blROPVUCPo7OSS1rU4rQCmnTDWMpJP5hJ1P0PyDSbFj2NakgQ3b6PVsyf3
        bUU3wiwg==;
Received: from [165.90.126.25] (helo=mail.igalia.com)
        by fanzine2.igalia.com with esmtpsa 
        (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
        id 1nzc3S-00FxHf-0Y; Fri, 10 Jun 2022 12:39:50 +0200
Date:   Fri, 10 Jun 2022 09:39:33 -0100
From:   Melissa Wen <mwen@igalia.com>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>, javierm@redhat.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Subject: Re: [PATCH v6 0/6] Raspberry PI 4 V3D enablement
Message-ID: <20220610103933.cmzlqcbbk3qlesi6@mail.igalia.com>
References: <20220603092610.1909675-1-pbrobinson@gmail.com>
 <20220608125113.q6bfhf3o424iwuzn@mail.igalia.com>
 <d315b387-8500-ceee-d7ef-1d11779baf54@i2se.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="qshzzrlxagcbx6zm"
Content-Disposition: inline
In-Reply-To: <d315b387-8500-ceee-d7ef-1d11779baf54@i2se.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--qshzzrlxagcbx6zm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 06/09, Stefan Wahren wrote:
> Hi Melissa,
>=20
> Am 08.06.22 um 14:51 schrieb Melissa Wen:
> > On 06/03, Peter Robinson wrote:
> > > This is a follow up from my v4 patchset. The power management pieces =
have
> > > been split out to a separate independent set of patches by Stefan [1]=
=2E This
> > > version 5 of the DRM patches are independent and given the V3D driver=
 has
> > > been upstream for some time the two patches to enable it in defconfig=
s can
> > > be taken at anytime independent of the enablement for the Raspberry P=
i 4.
> > Hi Peter,
> >=20
> > I was able to check and run some tests on arm64, and it seems ok. But I
> > was not successful on bringing it up for arm using multi_v7_defconfig +
> > device_tree=3Dbcm2711-rpi-4-b.dtb.
>=20
> for Raspberry Pi 4 you also need to enable CONFIG_ARM_LPAE, which is not
> enabled in multi_v7_defconfig.

Hi Stefan,

Thanks for pointing it out.

I've checked again and it's fine. I think some bits are missing (maybe
=66rom my side) to handle glx stuff on arm, but I can take a look later.

Thanks for this work!

Melissa

>=20
> Best regards
>=20
> >=20
> > How can I check this path?
> >=20
> > Btw, using the config from rpi downstream kernel works nicely for arm
> > (on my side)
> >=20
> > Best regards,
> >=20
> > Melissa
> > > I've tested this using mesa 22.0.x and Wayland/Gnome on Fedora 36, it=
's
> > > more or less stable with basic testing.
> > >=20
> > > Changes since v5:
> > > - Update the DT compatible to match the others that were updated
> > > - Adjust the Kconfig help text
> > > - Add review tags
> > >=20
> > > Changes since v4:
> > > - Fixes for device tree and bindings
> > > - Split out the power management changes into an independent set
> > > - Rebase to 5.18
> > > - Individual changes in patches
> > >=20
> > > [1] https://www.spinics.net/lists/arm-kernel/msg980342.html
> > >=20
> > > Nicolas Saenz Julienne (1):
> > >    arm64: config: Enable DRM_V3D
> > >=20
> > > Peter Robinson (5):
> > >    dt-bindings: gpu: v3d: Add BCM2711's compatible
> > >    drm/v3d: Get rid of pm code
> > >    drm/v3d: Add support for bcm2711
> > >    ARM: dts: bcm2711: Enable V3D
> > >    ARM: configs: Enable DRM_V3D
> > >=20
> > >   .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml  |  1 +
> > >   arch/arm/boot/dts/bcm2711-rpi.dtsi             |  4 ++++
> > >   arch/arm/boot/dts/bcm2711.dtsi                 | 11 +++++++++++
> > >   arch/arm/configs/bcm2835_defconfig             |  1 +
> > >   arch/arm/configs/multi_v7_defconfig            |  1 +
> > >   arch/arm64/configs/defconfig                   |  1 +
> > >   drivers/gpu/drm/v3d/Kconfig                    |  5 +++--
> > >   drivers/gpu/drm/v3d/v3d_debugfs.c              | 18 +--------------=
---
> > >   drivers/gpu/drm/v3d/v3d_drv.c                  | 12 +-----------
> > >   drivers/gpu/drm/v3d/v3d_gem.c                  | 12 +-----------
> > >   10 files changed, 25 insertions(+), 41 deletions(-)
> > >=20
> > > --=20
> > > 2.36.1
> > >=20
> > >=20
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--qshzzrlxagcbx6zm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEd8WOo/JViG+Tu+XIwqF3j0dLehwFAmKjH1sACgkQwqF3j0dL
ehzHBxAAmPl3NgvCMpshRvz045iOdJ8m81qLMfIl7iCDYhL2lZCmihi9uhcp+rG/
smGi63dYl3VaQ6dlukOobZsyhOxSGT6a9BKrDiJfM1Z/6ZvGYYVysg6r6E48+W83
CEglic5uq2i3Ojc26xA8QIrkEa3DZqp95+mQPR1CC7RMhsEeOIvuga4SOZb8vjga
AnByoqLN3e5I+87St66ld+/vrCI6pcGegRhXx+FbsD8M2J5h49Mh3ZrPr+lQu0aa
Os6nD8YE9CqSDh8SFCxZf0JzeciuJGJl7/H94IEeMPKfiABzT5GiyQnB1f9ecN75
3XsXHRySgGY432RrGoRD8fz4zzvmhloWBZ5qX7zXamKEf/Rtvtfn2IDmvi09zLwJ
o6uCb3sUfNck91UT1csvbXYObphH8cjqZbGbQKb/gUyDV4Sr4bJ5M/h1TXq6XYqJ
t8VgXgVk0g1h+q99FnIvb6h3s4hySlWHj5QjA3DSQXhQCSNja4C3/Mu5QxmOZPNC
3c41gTGxkd7ebZmsc8Y8wrbHmEcFGC8DGgIiw3lBZ5jZdcfBkwDTdX7WNo2A3icZ
uEK7CCvUQck6zZdMjOcKJd3JixpEGL1kdIzmAd+ibrOQG6FEqWqAWqNggmu/R+74
odItcsEaZSbbT4XzFmZGyuSZcETsrI+7alJaynByHpX8lopZxc8=
=wp/x
-----END PGP SIGNATURE-----

--qshzzrlxagcbx6zm--

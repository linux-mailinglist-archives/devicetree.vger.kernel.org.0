Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C370F5430D9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 14:53:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239683AbiFHMvz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 08:51:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239762AbiFHMvy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 08:51:54 -0400
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F4C912D35
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 05:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
        s=20170329; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=DqR83INAeF2lLLfWNGvfjQvG07ed/LwGsF/j5yAEBn8=; b=cjIys5A+lx1csT7PzgKd/P/QI9
        n0kWQgFym4GWQq1k2qTlFSwb6u1Sm1KsON5UKbs9Ff7wYmdQLeKpcUT3RYhJOILcgHYdNmGwDwzX5
        E64hkwzRT36jYQs9Od8jJG8lBLCNJu3BUabeNb9ljoq/LZTUhWa0cf118p8wFIRWlz6EnMWnSeBaq
        dkBxfJSBGh5Nd2I+RzCPn/nZjjgVN+W5RT6Vyst6nN83+U6M0VsQXkI3QV5heQKPSqE+BqeEUk9cB
        fNm+VU65t3tsLdNUL5UF13GQtC/31wwy85GcudVbwwwNz3YMfJe4coCETIzuRtPEuYzFFF4e/XgaW
        r9gBJMUw==;
Received: from [165.90.126.25] (helo=mail.igalia.com)
        by fanzine2.igalia.com with esmtpsa 
        (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
        id 1nyv9h-00EGEM-Sy; Wed, 08 Jun 2022 14:51:26 +0200
Date:   Wed, 8 Jun 2022 11:51:13 -0100
From:   Melissa Wen <mwen@igalia.com>
To:     Peter Robinson <pbrobinson@gmail.com>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>, javierm@redhat.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Subject: Re: [PATCH v6 0/6] Raspberry PI 4 V3D enablement
Message-ID: <20220608125113.q6bfhf3o424iwuzn@mail.igalia.com>
References: <20220603092610.1909675-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="xuzaeukway3atmdn"
Content-Disposition: inline
In-Reply-To: <20220603092610.1909675-1-pbrobinson@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--xuzaeukway3atmdn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 06/03, Peter Robinson wrote:
> This is a follow up from my v4 patchset. The power management pieces have
> been split out to a separate independent set of patches by Stefan [1]. Th=
is
> version 5 of the DRM patches are independent and given the V3D driver has
> been upstream for some time the two patches to enable it in defconfigs ca=
n=20
> be taken at anytime independent of the enablement for the Raspberry Pi 4.

Hi Peter,

I was able to check and run some tests on arm64, and it seems ok. But I
was not successful on bringing it up for arm using multi_v7_defconfig +
device_tree=3Dbcm2711-rpi-4-b.dtb.

How can I check this path?

Btw, using the config from rpi downstream kernel works nicely for arm
(on my side)=20

Best regards,

Melissa
>=20
> I've tested this using mesa 22.0.x and Wayland/Gnome on Fedora 36, it's=
=20
> more or less stable with basic testing.
>=20
> Changes since v5:
> - Update the DT compatible to match the others that were updated
> - Adjust the Kconfig help text
> - Add review tags
>=20
> Changes since v4:
> - Fixes for device tree and bindings
> - Split out the power management changes into an independent set
> - Rebase to 5.18
> - Individual changes in patches
>=20
> [1] https://www.spinics.net/lists/arm-kernel/msg980342.html
>=20
> Nicolas Saenz Julienne (1):
>   arm64: config: Enable DRM_V3D
>=20
> Peter Robinson (5):
>   dt-bindings: gpu: v3d: Add BCM2711's compatible
>   drm/v3d: Get rid of pm code
>   drm/v3d: Add support for bcm2711
>   ARM: dts: bcm2711: Enable V3D
>   ARM: configs: Enable DRM_V3D
>=20
>  .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml  |  1 +
>  arch/arm/boot/dts/bcm2711-rpi.dtsi             |  4 ++++
>  arch/arm/boot/dts/bcm2711.dtsi                 | 11 +++++++++++
>  arch/arm/configs/bcm2835_defconfig             |  1 +
>  arch/arm/configs/multi_v7_defconfig            |  1 +
>  arch/arm64/configs/defconfig                   |  1 +
>  drivers/gpu/drm/v3d/Kconfig                    |  5 +++--
>  drivers/gpu/drm/v3d/v3d_debugfs.c              | 18 +-----------------
>  drivers/gpu/drm/v3d/v3d_drv.c                  | 12 +-----------
>  drivers/gpu/drm/v3d/v3d_gem.c                  | 12 +-----------
>  10 files changed, 25 insertions(+), 41 deletions(-)
>=20
> --=20
> 2.36.1
>=20

--xuzaeukway3atmdn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEd8WOo/JViG+Tu+XIwqF3j0dLehwFAmKgmz0ACgkQwqF3j0dL
ehzeTw//Yuj61o7HF0drku2YTWQ0GJGt/u7nLZbAb/HA/awBhy+7rZ56hkwBTZT+
lHgWk0nKSRiEXw0UJYAWs3ABB+R9YnpVve/qKQ9bEW68WVQ+0m75MqtLlLWJnMpO
3xxpqIhhfzp2WN6kuMRSLleflTvQoZRccYckxefWTkiwz3tRQ/QcZw14g27Ksdki
XPN3Iicc9WcRidWEABoVPPjFyBGBz5jSQo8gGbzTFuuN8EZLQ0uJU7UQMzPjpzly
MqOE0uwq8XSqnXavX+6S8eh1WiKE5YpoDNQvozJ8b9A31IfC/1AWR4HcJVf1JowS
3N1XjwvQOgnftpxN0tZ39diinxPq9XjhHd2ZNNWGbRuE9/b/OzXWnSFzrzLteMEP
VSUsdKJECT2oOezYky8YSkucmrm6Tmx+pnL46TTaxuTZWCcVYT47hE6yeoNWu1Mh
hhbfvi3L4sUVf/hGHUx5CbJfxSn9i4IExQZEj/1hh0nkBJyER+AHqdCXD3+qdUHz
+J1fev1VWLXTe72HEKWNvpCcO2QckMQm21aAK/iasut2WMWRHpVV99rutHq4pLza
1CD0YNPP1HKoURcQ75LZ6MPVKeddqHF+AmiH/yEiVppqNn3MuK12XGS5xBuwXsNB
u+4myuqWEA3BHotzUO1Jnbx6yIvYoia1pvPUkCg2fBbP0nkWXKQ=
=TJpT
-----END PGP SIGNATURE-----

--xuzaeukway3atmdn--

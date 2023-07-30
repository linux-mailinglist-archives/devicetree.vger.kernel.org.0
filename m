Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A87C9768909
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 00:12:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbjG3WM3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 18:12:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjG3WM2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 18:12:28 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A71AC10D3
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 15:12:17 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-31771bb4869so4166317f8f.0
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 15:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690755136; x=1691359936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vtuBnXNxPgvHLp32dg4O7hROuouKTCJLgRkrSEU7S9Y=;
        b=MFTkH8uA98xFHuA9w+azJIOzU/ThrYlowNg/jAHxORqqPAFL74QyPPzDJfBTjGxnRM
         siQMoOrWcSdsnUapxemSg+G1fvcBq1KZMNKGpn8rgUh7+zrJvJibDmRFvfmAAm9IkdPQ
         Hvs3YwdsFCbzKNx5BkG6SkSYK6qq3xBbxIYAjJibPvUZ87nD5M01/81fYO/Szujmrii0
         gXxB8tPNa0ANvoI6NcIwgAigZYT4n7HEWFbxEiuSNDDEhofQl8YgrVBKUv5ilOQ/qCT7
         1nZgFXmAkUrVWADiKn/RkisZoPpZwKYKv/KV1L7ajjgAMg1gDAgij8UXMskj6ERPeto5
         irug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690755136; x=1691359936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vtuBnXNxPgvHLp32dg4O7hROuouKTCJLgRkrSEU7S9Y=;
        b=DfNHxY5wGkjZlveKMn7Owm2SSx7VoWB5HlEZW+x3uJevSq7qWiEWfxCfplkP/tvKYJ
         AP7/tVtI0CskLnCExDDamJdm33DqKcMuWpsF/050prbcxtRUYAO3VHHBGI7vkG2sq2Sg
         ghod2cXTwFOEvlSdlj9JTHUl/COoZkCPvN8u6NOfkAyRJkXaZO+It65f5ZqBQtQlpd0P
         Iwnjux9IfhPxRNd43aPggHZjMLmgvnlFnuSFwxlR7YmdTKHF1IhIzR0cjXTBBvsfFOFp
         DAoFbsqVvQNzXjLO5CGvEQ+30IcMf0Qf+7RcwZIEWXR/titHDi6RYHtEf4p1CgTw0T+0
         8INg==
X-Gm-Message-State: ABy/qLZLhSfr2VdmRXt+hR+gLC0D3BP1wQkHDh0exVNdM3XMs1TGL0n0
        nR/2mCirepF1Iy+Pas1c1SwN5i47qCJP6A==
X-Google-Smtp-Source: APBJJlGXlScYBBs+iAYWkiiV0upOZtT714/JzadzkjCMveztStxiMhJzsfAFInHaE8MT1P/IhwcpuQ==
X-Received: by 2002:a5d:43c3:0:b0:314:1aed:8f5f with SMTP id v3-20020a5d43c3000000b003141aed8f5fmr6506724wrr.34.1690755135829;
        Sun, 30 Jul 2023 15:12:15 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-1-233.dynamic.telemach.net. [82.149.1.233])
        by smtp.gmail.com with ESMTPSA id s11-20020adfeb0b000000b003176a4394d7sm11126116wrn.24.2023.07.30.15.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 15:12:15 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Moessbauer Felix <felix.moessbauer@siemens.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Daniel Bovensiepen <daniel.bovensiepen@siemens.com>,
        Quirin Gylstorff <quirin.gylstorff@siemens.com>,
        manuel.matzinger@siemens.com, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 1/1] arm: dts: Enable device-tree overlay support for sun8i-h3 pi
 devices
Date:   Mon, 31 Jul 2023 00:12:14 +0200
Message-ID: <4818881.GXAFRqVoOG@jernej-laptop>
In-Reply-To: <17c7a0c952913e21d9a323f42a1cfad84ed8a51b.camel@siemens.com>
References: <20230627133703.355893-1-felix.moessbauer@siemens.com>
 <1830379.atdPhlSkOF@jernej-laptop>
 <17c7a0c952913e21d9a323f42a1cfad84ed8a51b.camel@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 19. julij 2023 ob 14:26:13 CEST je Moessbauer Felix napisal(a):
> On Tue, 2023-07-11 at 21:42 +0200, Jernej =C5=A0krabec wrote:
> > Dne torek, 27. junij 2023 ob 15:37:03 CEST je Felix Moessbauer
> >=20
> > napisal(a):
> > > Add the '-@' DTC option for the sun8i-h3 pi-class devices. This
> > > option
> > > populates the '__symbols__' node that contains all the necessary
> > > symbols
> > > for supporting device-tree overlays (for instance from the firmware
> > > or
> > > the bootloader) on these devices.
> > >=20
> > > These devices allow various modules to be connected and this
> > > enables
> > > users to create out-of-tree device-tree overlays for these modules.
> > >=20
> > > Please note that this change does increase the size of the
> > > resulting DTB
> > > by ~30%. For example, with v6.4 increase in size is as follows:
> > >=20
> > > 22909 -> 29564 sun8i-h3-orangepi-lite.dtb
> > > 24214 -> 30935 sun8i-h3-bananapi-m2-plus.dtb
> > > 23915 -> 30664 sun8i-h3-nanopi-m1-plus.dtb
> > > 22969 -> 29537 sun8i-h3-nanopi-m1.dtb
> > > 24157 -> 30836 sun8i-h3-nanopi-duo2.dtb
> > > 24110 -> 30845 sun8i-h3-orangepi-plus2e.dtb
> > > 23472 -> 30037 sun8i-h3-orangepi-one.dtb
> > > 24600 -> 31410 sun8i-h3-orangepi-plus.dtb
> > > 23618 -> 30230 sun8i-h3-orangepi-2.dtb
> > > 22170 -> 28548 sun8i-h3-orangepi-zero-plus2.dtb
> > > 23258 -> 29795 sun8i-h3-nanopi-neo-air.dtb
> > > 23113 -> 29699 sun8i-h3-zeropi.dtb
> > > 22803 -> 29270 sun8i-h3-nanopi-neo.dtb
> > > 24674 -> 31318 sun8i-h3-nanopi-r1.dtb
> > > 23477 -> 30038 sun8i-h3-orangepi-pc.dtb
> > > 24622 -> 31380 sun8i-h3-bananapi-m2-plus-v1.2.dtb
> > > 23750 -> 30366 sun8i-h3-orangepi-pc-plus.dtb
> > >=20
> > > Signed-off-by: Felix Moessbauer <felix.moessbauer@siemens.com>
> > > ---
> > > Please note that I only tested the overlay on the sun8i-h3-nanopi-
> > > neo
> > > device. However, the devices are quite similar and in general the
> > > change to add symbols should be pretty safe. Similar patches have
> > > been
> > > applied to various other devices in the past without any negative
> > > effect (except for the increased size).
> >=20
> > I'm not a fan of this approach. What's wrong with letting kernel
> > builders
> > specify this flag on their own at compile time? That way size is
> > still
> > completely in domain of builder.
>=20
> That's easier said than done. These symbols are only needed for some
> targets (that are commonly used with overlays). But how should a
> general purpose kernel builder like Debian know which DT to build with
> symbols and which without? In Yocto the overlays are not really needed,
> as often the original dts is just patched directly.

LibreELEC (distro I help with) has support for DT overlays for some time an=
d=20
it was easy to enable symbols for all DTs with simple "DTC_FLAGS=3D-@" addi=
tion=20
to build command [1]. Do you see any downside except knowing you have to=20
include it? On the upside, there is no need to patch each and every file an=
d=20
kernel builder has a choice if overlays should be supported or not. Note th=
at=20
in some cases overlays can be needed even in the case when board doesn't ha=
ve=20
expansion ports.

Best regards,
Jernej

[1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/linux/
package.mk#L213

>=20
> There has been a discussion in 2017 to improve the situation in
> general, but without any final decision or implementation [1]. By that,
> these patches got more and more common. I recently sent a very similar
> patch for a riscv board that got accepted [2].
>=20
> IMHO it is better to have these patches in the kernel instead of
> carrying different variants of this in each Linux distro. IMHO, the
> board vendors themselves should add this when they add a board.
>=20
> [1]
> https://lore.kernel.org/lkml/1502831736-28282-1-git-send-email-trini@kons=
ulk
> o.com/ [2]
> https://lore.kernel.org/linux-devicetree/20230627080620.329873-1-felix.mo=
ess
> bauer@siemens.com/
>=20
> Best regards,
> Felix
>=20
> > Best regards,
> > Jernej
> >=20
> > > Felix Moessbauer
> > > Siemens AG
> > >=20
> > >  arch/arm/boot/dts/allwinner/Makefile | 19 +++++++++++++++++++
> > >  1 file changed, 19 insertions(+)
> > >=20
> > > diff --git a/arch/arm/boot/dts/allwinner/Makefile
> > > b/arch/arm/boot/dts/allwinner/Makefile index
> > > 589a1ce1120a..eebb5a0c873a
> > > 100644
> > > --- a/arch/arm/boot/dts/allwinner/Makefile
> > > +++ b/arch/arm/boot/dts/allwinner/Makefile
> > > @@ -179,6 +179,25 @@ dtb-$(CONFIG_MACH_SUN7I) +=3D \
> > >         sun7i-a20-pcduino3-nano.dtb \
> > >         sun7i-a20-wexler-tab7200.dtb \
> > >         sun7i-a20-wits-pro-a20-dkt.dtb
> > > +
> > > +# Enables support for device-tree overlays for all pis
> > > +DTC_FLAGS_sun8i-h3-orangepi-lite :=3D -@
> > > +DTC_FLAGS_sun8i-h3-bananapi-m2-plus :=3D -@
> > > +DTC_FLAGS_sun8i-h3-nanopi-m1-plus :=3D -@
> > > +DTC_FLAGS_sun8i-h3-nanopi-m1 :=3D -@
> > > +DTC_FLAGS_sun8i-h3-nanopi-duo2 :=3D -@
> > > +DTC_FLAGS_sun8i-h3-orangepi-plus2e :=3D -@
> > > +DTC_FLAGS_sun8i-h3-orangepi-one :=3D -@
> > > +DTC_FLAGS_sun8i-h3-orangepi-plus :=3D -@
> > > +DTC_FLAGS_sun8i-h3-orangepi-2 :=3D -@
> > > +DTC_FLAGS_sun8i-h3-orangepi-zero-plus2 :=3D -@
> > > +DTC_FLAGS_sun8i-h3-nanopi-neo-air :=3D -@
> > > +DTC_FLAGS_sun8i-h3-zeropi :=3D -@
> > > +DTC_FLAGS_sun8i-h3-nanopi-neo :=3D -@
> > > +DTC_FLAGS_sun8i-h3-nanopi-r1 :=3D -@
> > > +DTC_FLAGS_sun8i-h3-orangepi-pc :=3D -@
> > > +DTC_FLAGS_sun8i-h3-bananapi-m2-plus-v1.2 :=3D -@
> > > +DTC_FLAGS_sun8i-h3-orangepi-pc-plus :=3D -@
> > >  dtb-$(CONFIG_MACH_SUN8I) +=3D \
> > >         sun8i-a23-evb.dtb \
> > >         sun8i-a23-gt90h-v4.dtb \





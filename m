Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD4594D1385
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 10:38:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235159AbiCHJjw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 04:39:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238506AbiCHJjw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 04:39:52 -0500
X-Greylist: delayed 71748 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 08 Mar 2022 01:38:56 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 186503137A
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 01:38:55 -0800 (PST)
Received: from mail-wr1-f41.google.com ([209.85.221.41]) by
 mrelayeu.kundenserver.de (mreue106 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1Mo7if-1nxpFF1UYF-00pcfx for <devicetree@vger.kernel.org>; Tue, 08 Mar
 2022 10:38:54 +0100
Received: by mail-wr1-f41.google.com with SMTP id x15so27469340wru.13
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 01:38:54 -0800 (PST)
X-Gm-Message-State: AOAM533lgNzrOyryIvkzW+djebEFIYMxxOZ63PmyG+7YwK3fDa3zqWW8
        UxQuLl4kdGZi0Rh+tKRPsvClrJNMQFHFsHkXjSQ=
X-Google-Smtp-Source: ABdhPJxo54mRJkzudcax91VzsIifg7BnKSlOiViFsWSbWLDpZO+Tik8hGd0ehAFU2LrwrU2FCNCuGn556SDuP8dgAl4=
X-Received: by 2002:adf:90c1:0:b0:1e4:ad27:22b9 with SMTP id
 i59-20020adf90c1000000b001e4ad2722b9mr11499158wri.219.1646732333821; Tue, 08
 Mar 2022 01:38:53 -0800 (PST)
MIME-Version: 1.0
References: <20220307143421.1106209-1-andre.przywara@arm.com> <20220307143421.1106209-14-andre.przywara@arm.com>
In-Reply-To: <20220307143421.1106209-14-andre.przywara@arm.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Tue, 8 Mar 2022 10:38:37 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1FxfZj0=T=cvLNfagP+c_d+SEYYuV30+-UTU+B+HVXmQ@mail.gmail.com>
Message-ID: <CAK8P3a1FxfZj0=T=cvLNfagP+c_d+SEYYuV30+-UTU+B+HVXmQ@mail.gmail.com>
Subject: Re: [PATCH 13/14] ARM: configs: sync multi_v5_defconfig from savedefconfig
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mesih Kilinc <mesihkilinc@gmail.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Jesse Taube <mr.bossman075@gmail.com>,
        Giulio Benetti <giulio.benetti@benettiengineering.com>,
        George Hilliard <thirtythreeforty@gmail.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi@lists.linux.dev, Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        SoC Team <soc@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:z0pnBVDCcSavuirbpeRQaHbhSvPVtFQYJxJu1TwUMtj7ay7+5Jl
 brYp4gFP+s7oKjaqejB/t0e8RX4DqQaPb8PstY+aYQ1vG3YSDQKLuOjj2eX9l8eKWFPAwyg
 L1JCbmOpMzU34WmFxkpYb3HXTQwOXigdrK0pDRb0RkElB3CtOw232N6Ddc3nlTLyaVa1x5U
 YpizoYB8utMUB5BvY76Xg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:GnEHoVUZLh8=:aDIGYQ5KBQlFGDAAH4Cxez
 xG/UEZGJRtovWR3V+/dS3OsopLuXetzsCIAs7YuvRYfrVjqAAfEyIqsjsF2lL+jv7XdjFPkEO
 Xq25m3g245JAUq8EjuyZ9OIuwhJYG8DnAwp9kfAJGZxIV9S4IZbithxTFv65aiIRLXi8+5Y92
 HX/NLXXsYsd8RhpPDlb+b6c9nDjyb/loP+5PnjdfGGNnwCoIneF0AAn9LkGyKs2OYoberHrDB
 d6T0rOrbsZTYATcAY8z/98UFsnOG+v064QH6uzJDjLMDuz2mCzQrpR44Pc2xmZJ735xNbHy+N
 SthNQdMvcVMEnml1o2QuFHww7D99QiD3tk2bCfHsUa5WMa673+hsvEjaPh/0kbGvUFUZ7hNnz
 Qjw/7vw4xR5A0nCaoYlUUw137qtgaT+XzXOk8llgqJg4/GqQkKjjhEcxet4Vn2aJaWRPO/C67
 TrbH2AA8yVSde+MUd/HtrUTYdmH3bkr5PS3HDgXG/is40sA7w1B4k51sQBDSkVLcDr36CMymi
 ThzIXpfhCxwevmuetjdzytdLMqyPOq4ZNb88RgGf4Eo6MtFdf6oDSUqEOiAbVh0HWJgSofZPG
 tdPeCWBAt64g9sKpPdpjLF53cAK6fd3AP6LlGpHFSqss0IkCsCoRyDXAqxCVVL35VqyRMLUro
 RY9PVN1nIjB2LzUoY+wRYGbCJ+8wcrc9RWAKNHEGn3lYY2uqSC5jhBhUdffdB8qgIVzJ9opTH
 58COgr42enAd5kuqKo09hGNmJmp9N2iPYiuLXs4jqNswQDVk6SkOTKCzwMvERAPUtuAfLWfG/
 fgSNFQu84+ps2dbe/nJFaOMUksTGyWnq8midLTE7nlkzxikhQo=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 7, 2022 at 3:34 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> Some Kconfig options have changed, some other platforms have been
> removed.

Please split this up into logical chunks: list the platforms that were removed
and remove only the lines corresponding to those platforms in one patch,
do functional changes in separate patches each with a reason for doing them,
and cleanups (moving lines to match the savedefconfig output, removing lines
that are now the default) in one final patch.

>  CONFIG_AEABI=y
>  CONFIG_HIGHMEM=y
> -CONFIG_ZBOOT_ROM_TEXT=0x0
> -CONFIG_ZBOOT_ROM_BSS=0x0
>  CONFIG_ARM_APPENDED_DTB=y
>  CONFIG_ARM_ATAG_DTB_COMPAT=y
>  CONFIG_CPU_FREQ=y

These were not removed, what happened here is that 'savedefconfig'
no longer produces the lines because they now match the defaults.

> @@ -159,7 +151,6 @@ CONFIG_I2C_ASPEED=m
>  CONFIG_I2C_AT91=y
>  CONFIG_I2C_IMX=y
>  CONFIG_I2C_MV64XXX=y
> -CONFIG_I2C_NOMADIK=y
>  CONFIG_SPI=y
>  CONFIG_SPI_ATMEL=y
>  CONFIG_SPI_IMX=y

This one is still there. Not sure why it's no longer enabled.

>  CONFIG_REGULATOR_FIXED_VOLTAGE=y
>  CONFIG_MEDIA_SUPPORT=y
>  CONFIG_MEDIA_CAMERA_SUPPORT=y
> -CONFIG_V4L_PLATFORM_DRIVERS=y
> -CONFIG_VIDEO_ASPEED=m
> -CONFIG_VIDEO_ATMEL_ISI=m
>  CONFIG_DRM=y
>  CONFIG_DRM_ATMEL_HLCDC=m
> -CONFIG_DRM_PANEL_SIMPLE=y
> -CONFIG_DRM_PANEL_EDP=y
>  CONFIG_DRM_ASPEED_GFX=m
> -CONFIG_FB_IMX=y
> -CONFIG_FB_ATMEL=y
> -CONFIG_BACKLIGHT_ATMEL_LCDC=y

This doesn't look right at all. If you want to disable graphics support,
please do that in a separate patch and explain why we can't have those
any more. Are you running into problems with the vmlinux size?

>  CONFIG_LIBCRC32C=y
>  CONFIG_DEBUG_INFO=y
> -CONFIG_DEBUG_FS=y
>  CONFIG_MAGIC_SYSRQ=y
> +CONFIG_DEBUG_FS=y
>  CONFIG_DEBUG_KERNEL=y
>  # CONFIG_SCHED_DEBUG is not set
>  # CONFIG_DEBUG_PREEMPT is not set

This should probably go along with the ZBOOT_ROM change, it's
only cosmetic.

        Arnd

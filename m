Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFC9A4D1938
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 14:33:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234727AbiCHNe3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 08:34:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233134AbiCHNe3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 08:34:29 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7868E3467D
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 05:33:31 -0800 (PST)
Received: from mail-wr1-f51.google.com ([209.85.221.51]) by
 mrelayeu.kundenserver.de (mreue106 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MWjQU-1nguzC1YfA-00X7Nn for <devicetree@vger.kernel.org>; Tue, 08 Mar
 2022 14:33:30 +0100
Received: by mail-wr1-f51.google.com with SMTP id u10so26946908wra.9
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 05:33:30 -0800 (PST)
X-Gm-Message-State: AOAM532/RIK6g5rc756YWHTMKDPz6TioAsX6au6EUwLh2j9PRs19N4jh
        kSc9fpn3lWRM4wHUhXBQb0aCwGEr8QxrgmKgOI0=
X-Google-Smtp-Source: ABdhPJzBo8+XD8cBHZ+iV3CMpw1rAQ4Kt/pckl18z9wljYid5M+Byqeh0gtSd8eJwZBlQHJruvj8qEJHrBS/gynLDAY=
X-Received: by 2002:adf:90c1:0:b0:1e4:ad27:22b9 with SMTP id
 i59-20020adf90c1000000b001e4ad2722b9mr12265687wri.219.1646746409902; Tue, 08
 Mar 2022 05:33:29 -0800 (PST)
MIME-Version: 1.0
References: <20220307143421.1106209-1-andre.przywara@arm.com>
 <20220307143421.1106209-14-andre.przywara@arm.com> <CAK8P3a1FxfZj0=T=cvLNfagP+c_d+SEYYuV30+-UTU+B+HVXmQ@mail.gmail.com>
 <20220308120750.0bbe0122@donnerap.cambridge.arm.com>
In-Reply-To: <20220308120750.0bbe0122@donnerap.cambridge.arm.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Tue, 8 Mar 2022 14:33:13 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0fuVSYm097X-V9MZSm9AHNp8N8JMp2xiH5CYTApx5BaA@mail.gmail.com>
Message-ID: <CAK8P3a0fuVSYm097X-V9MZSm9AHNp8N8JMp2xiH5CYTApx5BaA@mail.gmail.com>
Subject: Re: [PATCH 13/14] ARM: configs: sync multi_v5_defconfig from savedefconfig
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
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
        Olof Johansson <olof@lixom.net>, SoC Team <soc@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:51a1APz/4kFE7dlaAFulwrejShZoHMS7CcCyD5kIwmZwcUBVQA4
 vXoMX53DNoslP6sPuFanT7RPtOs+k/w0v7Cujea4ppBQDgZGozL4Qvmzo6f2xComBNsi0Dd
 GZhGiVcN0ijz3mPL2FrXvcldX+w2MfH6CCOyKRm0ss06PvkQVbo0Skfbifxu7hwADzSpnZp
 x1VOVava0uxm7JV4wNfww==
X-UI-Out-Filterresults: notjunk:1;V03:K0:uSbTHdg5L7w=:eNxH5klh99tIhrW3yVAk1j
 pawTuGZgdNNnBQEL3ysIqOkGS+HE70wMEr3DvvvDPzDASRyYb4blIWCgEbYGC36YwA820gtOy
 o5s5TxhC+m+0pOc22IjTVnWaqyf+BEbvg3jkr9r8jyRYVpiXrKDjKioeJktniXl6LX7r8S2Zg
 TAbj1We6+xGg3wMYxPBIAVfKtGfJLf6a6BKzYO0skByTurB4HqpzdXrPI56A4LL6Ilb1DUQig
 hSBg34ZzKX49vVPCv0NW8n7Do8+ekCI/IQori3l5dmnpOlzrPcz92Phq7QWUPct7zcpx0HL4M
 eXjcTyosRA8QfE2IGOVUbzRYKW8xM7meDt3Ix7hlwGmWa8kWWIAcWalSQ7dK1yBWS+8xcPjVo
 hB6aW85/xYGJmX4qQfETtY+DoDFzI7KFoyLOoDCK8+mpJbyJRh2O4FG5U7xrRRVskKK1kgbTg
 b7ipuQwERcTb560aSL85b29gSDR+A6cy2LWbujZTWsgfpU5LftFIRXVsh3biwlFfs2y5lxMeM
 kE+qdNpG8PW+7tEQYd5GJn+y6H9vP/g0cXnkrt5FEosXEG7A2LnB4nmg21wXFRYH0/Ca00f3c
 JfP772lZaY6xnCXwc+ML1v1Hxl3rfWMRexpuglXKkvzK5NMsgGV6BU9kVF8EwlwydHWQe7WE0
 t88UqG/e2pKEQpLh6VeXGo83iwOzzREej1Qjc7HncOdCCg7IbNXTIvcvQnExH6dFgTb2yujjV
 um2a+k+s6wDub9mD3r0NyVWEWf120OZcIXPlAYKxT+onQiHy4E7fJUgpf8YajPIdrWEKbcNGp
 C1Imb71k6aJQ6HhpD4Ld6cws5bo/YrbKXVYrbcS/xk7k7qHE54=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 8, 2022 at 1:07 PM Andre Przywara <andre.przywara@arm.com> wrote:
> On Tue, 8 Mar 2022 10:38:37 +0100 Arnd Bergmann <arnd@arndb.de> wrote:
> > On Mon, Mar 7, 2022 at 3:34 PM Andre Przywara <andre.przywara@arm.com> wrote:
> > >
> > > Some Kconfig options have changed, some other platforms have been
> > > removed.
> >
> > Please split this up into logical chunks: list the platforms that were removed
> > and remove only the lines corresponding to those platforms in one patch,
> > do functional changes in separate patches each with a reason for doing them,
> > and cleanups (moving lines to match the savedefconfig output, removing lines
> > that are now the default) in one final patch.
>
> Actually this patch is meant to be only about the last past: to sync
> multi_v5_defconfig with the output of "make savedefconfig". .config stays
> the same. I initially tried to chase down the reason for each line change,
> but gave up quickly, because it becomes tedious to learn about this,
> especially about symbols that got *removed*. Also Kconfig is somewhat
> sensitive, a single "select" or "default" change in one random Kconfig can
> affect the result of savedefconfig.
>
> As I noted in the commit message, the .config does *not* change as a result
> of this patch, the whole purpose is just to make the next patch clearer.

Ok, then just change the symbols that move around, not the ones that
may have gone missing unintentionally.

> So I can try find the reason for each removal, if you like, but I am not
> sure that's worthwhile? It is my understanding that Kconfig changes tend
> to accumulate cruft in the various defconfigs over time. In U-Boot we gave
> up on reasoning, and just regularly sync the output of savedefconfig over
> to the *_defconfigs, to keep them minimal and meaningful.
>
> And I found Olof's commit 30b10c77837c ("ARM: defconfig: re-run
> savedefconfig on multi_v* configs") as a precedence for this kind of cleanup.

I know, but I never liked doing this because it hides regressions.

> > >  CONFIG_AEABI=y
> > >  CONFIG_HIGHMEM=y
> > > -CONFIG_ZBOOT_ROM_TEXT=0x0
> > > -CONFIG_ZBOOT_ROM_BSS=0x0
> > >  CONFIG_ARM_APPENDED_DTB=y
> > >  CONFIG_ARM_ATAG_DTB_COMPAT=y
> > >  CONFIG_CPU_FREQ=y
> >
> > These were not removed, what happened here is that 'savedefconfig'
> > no longer produces the lines because they now match the defaults.
>
> Yes, I understand. Is there some policy here, for instance to keep
> those in, for clarity?

In this case, as with the moving lines around, there is no functional
change at all, and doing the same thing on older kernels will still
result in the same behavior. I'm not worried about those at all, so
just put them all into one patch.

> > > @@ -159,7 +151,6 @@ CONFIG_I2C_ASPEED=m
> > >  CONFIG_I2C_AT91=y
> > >  CONFIG_I2C_IMX=y
> > >  CONFIG_I2C_MV64XXX=y
> > > -CONFIG_I2C_NOMADIK=y
> > >  CONFIG_SPI=y
> > >  CONFIG_SPI_ATMEL=y
> > >  CONFIG_SPI_IMX=y
> >
> > This one is still there. Not sure why it's no longer enabled.
>
> It's not in the current .config. From what I can see, it depends on
> ARCH_AMBA, which is selected by ARCH_NOMADIK, but that one is not enabled
> by multi_v5_defconfig. Not sure if that is an oversight, or a change, a
> the dependency is bogus, or something else.
>
> If you find that useful, I can try to find those dependency chains for the
> other options, but I definitely lack the knowledge about the history of
> those old platforms, so I can't reason about them. But I could present you
> the findings and you can then say what to do?

I see this was the result of 66e0c12f9e17 ("ARM: nomadik: switch to use the
Nomadik I2C driver"). It's ok to remove this line and others like it,
just explain
what happened for these, as the driver is still enabled.

> > >  CONFIG_REGULATOR_FIXED_VOLTAGE=y
> > >  CONFIG_MEDIA_SUPPORT=y
> > >  CONFIG_MEDIA_CAMERA_SUPPORT=y
> > > -CONFIG_V4L_PLATFORM_DRIVERS=y
> > > -CONFIG_VIDEO_ASPEED=m
> > > -CONFIG_VIDEO_ATMEL_ISI=m
> > >  CONFIG_DRM=y
> > >  CONFIG_DRM_ATMEL_HLCDC=m
> > > -CONFIG_DRM_PANEL_SIMPLE=y
> > > -CONFIG_DRM_PANEL_EDP=y
> > >  CONFIG_DRM_ASPEED_GFX=m
> > > -CONFIG_FB_IMX=y
> > > -CONFIG_FB_ATMEL=y
> > > -CONFIG_BACKLIGHT_ATMEL_LCDC=y
> >
> > This doesn't look right at all. If you want to disable graphics support,
> > please do that in a separate patch and explain why we can't have those
> > any more. Are you running into problems with the vmlinux size?
>
> As I mentioned, the .config didn't change at all, so those options are
> already not included in mainline anymore.
>
> AFAICS, those last options depend on CONFIG_FB, which isn't enabled. Is
> that a regression due to the recent fbdev changes?

Correct, this part was clearly unintentional, and I don't ever want to see
a patch to remove lines like these with a changelog text that fails to
explain why we want them to be removed. We clearly have platforms
that are enabled in multi_v5_config that use some of those drivers, and
we had users that wanted them to be enabled.

I think there are three separate issues here: FB_IMX and FB_ATMEL
broke because of f611b1e7624c ("drm: Avoid circular dependencies for
CONFIG_FB"), VIDEO_ASPEED and VIDEO_ATMEL_ISI  broke
during b0cd4fb27665 ("media: Kconfig: on !EMBEDDED && !EXPERT,
enable driver filtering"), and PANEL_EDP was introduced in 310720875efa
("ARM: configs: Everyone who had PANEL_SIMPLE now gets
PANEL_EDP") without the option ever making it in [1]. These are all
bugs that need to be addressed individually, and not just in a single
defconfig file but across all the affected platforms.

         Arnd

[1] https://lore.kernel.org/all/CAD=FV=VbYcdSqxLHdSaDPh=X0hbW6VWV0mM-iFy3k0J1q+6MWg@mail.gmail.com/

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B3BA4D1B81
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 16:18:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238232AbiCHPTO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 10:19:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231816AbiCHPTN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 10:19:13 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE0DD4A928
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 07:18:15 -0800 (PST)
Received: from mail-wm1-f52.google.com ([209.85.128.52]) by
 mrelayeu.kundenserver.de (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MAOVx-1nK9Ta3GOp-00BrpQ for <devicetree@vger.kernel.org>; Tue, 08 Mar
 2022 16:18:13 +0100
Received: by mail-wm1-f52.google.com with SMTP id l1-20020a05600c4f0100b00389645443d2so1734893wmq.2
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 07:18:13 -0800 (PST)
X-Gm-Message-State: AOAM531mRH29tcZV1plsCQ73X08QwpN+dg1dDlvi/skudW6xNaqlzK1P
        fTEnOgSfChRUim8SONENmpYHPquUz7RXeN+uLJc=
X-Google-Smtp-Source: ABdhPJwWnege0B89hH2GkrjFsd8ZOdfeG5z/xIwKnV2rzC8zB4ilKLYWFNkX7PGEBAA7XOORN9saQgPD0j03zWqy5ZY=
X-Received: by 2002:a05:600c:154b:b0:381:8148:64d with SMTP id
 f11-20020a05600c154b00b003818148064dmr4020960wmg.98.1646752693479; Tue, 08
 Mar 2022 07:18:13 -0800 (PST)
MIME-Version: 1.0
References: <20220307143421.1106209-1-andre.przywara@arm.com>
 <20220307143421.1106209-14-andre.przywara@arm.com> <CAK8P3a1FxfZj0=T=cvLNfagP+c_d+SEYYuV30+-UTU+B+HVXmQ@mail.gmail.com>
 <20220308120750.0bbe0122@donnerap.cambridge.arm.com> <99029bae-cf1b-c3c1-004e-8a6795d19f7f@microchip.com>
In-Reply-To: <99029bae-cf1b-c3c1-004e-8a6795d19f7f@microchip.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Tue, 8 Mar 2022 16:17:57 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0ogA_b57N_yOjARfh9Gmox+KUrOcP5eE_frSD5YXJJsw@mail.gmail.com>
Message-ID: <CAK8P3a0ogA_b57N_yOjARfh9Gmox+KUrOcP5eE_frSD5YXJJsw@mail.gmail.com>
Subject: Re: [PATCH 13/14] ARM: configs: sync multi_v5_defconfig from savedefconfig
To:     Nicolas Ferre <nicolas.ferre@microchip.com>
Cc:     Andre Przywara <andre.przywara@arm.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Maxime Ripard <mripard@kernel.org>,
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
X-Provags-ID: V03:K1:EtSGxTBTnVutohwlLPkLT6V09HjgR27Df9whsgpOo2Qr3CtrnFo
 hwCFaeHfsFSTBxab6d4ipwN8gFUDfjQpWcBpPCO2R/WPK/1DBbzJbj3uGMkyKSqwZRr1Hxh
 g4APnfbzqM9Plijg9GqpRCSVoV6oF4tiA81YeK7uPM+nzYgQMcXPsa0PzD6yin6o2V1McWp
 No9bd0gM1mW5HNLEr/C4w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:aZlBlb9bkgw=:iuf0d8uPZOlElRw/HnhuQG
 6HHdQy3mjvOc5UP3HwNom7jejKVH933kh+HB91IQrhU/jEU142DUYMHHdIuMJS99q6wC3Hc6N
 OYPAq4wt8o1mZRuG7Q/hz5wYecfJV69MsHCxAi2jDL+aFPFTZQx12Ae6e1t3/kpQy465L+dXY
 iWDRIszc2oFEmuo/l2JFkqMuHToh4uRWbsy/ZkKqqjoEn0LKRg7umMQB1J3aP9Zh8CETtSQSw
 84GK1PnZctRwASkOfXpPBF4kxL7MpPmkxvemniRiOin44qWLocqsbK0Oi2/hMZpVlp1ntRAIw
 pf8VSqLrGWzQDkaMkYmJb45/faJ/NqNCNtHnWFVp23JosAEwsO0OK9X4eyLmgHs44anknq2n4
 C/HQ1kp/2EmmIdFWx6Ir/y6IPWJ1b2p3tuuyfzUPvSOQXwOAK19J9U5AJAPX1MxAS4FuXdQUp
 E/SSmDejPf9ElglLFG53VumqUDl/eKYN5ciRwd1oh43ylL/nC8gbLxMFdKmq4gqK8K/CZ6kop
 Oe7N3ZYrhlHgWZdvVIHp61ubef1jaOGIQbreh+k2LKTa1E9lPdty63+0TzdY9Bv8GAA7rWbt6
 ANJJL67X0gmmCDZmxs5NLpPouamAd0cXAd2eXb299jvfzNnjPVxA+c0nxqQnF5IhkClcgIiwC
 9S0OmZiey+LXKOaVu0QG8k9hGIdelEPyxSNV+FOXjoglP8Q4JvVqy1UvtHR1q9V5vhAg=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 8, 2022 at 3:30 PM Nicolas Ferre
<nicolas.ferre@microchip.com> wrote:
> On 08/03/2022 at 13:07, Andre Przywara wrote:
>
> As far as I'm concerned and only talking about the drivers, I would
> prefer that we keep the following config options activated in the .config:
>
> CONFIG_VIDEO_ATMEL_ISI=m
> CONFIG_DRM_PANEL_SIMPLE=y
> CONFIG_FB_ATMEL=y
> CONFIG_BACKLIGHT_ATMEL_LCDC=y
>
> The question to know if they are activated by default or not and if the
> associated stack is selected or not, well... I lost track of this, sorry.

These are actually missing, I think the two options we need to
enable are:

CONFIG_MEDIA_PLATFORM_SUPPORT=y
CONFIG_FB=y

All the other options that get removed are either now the default,
or are no longer part of the kernel.

         Arnd

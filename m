Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5723D6344CF
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 20:48:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231174AbiKVTr7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 14:47:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234113AbiKVTrz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 14:47:55 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D61E82DAB1
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 11:47:52 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id t25-20020a1c7719000000b003cfa34ea516so1581102wmi.1
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 11:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oBhSplhafEZu1O/edyKkvY2p/vQ6iVcq2GtEauKfvlU=;
        b=psHLO8IQlg78nZThnrKNHqTkVOe+3El+1EWbP31cACol3wRP5B+fvCdyezqdvjSPeJ
         hEan2Pe39RN5YOATB+ZkkrsoiiqknGAjv9C5W78rIdN38QicSJibB1NlRZepiZRz623i
         KACfdz+8pud3tc1kdzLx9bD502hpnKAApcoASdTyQZunYZzdylBc5Y8trlpi49j0qTqc
         42olaE6pmiZsNsdSt6VwX9hPNpXIgW+7Y4f23N6vEbt5sFMfEUr2z3ttbfIirAaGpKqr
         sVIguQgBD01nkvwQKF0Ds7zAd6xpkLQSZTUmk4p64RtlRuS6zZUa+Sin2wHHmxztWj8f
         VcoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oBhSplhafEZu1O/edyKkvY2p/vQ6iVcq2GtEauKfvlU=;
        b=e/L4Qs3f5B9kncpV+qHdgLbfztJW1cRsBp3ZmPudeKEKEG1PNiiOfAumzvxILSS9SQ
         i8FtCp1O87MOVTZwML9paevx4cIbkdiM0vOkrvMNq6dElSGArtgelatK0EysewZK1Gg+
         GSp7EeKijQnXxJjXNTs86UxpCa+Et/hRJo3UralZlfPPJ9FKCpYABsSEufO5DEj3G19Z
         S1o8dNe9XVDFdx40U12RBqikJrtRg3MjaPZtVR63QpgdRuNfGcpBrCQW/CkAzs6GwPqu
         /prBiHR7SOpWxJz3ySpwGCqjB5NKrP9A4PoBlJker6VK2MIBQacJj80quk8HmWV0yjV/
         nHrg==
X-Gm-Message-State: ANoB5pmjaHUAbdP+GYYPTxr+xss6AraHNoeA6fD+fHedXTjDu8bfXnkL
        HamdAvCk3/rfj/+Riitx7KU=
X-Google-Smtp-Source: AA0mqf6dKC54I4V8zSBr9hT+XvJnLOIEz3JjMXu9QdrDdKAlLM3uUvltXmSDe42uuECszWciW3NCfg==
X-Received: by 2002:a1c:7513:0:b0:3cf:8896:e1c9 with SMTP id o19-20020a1c7513000000b003cf8896e1c9mr20832287wmc.119.1669146471314;
        Tue, 22 Nov 2022 11:47:51 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id u11-20020adfed4b000000b00241e8d00b79sm1007528wro.54.2022.11.22.11.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 11:47:50 -0800 (PST)
From:   Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To:     Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        linux-rockchip@lists.infradead.org
Cc:     Shengyu Qu <wiagn233@outlook.com>,
        Michael Tretter <m.tretter@pengutronix.de>,
        devicetree@vger.kernel.org, heiko@sntech.de, jacob-chen@iotwrt.com,
        kernel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
        robh+dt@kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
Date:   Tue, 22 Nov 2022 20:47:49 +0100
Message-ID: <2694546.oTxpM42Gb3@archbook>
In-Reply-To: <CAMdYzYr68xvNvJRiJw9JyHoN7v12bvucdWLhdkt5j1QJqEuApg@mail.gmail.com>
References: <20221121151755.2072816-3-m.tretter@pengutronix.de> <CAAEAJfC74Am19+GSpCpbWJVpdbgv4n=3pjMHNkpRcCQfwi5xQA@mail.gmail.com> <CAMdYzYr68xvNvJRiJw9JyHoN7v12bvucdWLhdkt5j1QJqEuApg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Dienstag, 22. November 2022 00:10:25 CET Peter Geis wrote:
> On Mon, Nov 21, 2022 at 12:34 PM Ezequiel Garcia
> <ezequiel@vanguardiasur.com.ar> wrote:
> >
> > Hi Shengyu, Michael,
> >
> > On Mon, Nov 21, 2022 at 2:13 PM Shengyu Qu <wiagn233@outlook.com> wrote:
> > >
> > > Hi,
> > > I remember someone said that rga2 has only 32bit address space but no=
t having a mmu or mmu needs to be configured. Better ask by yourself in pin=
e64 discord since I'm not sure about that.
> > >
> > > Shengyu
> > >
> > >
> > > =E4=BA=8E 2022=E5=B9=B411=E6=9C=8822=E6=97=A5 GMT+08:00 =E4=B8=8A=E5=
=8D=8812:41:16, Michael Tretter <m.tretter@pengutronix.de> =E5=86=99=E5=88=
=B0:
> > > >Hi,
> > > >
> > > >On Tue, 22 Nov 2022 00:01:28 +0800, Shengyu Qu wrote:
> > > >> Someone from pine64 discord found that RGA2 doesn't work properly =
on over
> > > >>
> > > >> 4GB memory RK3568 devices. Are you sure current driver works now?
> > > >
> > > >I am absolutely sure that the driver works on a 2GB ROCK3A board.
> > > >Unfortunately, I don't have a device with 4GB or more memory and I c=
annot test
> > > >the driver with such a device.
> > > >
> > > >As the documentation for the RGA2 is the same in the TRM of the rk32=
88 and
> > > >rk3568, I would guess that the driver doesn't work on a rk3288 with =
more than
> > > >4GB (if there is such a thing) either and the driver needs to be fix=
ed for
> > > >both SoCs.
> > > >
> >
> > In any case, if there's some kind of issue it must be in the driver,
> > and not in the device tree binding (i.e. this patchset).
>=20
> An unfortunate number of Rockchip drivers break on rk356x boards with
> more than 4GB of ram. I've found requesting memory allocations with
> the GFP_DMA flag solves the problem, as the kernel only allocates
> 32bit addresses for DMA on rk356x. This is similar to the bug with the
> ITS MSI allocations.

Hello,

the problem in this case at least partly seems to be down to the driver
assuming 32 bit addresses, see e.g. [1] (if I understand the code
correctly) and [2]. When I asked in the #armlinux IRC on Libera.chat
about this, Robin Murphy remarked:

  <robmur01> yeesh, the virt_to_phys/dma_sync abuse is even worse
  - in that particular instance I'd be inclined to replace
  {src,dst}_mmu_pages with proper coherent DMA buffers

So the driver in general needs some cleanup, which contributes to the
problem.

But as was said, this isn't a problem with the device tree, so it should
still make it in. It just means that the driver is broken on 8GB RK356x.

Regards,
Nicolas "someone from PINE64 discord (who was actually on IRC)" Frattaroli

[1]: https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/media/platfor=
m/rockchip/rga/rga.c#L888
[2]: https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/media/platfor=
m/rockchip/rga/rga-buf.c#L120

>=20
> >
> > Regards,
> > Ezequiel
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
>=20
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>=20





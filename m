Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA593573B2
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 19:55:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236222AbhDGRzr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 13:55:47 -0400
Received: from mout.kundenserver.de ([217.72.192.74]:34847 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354987AbhDGRzp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 13:55:45 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]) by
 mrelayeu.kundenserver.de (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1Mn2eH-1ltbX72Mch-00k95U for <devicetree@vger.kernel.org>; Wed, 07 Apr
 2021 19:55:34 +0200
Received: by mail-ot1-f43.google.com with SMTP id w31-20020a9d36220000b02901f2cbfc9743so18899069otb.7
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 10:55:34 -0700 (PDT)
X-Gm-Message-State: AOAM530YHz/N6RT9KdHKjwa4cG1uf0VPZcxy9Yf/Bybmf7PQ39Pv8nKu
        s7hnfWLvQ78okjjbC34Eiec4wl1wasW70qC9iqk=
X-Google-Smtp-Source: ABdhPJzFae5o2sDZdv1GTYiLdAFDJ0G3fZf1iRlU0eP5yGtTc46bhdPOIwOQIpCMXbLmu9KXnz8t04DTE8yeXQij0sE=
X-Received: by 2002:a9d:316:: with SMTP id 22mr3925495otv.210.1617818133281;
 Wed, 07 Apr 2021 10:55:33 -0700 (PDT)
MIME-Version: 1.0
References: <22814673-e9fe-f65b-cc0f-b02be4f90d1a@gmail.com>
 <CAK8P3a0bp3CUzOQHSX5KYt44j-Njk_u2P=0q-ZQ0HcTBiVVVSA@mail.gmail.com> <01c82108-64a8-33ee-3984-5bd7056a0002@gmail.com>
In-Reply-To: <01c82108-64a8-33ee-3984-5bd7056a0002@gmail.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Wed, 7 Apr 2021 19:55:17 +0200
X-Gmail-Original-Message-ID: <CAK8P3a37BUdHneO+9+t0Pan3UWZHub-ishcKLNxCbqO0kk0CNw@mail.gmail.com>
Message-ID: <CAK8P3a37BUdHneO+9+t0Pan3UWZHub-ishcKLNxCbqO0kk0CNw@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: dts: mediatek: changes for v5.13 (second round)
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Fabien Parent <fparent@baylibre.com>,
        Irui Wang <irui.wang@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:XWWkTaLhr/k2PYPonNnO7WuVuXePoKBfHGV16xPW0SI58jtM/Pq
 3AaAadA5vCSVCZUsvULFzgWDWazC35dtIqmJTzYMdW5w+mv2Ii2Te+UybM2XPY/WBBAkwgT
 NFGFQXBjyjqkDLzWXv3X5cFTCcz1vQglmlW8/uRGqU5chsbuxWMKGCuwZYrmsD0bRPmtp4B
 csQEiPrxDRrhJTbiKcOAQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aXeHEdam0IQ=:0z1h6N5Yj8q4dc1hB2lygY
 8XzDOb/PuZ//UG4UF+gYDs/Khw3UdaqrU4Ifvpq2MsvRTNP3yckzbIesK1Zda8t8DIJtcYY3U
 eA6aDu1dENjotCl70BJZ9JmUsBfOuSKXIgGdoNYCreO1z5LWrVkwbYUCg/cQXf13urJR9aDSY
 qnbTo26ZXLume/oTQunHW2+rq5xAXyNMgsdrg+R7vnvPeBo6jqbbMR5LL3TxHl8dLGRgPTEfh
 bMay4xIEPZjj7rd3D/6RdyKgSx0tnzpGjykbMZjiaRc0QodvLDKt8hdkZrNW0CoMTZBcI3v5F
 TehiTWsvRkzrym/+tJWsIbkvzCIBpSWhaBKrnIdPsq6u4DdXB7m3Q99f3SxO6A0OrOMQvgbp0
 jK8vUOrgAclMheYRar2wbg496XT8P6HBXJmRGIEffD4kWivqsz/Ifc5ssxvSKGVEMZsTphrav
 POCgzB2c/zaTo0XSxkffy9xrB/DdvSs=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 7, 2021 at 6:34 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> On 07/04/2021 18:06, Arnd Bergmann wrote:
> > On Wed, Apr 7, 2021 at 1:00 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> >>
> >> Hi Olof and Arnd,
> >>
> >> Here comes the second round of arm64 DT patches. Hope I'm not too late.
> >> Basically we add several node to MT8167.
> >> ----------------------------------------------------------------
> >> Fabien Parent (6):
> >
> >>       arm64: dts: mediatek: mt8167: add some DRM nodes
> >
> > I stumbled over this patch adding a lot of aliases:
> >
> > +       aliases {
> > +               aal0 = &aal;
> > +               ccorr0 = &ccorr;
> > +               color0 = &color;
> > +               dither0 = &dither;
> > +               dsi0 = &dsi;
> > +               ovl0 = &ovl0;
> > +               pwm0 = &disp_pwm;
> > +               rdma0 = &rdma0;
> > +               rdma1 = &rdma1;
> > +               wdma0 = &wdma;
> > +       };
> >
> >
> > Something doesn't quite feel right about this, and I checked with Rob,
> > who also thinks this looks wrong. I suppose we need to have a set of
> > well documented alias types rather than just having drivers make up
> > new ones on the spot.
>
> These are needed in the DRM driver, see drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
>
> I added Chun-Kuang who is the maintainer of the driver. I think it's a good idea
> to have this alias described in the binding. Maybe a good excuse to move to yaml
> as well :)

The aliases certainly need to be described in the binding, I think someone
would likely have complained earlier if that was part of the binding.

Moving it to yaml is also a good idea, and required for any new devices.

> > I also noticed that some of the referenced nodes are missing a DT
> > binding file, so those need to be added and reviewed as well.
>
> I suppose you are talking about "mediatek,mt8173-vcodec-enc-vp8". The binding
> patches are in the media tree [1]. Maybe I supposed wrongly that they will land
> in v5.13? Or perhaps I should have mentioned that in the pull request.
>
> If it wasn't about this compatible and you can still remember, please let me
> know so that we can fix that :)
>
> I double checked and didn't find any missing binding. Some of them only have the
> fallback binding described, maybe that's what you are referring to.

Here is what I see for all compatible strings of the added device nodes in
this patch, as of linux-next-20210407:

$ for i in mediatek,mt8167-disp-mutex mediatek,mt8167-disp-rdma
mediatek,mt2701-disp-rdma mediatek,mt8167-disp-pwm
mediatek,mt8173-disp-pwn mediatek,mt8167-dsi mediatek,mt2701-dsi
mediatek,mt8167-mipi-tx mediatek,mt2701-mipi-tx
mediatek,mt8167-disp-ovl mediatek,mt8173-disp-ovl
mediatek,mt8167-disp-rdma mediatek,mt2701-disp-rdma
mediatek,mt8167-disp-color mediatek,mt8173-disp-color
mediatek,mt8167-disp-ccorr mediatek,mt8183-disp-ccorr
mediatek,mt8167-disp-aal mediatek,mt8167-disp-gamma
mediatek,mt8173-disp-gamma mediatek,mt8167-disp-dither
mediatek,mt8167-disp-wdma ; do echo === $i ;  git grep -wl $i
Documentation/devicetree/ ; done

=== mediatek,mt8167-disp-mutex
=== mediatek,mt8167-disp-rdma
=== mediatek,mt2701-disp-rdma
=== mediatek,mt8167-disp-pwm
Documentation/devicetree/bindings/pwm/pwm-mtk-disp.txt
=== mediatek,mt8173-disp-pwn
=== mediatek,mt8167-dsi
=== mediatek,mt2701-dsi
=== mediatek,mt8167-mipi-tx
=== mediatek,mt2701-mipi-tx
Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
=== mediatek,mt8167-disp-ovl
=== mediatek,mt8173-disp-ovl
Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
=== mediatek,mt8167-disp-rdma
=== mediatek,mt2701-disp-rdma
=== mediatek,mt8167-disp-color
=== mediatek,mt8173-disp-color
Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
=== mediatek,mt8167-disp-ccorr
=== mediatek,mt8183-disp-ccorr
=== mediatek,mt8167-disp-aal
=== mediatek,mt8167-disp-gamma
=== mediatek,mt8173-disp-gamma
Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
=== mediatek,mt8167-disp-dither
=== mediatek,mt8167-disp-wdma

So five of the strings are documented, the others are missing. I did not check
the other patches in your branch.

         Arnd

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F163C565055
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 11:06:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233473AbiGDJFd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 05:05:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233467AbiGDJFc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 05:05:32 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83900B7D7
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 02:05:31 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id i7so15723562ybe.11
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 02:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=r/txlkwsSXqpHvse6mvjLzWXeKgq/3s2YGv3xUbY5Mw=;
        b=IZMtQaneY5bkRCRn435yzjopTFrLGsnNAroUEZA60DC0wDcRkqcBfVDxlEqIAnCcnv
         MJ+3wG9bMVU7XIr1JE4rMRp8GxdmdHqRQssIXdAKWzib8AhqRQfMtd1Ev5UYgUXL60hU
         mbNGA3bwTtz5fkHWvaWYAA7QgoSNJDezpHkjE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=r/txlkwsSXqpHvse6mvjLzWXeKgq/3s2YGv3xUbY5Mw=;
        b=y8C02UNcrf/agK5pv/0zq5wwJp6gAG6bfICHA2nPLIcWTL0oFbqwryV2DvXrx2WpDq
         2Xleh2TY9KTFSYy4JDENFdZi0sn1YKx4jiOygBZY9fA/RgKJDvYYPDe2Plewcso7+Guw
         NlML0+alinrNvg2sdRgJkntDuSMHBlqac4EbkPeGZqb4LChd4Mrbciue6Ng97ZgflqCj
         m6CfSdxEm/URR7dDCNFik/pA1XnKCyGHK82nbKl45mJk/ikq0bkcuMCdjM0bhaJeuj3F
         swAQkCtUgAfF+wR9Rryj9DRVtPsDDy+x8hzC3aQQhRydyU9b3xtt/m4tGz04XNXo9w1Q
         sRoA==
X-Gm-Message-State: AJIora8rp57pLy2kQw9pdgUjH1fgsvxa/Kdaa06j8Xq7Co2J9Es6Q5+6
        XyG300mVcIUHq/dlEAkgAK8BvTpMNDDhbIISmlQN9A==
X-Google-Smtp-Source: AGRyM1u/TsAK473TGC7wQD7QiZ3JS9EK3BN1tnkdsrtBgG5BwbEhf2QtpJUMvLNJcqA/nNx8tedpcrxKO3kN0Gu4/0Y=
X-Received: by 2002:a25:7801:0:b0:669:b51b:10d0 with SMTP id
 t1-20020a257801000000b00669b51b10d0mr30989188ybc.204.1656925530744; Mon, 04
 Jul 2022 02:05:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220630153316.308767-1-angelogioacchino.delregno@collabora.com>
 <20220630153316.308767-3-angelogioacchino.delregno@collabora.com>
 <20220701221158.iuw5fehgkjrqw6zh@notapiano> <CAGXv+5FwDuUjbP4THBsXorps12in-=JUtB-4VO5ygDBuQn1SeQ@mail.gmail.com>
 <91e60954-d44d-f99f-2b4f-c164fb33cc0e@collabora.com>
In-Reply-To: <91e60954-d44d-f99f-2b4f-c164fb33cc0e@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 4 Jul 2022 17:05:19 +0800
Message-ID: <CAGXv+5HUQ1pNSDqyiH8taec8ykeaztjNY5dQPKTcJPpYh5JS9g@mail.gmail.com>
Subject: Re: [PATCH 02/11] arm64: dts: mediatek: Introduce MT8195 Cherry
 platform's Tomato
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        hsinyi@chromium.org, allen-kh.cheng@mediatek.com, gtk3@inbox.ru,
        luca@z3ntu.xyz, sam.shih@mediatek.com, sean.wang@mediatek.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 4, 2022 at 4:59 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 04/07/22 06:17, Chen-Yu Tsai ha scritto:
> > On Sat, Jul 2, 2022 at 6:12 AM N=C3=ADcolas F. R. A. Prado
> > <nfraprado@collabora.com> wrote:
> >>
> >> On Thu, Jun 30, 2022 at 05:33:07PM +0200, AngeloGioacchino Del Regno w=
rote:
> >>> Introduce the MT8195 Cherry Chromebook platform, including three
> >>> revisions of Cherry Tomato boards.
> >>>
> >>> This basic configuration allows to boot Linux on all board revisions
> >>> and get a serial console from a ramdisk.
> >>>
> >>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@=
collabora.com>
> >>> ---
> >>>   arch/arm64/boot/dts/mediatek/Makefile         |  3 +++
> >>>   .../dts/mediatek/mt8195-cherry-tomato-r1.dts  | 11 ++++++++
> >>>   .../dts/mediatek/mt8195-cherry-tomato-r2.dts  | 11 ++++++++
> >>>   .../dts/mediatek/mt8195-cherry-tomato-r3.dts  | 12 +++++++++
> >>>   .../boot/dts/mediatek/mt8195-cherry.dtsi      | 26 ++++++++++++++++=
+++
> >>>   5 files changed, 63 insertions(+)
> >>>   create mode 100644 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomat=
o-r1.dts
> >>>   create mode 100644 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomat=
o-r2.dts
> >>>   create mode 100644 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomat=
o-r3.dts
> >>>   create mode 100644 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> >> [..]
> >>> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts=
 b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> >>> new file mode 100644
> >>> index 000000000000..17e9e4d6f6ab
> >>> --- /dev/null
> >>> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
> >>> @@ -0,0 +1,11 @@
> >>> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> >>> +/*
> >>> + * Copyright (C) 2021 MediaTek Inc.
> >>> + */
> >>> +/dts-v1/;
> >>> +#include "mt8195-cherry.dtsi"
> >>> +
> >>> +/ {
> >>> +     model =3D "MediaTek Tomato (rev1) board";
> >>
> >> Given that the compatible is "google," I believe we'll want to rename =
the model
> >> to "Google Tomato", much like was commented on the Asurada series [1],=
 but
> >> better to have confirmation from someone from Google. Chen-Yu? :)
> >
> > I asked for clarification internally and it turns out we didn't get the
> > Asurada series quite right either.
> >
> > Google only owns the reference design, that is Asurada for MT8192 and
> > Cherry for MT8195. The vendor own the end product design that is based
> > off of Google's reference design.
> >
> > So for Tomato, the vendor is Acer. Note that "Tomato" and the other
> > codenames seen in ChromeOS are public codenames that Google uses.
> >
> > The compatible string will likely stay "google,XXX", since this is set
> > in firmware, and updating it after the product has shipped poses both
> > a significant hurdle and risk.
> >
>
> Yeah, makes sense. Should we call this "Acer Tomato (revX) board" then?
> ...if we do that, though, we need to know if the other revisions of Tomat=
o
> are also from Acer, or we would be getting one right and all the others w=
rong.

AFAIK each "device build" is its own project and gets its own codename,
otherwise it would get real confusing for us internally really fast.

ChenYu

> Cheers,
> Angelo
>
> >
> > Regards
> > ChenYu
> >
> >> Otherwise,
> >>
> >> Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> >>
> >> Thanks,
> >> N=C3=ADcolas
> >>
> >> [1] https://lore.kernel.org/all/CAGXv+5Gv2pjPXynz6HCdgux+giPDC5qRk+KW1=
aFduVz82rM=3D+g@mail.gmail.com/
> >>
> >>> +     compatible =3D "google,tomato-rev1", "google,tomato", "mediatek=
,mt8195";
> >>> +};
> >> [..]
> >>> --
> >>> 2.35.1
> >>>
>

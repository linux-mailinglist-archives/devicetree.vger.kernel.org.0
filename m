Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C830396D24
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 08:08:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231139AbhFAGJy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 02:09:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232956AbhFAGJx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 02:09:53 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9BFEC061756
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 23:08:11 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id e2so17661496ljk.4
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 23:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h+RBOKgFnHiqXpmMdbi5LttMi0EzDR2w4eBfSKrv8y8=;
        b=SSwG5kX9a/nZQ9+jle/gxa5cH3fac2/SAeuL8qINJ7JVa65PDXIGvQnqzPNvEzMlWl
         MRF2k/IQtRD/uROXpHtWpAxQ8cdA0fiNevDJT1lMFbidcMjCdqPcNFWUEeuVk6RZtuvJ
         NyaB9pANmXh6vNrXka9tRgd2Vh5Sevelfqj9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h+RBOKgFnHiqXpmMdbi5LttMi0EzDR2w4eBfSKrv8y8=;
        b=iokoi4i8LlLR22DHQLFGTg8sxqgAYP1JzW6/ovouyfVPEGGuyThTONXhmy0KfvyRz2
         WXGeDcJwvvRUn40WiPCK7Twvsl0u02GDc57mPmo61PKmYZo6S0TdvYzF3pNJCp+6DJ/R
         Ty4kVdNQkh3Vuv3W8JcNUUwks3nVzWIW5wPo7D4Cv5Ijjvayll+simyrciOyN79/s6KU
         ERcDz8eUxoMdHYPvesyhMk2HoU1YeELf+N3e381HZX/NseSfC8RmuRSIcHni2pEqlfj/
         sIQtI0rqV415aGhcu5bynpR1mBCm07alf+M2j+bCIl/9v0CroNvR9fW5tg6mnE2ioa1K
         teng==
X-Gm-Message-State: AOAM53272Zm5nQleI6Ssec76YqIrEUzDLmQKk0VdeFcBasrmR3kJ5VOr
        BhRRkUaSwshFrIc2dQGEvj1gESTDYaQFgZdPJVmC1g==
X-Google-Smtp-Source: ABdhPJzW/hjUiIdkPBnpEbbE0N6TlJBMpXZ3PlMLAYbKsG/XyVjMrRGKJ6tW4F+n/kslAcDQyCFCsOslxF/0r2JcLHo=
X-Received: by 2002:a2e:a554:: with SMTP id e20mr19052884ljn.23.1622527689964;
 Mon, 31 May 2021 23:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210601024408.24485-1-jianjun.wang@mediatek.com>
 <20210601024408.24485-2-jianjun.wang@mediatek.com> <CAGXv+5G-8+ppafiUnqWm2UeiL+edHJ2zYZvU-S7mz_NdrM3YsA@mail.gmail.com>
 <1622526594.9054.6.camel@mhfsdcap03>
In-Reply-To: <1622526594.9054.6.camel@mhfsdcap03>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 1 Jun 2021 14:07:58 +0800
Message-ID: <CAGXv+5GMTbC5TTgURhPAvxBEY18S6-T-BZ9CpXsO91Trim7TXw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: PCI: mediatek-gen3: Add support for MT8195
To:     Jianjun Wang <jianjun.wang@mediatek.com>
Cc:     Ryder Lee <ryder.lee@mediatek.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Randy Wu <Randy.Wu@mediatek.com>, youlin.pei@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jun 1, 2021 at 1:50 PM Jianjun Wang <jianjun.wang@mediatek.com> wrote:
>
> On Tue, 2021-06-01 at 11:53 +0800, Chen-Yu Tsai wrote:
> > Hi,
> >
> > On Tue, Jun 1, 2021 at 10:50 AM Jianjun Wang <jianjun.wang@mediatek.com> wrote:
> > >
> > > MT8195 is an ARM platform SoC which has the same PCIe IP with MT8192.
> >
> > Based on what I'm seeing internally, there seems to be some inconsistency
> > across the MediaTek platform on whether new compatible strings should be
> > introduced for "fully compatible" IP blocks.
> >
> > If this hardware block in MT8195 is "the same" as the one in MT8192, do we
> > really need the new compatible string? Are there any concerns?
>
> Hi Chen-Yu,
>
> It's ok to reuse the compatible string with MT8192, but I think this
> will be easier to find which platforms this driver is compatible with,
> especially when we have more and more platforms in the future.

If it's just for informational purposes, then having the MT8192 compatible
as a fallback would work, and we wouldn't need to make changes to the driver.
This works better especially if we have to support multiple operating systems
that use device tree.

So we would want

    "mediatek,mt8195-pcie", "mediatek,mt8192-pcie"

and

    "mediatek,mt8192-pcie"

be the valid options.

Personally I'm not seeing enough value to justify adding the compatible string
just for informational purposes though. One could easily discern which hardware
is used by looking at the device tree.


Regards
ChenYu


> Thanks.
> >
> >
> > Thanks
> > ChenYu
> >
> >
> > > Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
> > > ---
> > >  Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> > > index e7b1f9892da4..d5e4a3e63d97 100644
> > > --- a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> > > +++ b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
> > > @@ -48,7 +48,9 @@ allOf:
> > >
> > >  properties:
> > >    compatible:
> > > -    const: mediatek,mt8192-pcie
> > > +    oneOf:
> > > +      - const: mediatek,mt8192-pcie
> > > +      - const: mediatek,mt8195-pcie
> > >
> > >    reg:
> > >      maxItems: 1
> > > --
> > > 2.18.0
> > > _______________________________________________
> > > Linux-mediatek mailing list
> > > Linux-mediatek@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-mediatek
>

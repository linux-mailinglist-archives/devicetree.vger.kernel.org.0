Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A85791FF1EE
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2020 14:35:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727093AbgFRMfG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Jun 2020 08:35:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727048AbgFRMfE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Jun 2020 08:35:04 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14ED9C06174E
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2020 05:35:04 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id f7so6223923ejq.6
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2020 05:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=abF6OHbZnM7Q08OSXibHTxV15MlmdycHsIUv8D1tav8=;
        b=h1N4X47aPUwFQwS2Mc5NzhUIk+Bs+X6bsXwxwA2AzzEY+0YaOIwLv36kv2NTGtQKgk
         Io6/9xE4BPRlAhQEAlqdq1+Yw0CvLAcXYane9bTsjd5HKbUOChp/YES+P3hEi4ES2ndB
         uW/W6wCFtAAluYTlm8iFGgu5akQ7Jb3f+w2Fs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=abF6OHbZnM7Q08OSXibHTxV15MlmdycHsIUv8D1tav8=;
        b=IaiNwnbbFXg+9nhKPJZ8nKZ/srXta0IvDHbsezdSDFPHCNcuWiNJMfKX64WIO2dWJa
         PKpuLq6rem1XnKtce0T19ZVA1ODhnYaQBmMHXOR8QwVU7ruiMR++al2FgJEIUfDXs+h8
         lm8Kxk1KThhayuTgfoL3qr5vhl1p1MuYjqPIpLzwdo/qNGvbqZl5bKf7iEi1t6DrFaTW
         8cW3KwwxRuLhGBLGPbruUMsI+7xwoKcJ8U7+EeWQ8hoSmAtl6M8Nv439yp9B02Lxekt9
         tM3ggGqX2Foc4y7ytt5YALesf6QRqKZrJPSnwaPO+o8uh4L5FX2sJECktJp0afkyUPlD
         eUqA==
X-Gm-Message-State: AOAM530ww7tCBTWbQIEMFiBeAR27XswTN6CYw+x592FoZEE1hoGI8+/3
        nn/Jrm+q4Nr/pBNpgtXmRP+DRIFQM/s9kQ==
X-Google-Smtp-Source: ABdhPJy2miOxwEFo+TygB2Sqk4Ak2ZLHZGZWXbIAY/zRmPClVcSpfLgPLzTmwmN77acVNUPxfLbUFw==
X-Received: by 2002:a17:906:5496:: with SMTP id r22mr3927625ejo.449.1592483702738;
        Thu, 18 Jun 2020 05:35:02 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com. [209.85.128.45])
        by smtp.gmail.com with ESMTPSA id nw22sm2211758ejb.48.2020.06.18.05.35.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jun 2020 05:35:02 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id g21so1031446wmg.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2020 05:35:01 -0700 (PDT)
X-Received: by 2002:a1c:4189:: with SMTP id o131mr3620052wma.183.1592483701237;
 Thu, 18 Jun 2020 05:35:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200403094033.8288-1-xia.jiang@mediatek.com> <20200403094033.8288-12-xia.jiang@mediatek.com>
 <20200521160046.GJ209565@chromium.org> <1592451616.15355.25.camel@mhfsdcap03>
In-Reply-To: <1592451616.15355.25.camel@mhfsdcap03>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Thu, 18 Jun 2020 14:34:50 +0200
X-Gmail-Original-Message-ID: <CAAFQd5Axc7RKcY_p-368GC7awx=SRKDTxxjjCibPwSOQ2FXpsA@mail.gmail.com>
Message-ID: <CAAFQd5Axc7RKcY_p-368GC7awx=SRKDTxxjjCibPwSOQ2FXpsA@mail.gmail.com>
Subject: Re: [PATCH v8 11/14] media: dt-bindings: Add jpeg enc device tree
 node document
To:     Xia Jiang <xia.jiang@mediatek.com>
Cc:     Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rick Chang <rick.chang@mediatek.com>,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Sergey Senozhatsky <senozhatsky@chromium.org>,
        mojahsu@chromium.org, Nicolas Boichat <drinkcat@chromium.org>,
        =?UTF-8?B?TWFvZ3VhbmcgTWVuZyAo5a2f5q+b5bm/KQ==?= 
        <maoguang.meng@mediatek.com>, Sj Huang <sj.huang@mediatek.com>,
        =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <yong.wu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 18, 2020 at 5:43 AM Xia Jiang <xia.jiang@mediatek.com> wrote:
>
> On Thu, 2020-05-21 at 16:00 +0000, Tomasz Figa wrote:
> > Hi Xia,
> >
> > On Fri, Apr 03, 2020 at 05:40:30PM +0800, Xia Jiang wrote:
> > > Add jpeg enc device tree node document
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > > ---
> > > v8: no changes
> > >
> > > v7: no changes
> > >
> > > v6: no changes
> > >
> > > v5: no changes
> > >
> > > v4: no changes
> > >
> > > v3: change compatible to SoC specific compatible
> > >
> > > v2: no changes
> > > ---
> > >  .../bindings/media/mediatek-jpeg-encoder.txt  | 37 +++++++++++++++++++
> > >  1 file changed, 37 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> > >
> >
> > Thank you for the patch. Please see my comments inline.
> Dear Tomasz,
>
> Sorry for missing this message. Replied below.
> >
> > > diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> > > new file mode 100644
> > > index 000000000000..fa8da699493b
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> > > @@ -0,0 +1,37 @@
> > > +* MediaTek JPEG Encoder
> > > +
> > > +MediaTek JPEG Encoder is the JPEG encode hardware present in MediaTek SoCs
> > > +
> > > +Required properties:
> > > +- compatible : should be one of:
> > > +               "mediatek,mt2701-jpgenc"
> > > +               ...
> >
> > What does this "..." mean?
> "..." means that compatible name is not just "mediatek,mt2701-jpgenc",
> different project has different compatible name(for example the MT8173's
> compatible name may be "mediatek,mt8173-jpgenc").

The bindings need to list all the currently defined compatible strings
explicitly.

> >
> > > +               followed by "mediatek,mtk-jpgenc"
> > > +- reg : physical base address of the JPEG encoder registers and length of
> > > +  memory mapped region.
> > > +- interrupts : interrupt number to the interrupt controller.
> > > +- clocks: device clocks, see
> > > +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> > > +- clock-names: must contain "jpgenc". It is the clock of JPEG encoder.
> >
> > nit: In principle the clocks should be named after the function the clock
> > performs on the consumer side, i.e. the JPEG block in this case, I guess
> > here it's just a generic clock that does everything, but I guess it comes
> > from somewhere. Is it the AHB clock or something? In that case it would
> > normally be called "ahb".
> I have confirmed with hardware designer that the jpeg clock is not AHB
> clock,it follows subsys clock(because 2701 is the old IC,I didn't get
> the source name).It has the same source with venc clock.We can see that
> the clocks = <imgsys CLK_IMG_VENC>, Should I name it "venc" or the
> orignal "jpgenc"?

The clock name of the device-side bindings is the name of the input of
the device itself, no matter where the clock comes from in the SoC. I
guess if there is no specific purpose of this clock, "jpgenc" is as
good as any other name (e.g. "clock"), so feel free to keep it.

> >
> > > +- power-domains: a phandle to the power domain, see
> > > +  Documentation/devicetree/bindings/power/power_domain.txt for details.
> > > +- mediatek,larb: must contain the local arbiters in the current SoCs, see
> > > +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> > > +  for details.
> >
> > I believe this isn't necessary anymore, because larbs are added
> > automatically by the MTK IOMMU driver using device links. +CC Yong who
> > worked on that.
> Yes,I have confirmed with Yong that he will help me to modify this.Is it
> ok that I keep the orignal larb code?

I guess it depends on the order of landing the patches. If we intend
to land this series before the larb removal series, the binding should
stay as is. If the other way around, this should be removed. Please
coordinate with Yong.

Best regards,
Tomasz

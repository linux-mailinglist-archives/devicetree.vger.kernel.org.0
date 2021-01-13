Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D1582F439D
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 06:24:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725857AbhAMFXu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 00:23:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725849AbhAMFXu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 00:23:50 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB5A7C061575
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 21:23:09 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id lt17so1312356ejb.3
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 21:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2NaZcbwSAFQ15OW65EbbMjqTmOC5Pf2iFjcyvx6UbnA=;
        b=SkyiyzJ28uSjHS90XLoXBBlIMxeQbmNuAEQ8qW3qG/lEq4KSFJGvKCe2uo6om+eCht
         oHNmuAbEj1wylSDgYYohrZowWD1TI2mPSkvtOcj1vM82/8Tsr+ruktT1iu//pIsXdvzB
         +NLLMVs4Ps2w7DhXFnSO9Nbs5cVRzog+Vam+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2NaZcbwSAFQ15OW65EbbMjqTmOC5Pf2iFjcyvx6UbnA=;
        b=E3KA1MShz0y9lwqGW1B1v2KmzpTRo+7qt6rGjdoi6s4ggytJijmhpQ/q64T8XMWumC
         LA9P2tV4CvKwj5HzKPAWGTklbuUUpyhsVkKbtweQWwyyN7FJmEMpB6tYIFLt7KMWQkt4
         gXVJF5FP3L50sAhhvZGhXcvolsP04pwo5Kg2hHnuCeX8Y5uFoMvTnmx3Uoqwvo1KeVHd
         ZsFpzjgXHQTdyM0VLWiiIS0YCycqM7tf8OU+E7spFvcvgHp9uvfG5aZOMiT7LbD7BDkd
         zr91YT+GuHTtjZZPU72O+gwMwx2ebALvkNz2eJNrDNx76P+uYS2263jksJfZ5RY8/K9R
         DEYA==
X-Gm-Message-State: AOAM531h+V419l30/MRkZUP4xq2SLqdPQNZvUqr+4jcpvdIvMRpx8qUH
        9vf9r/KaJxrcI41Vu6s8S5OvP0TzSHwyd0eZ
X-Google-Smtp-Source: ABdhPJxGJJepEeoTIpWfvanT8Uy9eYSFtDlbb9V0MhhyfIYWT3JIJU1+XWytWwbp4Ue7k4vW9Gh3Sg==
X-Received: by 2002:a17:906:7f83:: with SMTP id f3mr314739ejr.282.1610515388152;
        Tue, 12 Jan 2021 21:23:08 -0800 (PST)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com. [209.85.128.53])
        by smtp.gmail.com with ESMTPSA id r21sm309523eds.91.2021.01.12.21.23.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 21:23:04 -0800 (PST)
Received: by mail-wm1-f53.google.com with SMTP id r4so419660wmh.5
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 21:23:03 -0800 (PST)
X-Received: by 2002:a1c:c308:: with SMTP id t8mr409738wmf.22.1610515383125;
 Tue, 12 Jan 2021 21:23:03 -0800 (PST)
MIME-Version: 1.0
References: <20201209080102.26626-1-yong.wu@mediatek.com> <20201209080102.26626-5-yong.wu@mediatek.com>
 <X+L8qpO+T7+U2s5r@chromium.org> <1608809212.26323.258.camel@mhfsdcap03>
In-Reply-To: <1608809212.26323.258.camel@mhfsdcap03>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Wed, 13 Jan 2021 14:22:50 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CnnHwCUioH52VRWZW=f7V7Q=xBSfbhMM+qJVtaqSf8Pw@mail.gmail.com>
Message-ID: <CAAFQd5CnnHwCUioH52VRWZW=f7V7Q=xBSfbhMM+qJVtaqSf8Pw@mail.gmail.com>
Subject: Re: [PATCH v5 04/27] dt-bindings: memory: mediatek: Add domain definition
To:     Yong Wu <yong.wu@mediatek.com>
Cc:     Joerg Roedel <joro@8bytes.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, youlin.pei@mediatek.com,
        linux-devicetree <devicetree@vger.kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        chao.hao@mediatek.com,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Evan Green <evgreen@chromium.org>,
        "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Krzysztof Kozlowski <krzk@kernel.org>, anan.sun@mediatek.com,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 24, 2020 at 8:27 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> On Wed, 2020-12-23 at 17:15 +0900, Tomasz Figa wrote:
> > Hi Yong,
> >
> > On Wed, Dec 09, 2020 at 04:00:39PM +0800, Yong Wu wrote:
> > > In the latest SoC, there are several HW IP require a sepecial iova
> > > range, mainly CCU and VPU has this requirement. Take CCU as a example,
> > > CCU require its iova locate in the range(0x4000_0000 ~ 0x43ff_ffff).
> >
> > Is this really a domain? Does the address range come from the design of
> > the IOMMU?
>
> It is not a really a domain. The address range comes from CCU HW
> requirement. That HW can only access this iova range. thus I create a
> special iommu domain for it.
>

I guess it's the IOMMU/DT maintainers who have the last word here, but
shouldn't DT just specify the hardware characteristics and then the
kernel configure the hardware appropriately, possibly based on some
other configuration interface (e.g. command line parameters or sysfs)?

How I'd do this is rather than enforcing those arbitrary decisions
onto the DT bindings, I'd add properties to the master devices (e.g.
CCU) that specify which IOVA range they can operate on. Then, the
exact split of the complete address space would be done at runtime,
based on kernel configuration, command line parameters and possibly
sysfs attributes if things could be reconfigured dynamically.

Best regards,
Tomasz

> >
> > Best regards,
> > Tomasz
> >
> > >
> > > In this patch we add a domain definition for the special port. In the
> > > example of CCU, If we preassign CCU port in domain1, then iommu driver
> > > will prepare a independent iommu domain of the special iova range for it,
> > > then the iova got from dma_alloc_attrs(ccu-dev) will locate in its special
> > > range.
> > >
> > > This is a preparing patch for multi-domain support.
> > >
> > > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > > Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > Acked-by: Rob Herring <robh@kernel.org>
> > > ---
> > >  include/dt-bindings/memory/mtk-smi-larb-port.h | 9 ++++++++-
> > >  1 file changed, 8 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/include/dt-bindings/memory/mtk-smi-larb-port.h b/include/dt-bindings/memory/mtk-smi-larb-port.h
> > > index 7d64103209af..2d4c973c174f 100644
> > > --- a/include/dt-bindings/memory/mtk-smi-larb-port.h
> > > +++ b/include/dt-bindings/memory/mtk-smi-larb-port.h
> > > @@ -7,9 +7,16 @@
> > >  #define __DT_BINDINGS_MEMORY_MTK_MEMORY_PORT_H_
> > >
> > >  #define MTK_LARB_NR_MAX                    32
> > > +#define MTK_M4U_DOM_NR_MAX         8
> > > +
> > > +#define MTK_M4U_DOM_ID(domid, larb, port)  \
> > > +   (((domid) & 0x7) << 16 | (((larb) & 0x1f) << 5) | ((port) & 0x1f))
> > > +
> > > +/* The default dom id is 0. */
> > > +#define MTK_M4U_ID(larb, port)             MTK_M4U_DOM_ID(0, larb, port)
> > >
> > > -#define MTK_M4U_ID(larb, port)             (((larb) << 5) | (port))
> > >  #define MTK_M4U_TO_LARB(id)                (((id) >> 5) & 0x1f)
> > >  #define MTK_M4U_TO_PORT(id)                ((id) & 0x1f)
> > > +#define MTK_M4U_TO_DOM(id)         (((id) >> 16) & 0x7)
> > >
> > >  #endif
> > > --
> > > 2.18.0
> > >
> > > _______________________________________________
> > > iommu mailing list
> > > iommu@lists.linux-foundation.org
> > > https://lists.linuxfoundation.org/mailman/listinfo/iommu
>

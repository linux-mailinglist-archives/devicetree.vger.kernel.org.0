Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41FC837259B
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 07:47:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229499AbhEDFsJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 01:48:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229842AbhEDFsI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 01:48:08 -0400
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AF81C061574
        for <devicetree@vger.kernel.org>; Mon,  3 May 2021 22:47:13 -0700 (PDT)
Received: by mail-il1-x136.google.com with SMTP id p15so5462108iln.3
        for <devicetree@vger.kernel.org>; Mon, 03 May 2021 22:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=axeiLPF9iFyJx8eBPvuwERp1KcclYLjCN6v3MOk1j9M=;
        b=l/PFZQjby4pnUGqaIaIQ9rgD7WqBsUugC2rXNreAK/QKy+DA0v2nvfpEZJsiQz4byR
         otFdCkkR6CyksBh73aUzWdHKn0E4WOWkn/TCCr/U31M4/3aFMGIYoSYkX8JouxyLCKhU
         19AGWePXfrHyOyDxAiurGS2Xt2qhOeu7LT7hQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=axeiLPF9iFyJx8eBPvuwERp1KcclYLjCN6v3MOk1j9M=;
        b=CakvVDLEoQo8TOfCKq2RLcz/NN5iyVvqnNNTUzNRu7o2b0kwa57lMZuNC7ZAhlDPiU
         mA+VKbwZNIwNXj1BfLO3Qad53Z4lecvkcbPt+Shci5Plq0UPy42YzBADbNXm+0ct+7a2
         RRHr+rZNetVv9l0iElqwNYoMbLyQqOSOEpYlSXZg1vj705VvA/CZkhmriddfng5pSbDM
         IJeiqW2G1arTGqBXh4TJR38ZAAvL5bdqHUpvhLNjKUKQMN4X0M1V7mDFHNklXANE3E+N
         JbpoxVEf/guC2VX5MANL2ayFj+CPU6lhuUsho04cOcbxWHtZhf12UI2wVtJSxtAn9mXm
         j9iQ==
X-Gm-Message-State: AOAM530uh6FcZQUTL6NBhcj3Wfp8wlbS0C9zRYUoGW2/gJWxtxT/Cgxq
        sBh+GVxQp69tF+WP5Ya3+NAjv3IApGwuArQwAcawVA==
X-Google-Smtp-Source: ABdhPJyB/v/ICSO+Gj4ey9LsM1hpWoGANefgE97s8XOhkyuqNS1v7S72K1JS5IaaEMizSnjPN+ktubr73LRWTAoPzd4=
X-Received: by 2002:a92:d684:: with SMTP id p4mr19918163iln.150.1620107232382;
 Mon, 03 May 2021 22:47:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210503050523.2571758-1-hsinyi@chromium.org> <20210503050523.2571758-2-hsinyi@chromium.org>
 <1620101459.15918.4.camel@mtksdaap41>
In-Reply-To: <1620101459.15918.4.camel@mtksdaap41>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Tue, 4 May 2021 13:46:46 +0800
Message-ID: <CAJMQK-gZAxKpETOPKNt+A63CaJBACrFEK4S6rtj82WyDxT_fAg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: mediatek: Add optional mediatek,
 gce-events property
To:     CK Hu <ck.hu@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 4, 2021 at 12:11 PM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Hsin-yi:
>
> On Mon, 2021-05-03 at 13:05 +0800, Hsin-Yi Wang wrote:
> > mediatek,gce-events property is used by gce clients.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  .../devicetree/bindings/display/mediatek/mediatek,disp.txt  | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> > index fbb59c9ddda6..939b2da3bdc5 100644
> > --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> > +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> > @@ -75,6 +75,10 @@ Optional properties (RDMA function blocks):
> >    mediatek,rdma-fifo-size of mt8183-rdma0 is 5K
> >    mediatek,rdma-fifo-size of mt8183-rdma1 is 2K
> >
> > +Optional properties for display mutex:
> > +- mediatek,gce-events: GCE events used by clients. The event numbers are
> > +  defined in 'dt-bindings/gce/<chip>-gce.h'.
>
> I think mediatek,gce-events should be first defined in [1], and here
> refer to [1].
>
> In addition, mtk-mutex driver is moved into soc folder, so I would like
> to move mtk-mutex binding out of display binding. It's up to you.
>
> [1] Documentation/devicetree/bindings/mailbox/mtk-gce.txt
>
Thanks, I moved the definition here in v3.

> Regards,
> CK
>
> > +
> >  Examples:
> >
> >  mmsys: clock-controller@14000000 {
> > @@ -209,6 +213,8 @@ mutex: mutex@14020000 {
> >       interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_LOW>;
> >       power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
> >       clocks = <&mmsys CLK_MM_MUTEX_32K>;
> > +     mediatek,gce-events = <CMDQ_EVENT_MUTEX0_STREAM_EOF>,
> > +                           <CMDQ_EVENT_MUTEX1_STREAM_EOF>;
> >  };
> >
> >  od@14023000 {
>

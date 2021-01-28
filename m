Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F921307487
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 12:15:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231278AbhA1LNi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jan 2021 06:13:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231128AbhA1LN1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jan 2021 06:13:27 -0500
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAA99C061573
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 03:12:46 -0800 (PST)
Received: by mail-il1-x12c.google.com with SMTP id a1so4843745ilr.5
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 03:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/WJw1aJ983EEKpRj5gZ4zFlUrwFHoMadbviHbndDVT8=;
        b=dfDCHTrz8XskJkazSFR/d269ImWmkT6WKjpQ1j4AVPkVQ0H4j5zdogEiMZAuBs2Nuq
         PLm6Pn+zV760awkBSwTDMSe/TivqPc3s/134zz9sRbBQABFJfAnM4SjROF9bDhhkPFXx
         dFFpptCksPnvkPoUioIRniNKaaMkEX+xcGyNg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/WJw1aJ983EEKpRj5gZ4zFlUrwFHoMadbviHbndDVT8=;
        b=XuhKOhG8BWedpaEZ/sc/W2wQPigckSqHCpdMNCvLIHsjwy2IQLY19szZmBbRit9C/q
         tM1UqCj2+jD8r4QC4853e8eqiss42ig2+Svvk6ZJBCx9P0Xu4nmQ9v5FC23vKTcTYADe
         uZlF4/6U3DG3k9ZYym+RhxMldBuT9IlB2PFTeYBA6aG3a4/KU1r+dmn856mxfdPLsw6W
         hvJYPwE+mRZw9q+n161tWSMiS3lYrj21+T2RjNZmXVL8tmbQIUE94ByDUNimfEwqkgqa
         +YdUjCeUJNoCz11cnkbk0aS5iTShfVzaC2wrca5Ut5DqA24jpjDEr4689/9v/1EAn1QH
         3nWA==
X-Gm-Message-State: AOAM532HG2aylW9+Fn6Hmt0qqSlp8F7s5Dpw7S8L74M2R1oaPajP4OAt
        FpBSpWA2L885bjPmQpe7YwcJG+sqJHMMQWbl9Lo/jg==
X-Google-Smtp-Source: ABdhPJxpvtqvyRoNVw2J32fCidzTHWv4s/97L1l2P7XY3BFLhw9LEXqsuGOgsssZ07Bdcb7TGzMR023+FxP+UJYso4w=
X-Received: by 2002:a05:6e02:509:: with SMTP id d9mr12671592ils.150.1611832366253;
 Thu, 28 Jan 2021 03:12:46 -0800 (PST)
MIME-Version: 1.0
References: <20210128072802.830971-1-hsinyi@chromium.org> <20210128072802.830971-4-hsinyi@chromium.org>
 <1611820251.16091.7.camel@mtksdaap41>
In-Reply-To: <1611820251.16091.7.camel@mtksdaap41>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Thu, 28 Jan 2021 19:12:20 +0800
Message-ID: <CAJMQK-igcZXrnTb6pA3S6X_uTF6aGhKFLAHtdet62od9vVx4rg@mail.gmail.com>
Subject: Re: [PATCH v11 3/9] drm/mediatek: add RDMA fifo size error handle
To:     CK Hu <ck.hu@mediatek.com>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 28, 2021 at 3:52 PM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Hsin-Yi:
>
> On Thu, 2021-01-28 at 15:27 +0800, Hsin-Yi Wang wrote:
> > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> >
> > This patch add RDMA fifo size error handle
> > rdma fifo size will not always bigger than the calculated threshold
> > if that case happened, we need set fifo size as the threshold
> >
> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_disp_rdma.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> > index b84004394970f..04b9542010b00 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> > @@ -168,6 +168,10 @@ void mtk_rdma_config(struct device *dev, unsigned int width,
> >        * account for blanking, and with a pixel depth of 4 bytes:
> >        */
> >       threshold = width * height * vrefresh * 4 * 7 / 1000000;
> > +
> > +     if (threshold > rdma_fifo_size)
> > +             threshold = rdma_fifo_size;
> > +
>
> Please see the discussion in [1].
>
> [1]
> https://patchwork.kernel.org/project/linux-mediatek/patch/1607591262-21736-6-git-send-email-yongqiang.niu@mediatek.com/
>
> Regards,
> CK
>

Hi CK,

Even if we set threshold to
threshold = RDMA_FIFO_PSEUDO_SIZE(rdma_fifo_size) * width * height *
vrefresh / 2 / MAX_WIDTH / MAX_HEIGHT / MAX_VREFRESH;

I'm not sure what value MAX_WIDTH, MAX_HEIGHT, and MAX_VREFRESH should
set to for each SoC.
Since there's no conclusion yet, I'll drop this patch in the series,
as this seems not an mt8183 specific fix.


> >       reg = RDMA_FIFO_UNDERFLOW_EN |
> >             RDMA_FIFO_PSEUDO_SIZE(rdma_fifo_size) |
> >             RDMA_OUTPUT_VALID_FIFO_THRESHOLD(threshold);
>

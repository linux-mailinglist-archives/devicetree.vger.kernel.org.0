Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B8DF22E872
	for <lists+devicetree@lfdr.de>; Mon, 27 Jul 2020 11:06:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727939AbgG0JGt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jul 2020 05:06:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727930AbgG0JGt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jul 2020 05:06:49 -0400
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com [IPv6:2607:f8b0:4864:20::c42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A11AC061794
        for <devicetree@vger.kernel.org>; Mon, 27 Jul 2020 02:06:49 -0700 (PDT)
Received: by mail-oo1-xc42.google.com with SMTP id z23so3011812ood.8
        for <devicetree@vger.kernel.org>; Mon, 27 Jul 2020 02:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9DYPZ/cg5bWE+8mLgqqq5d9bdeBFDbTl2cHuY4OPgV8=;
        b=mjEnxSSWFDn78QhEXgzlYfh83jJuISJo2pdRp1br6PNji3pirhIc1VAtH1Z/j4oyhV
         NFTROO0H/SWb6rGbVv/F4z46CtgbeyWbJ5aDTP/EKWrSYArqEHOJpi8ctMUkST74mOwx
         SKd2hFHI0GgPrHFFYZm/RBbnj7FnmTCCNNz9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9DYPZ/cg5bWE+8mLgqqq5d9bdeBFDbTl2cHuY4OPgV8=;
        b=GOIsKrbyKwJzhNy5QWYyWf392z8bUqLtFMIQgiKwmiUtM3HfBA7iHNW1P3WDZH77IZ
         Cf/JJsZmeGJrzOqK5jIJf4cVAT2Xxc0FGKNbb5JWtvT3oXb6XcfJdAwRK32d7TvLbGYx
         zP7psy8vtEE6NW7IAD0VTAbck0KP8JQkZBl9ZGvCdgqbOZLUnfWzIbxlBKVoOmP/XbFt
         k6QWgR6OwIHV7rn8Xw8FVzn1jXpQIdXqrWmepSm6aJ4FT2712RH6Gm24SXiEcHUfMmx5
         B/wQfSMLJblmapfQbCzbBRnuNAOWkYa80RwEv9o0A/3wCe6+0dBUx7qxHj0qDs5uM/lX
         BEXg==
X-Gm-Message-State: AOAM533CZcr+Y72VuAIU40l8A+hqXEA9rRqYpd/aCNNsa1JrR7CTqJ7h
        O38ngun0EWAELFvaMna4raRAjID64IQ=
X-Google-Smtp-Source: ABdhPJxIvCMgWtAqdojYmyJ3fS4yNcqO5vyq8JD9A3qaZegNgrbu0zqxYGDlxTsIPyrmkytfrTEwDw==
X-Received: by 2002:a4a:3553:: with SMTP id w19mr11535804oog.79.1595840807479;
        Mon, 27 Jul 2020 02:06:47 -0700 (PDT)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com. [209.85.161.46])
        by smtp.gmail.com with ESMTPSA id p141sm693628oic.16.2020.07.27.02.06.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2020 02:06:46 -0700 (PDT)
Received: by mail-oo1-f46.google.com with SMTP id y9so3009850oot.9
        for <devicetree@vger.kernel.org>; Mon, 27 Jul 2020 02:06:45 -0700 (PDT)
X-Received: by 2002:a05:6820:1015:: with SMTP id v21mr19420231oor.50.1595840804794;
 Mon, 27 Jul 2020 02:06:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200713060842.471356-1-acourbot@chromium.org>
 <20200713060842.471356-3-acourbot@chromium.org> <CAAEAJfD8yfdTptkmXoPzrw6S=6eKr=K4yL9-5aq2JtWF7M3=7w@mail.gmail.com>
In-Reply-To: <CAAEAJfD8yfdTptkmXoPzrw6S=6eKr=K4yL9-5aq2JtWF7M3=7w@mail.gmail.com>
From:   Alexandre Courbot <acourbot@chromium.org>
Date:   Mon, 27 Jul 2020 18:06:31 +0900
X-Gmail-Original-Message-ID: <CAPBb6MW3AC2savGCHk8w98u1oRuZAs9m6sqz++ksJ58DGvJ5nQ@mail.gmail.com>
Message-ID: <CAPBb6MW3AC2savGCHk8w98u1oRuZAs9m6sqz++ksJ58DGvJ5nQ@mail.gmail.com>
Subject: Re: [PATCH v3 02/16] dt-bindings: media: mtk-vcodec: document SCP node
To:     Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc:     Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Yunfei Dong <yunfei.dong@mediatek.com>,
        Maoguang Meng <maoguang.meng@mediatek.com>,
        linux-media <linux-media@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 23, 2020 at 6:37 AM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> On Mon, 13 Jul 2020 at 03:09, Alexandre Courbot <acourbot@chromium.org> wrote:
> >
> > The mediatek codecs can use either the VPU or the SCP as their interface
> > to firmware. Reflect this in the DT bindings.
> >
> > Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
> > Acked-by: Tiffany Lin <tiffany.lin@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/media/mediatek-vcodec.txt | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/media/mediatek-vcodec.txt b/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
> > index b6b5dde6abd8..7aef0a4fe207 100644
> > --- a/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
> > +++ b/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
> > @@ -19,7 +19,9 @@ Required properties:
> >  - iommus : should point to the respective IOMMU block with master port as
> >    argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> >    for details.
> > -- mediatek,vpu : the node of video processor unit
> > +One of the two following nodes:
> > +- mediatek,vpu : the node of the video processor unit, if using VPU.
> > +- mediatek,scp : the noode of the SCP unit, if using SCP.
> >
>
> This interface doesn't enforce the fact only one of the two
> should be present, but not both (which is the case, right?).

That's correct.

>
> I hope I'm not bikeshedding here, but from an interface POV,
> would it be cleaner to just have a single mediatek,coprocessor
> property, and then use of_device_is_compatible
> to distinguish VPU from SCP type?

From an interface point of view maybe, however doing so would
introduce a backward-incompatible change with the existing MT8173
bindings. I also feel like it is less error-prone to have the property
explicitly state what it is expecting at the other end of the phandle
(vpu or scp) instead of the more generic "coprocessor".

>
> Moreover, I'd argue you don't need a dt-binding change
> and should just keep the current mediatek-vpu property,
> and then rely on of_device_is_compatible.

VPU and SCP are different kinds of processors, so I'm not sure whether
it is desirable to use VPU interchangeably like this. Note that I'm
not strongly against it either, but for things like bindings I tend to
prefer precise language to avoid confusions.

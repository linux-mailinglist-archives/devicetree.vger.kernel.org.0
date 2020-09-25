Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3914C2783A3
	for <lists+devicetree@lfdr.de>; Fri, 25 Sep 2020 11:11:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727817AbgIYJLW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Sep 2020 05:11:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727470AbgIYJLW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Sep 2020 05:11:22 -0400
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com [IPv6:2607:f8b0:4864:20::a43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7B85C0613D3
        for <devicetree@vger.kernel.org>; Fri, 25 Sep 2020 02:11:21 -0700 (PDT)
Received: by mail-vk1-xa43.google.com with SMTP id k78so469099vka.10
        for <devicetree@vger.kernel.org>; Fri, 25 Sep 2020 02:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aWJwSkHcQYbNKOEWZ1TVdIJh2rPz2r71PSLyhlvFLUY=;
        b=YT92ZyhcCSVct41NNQJ5H+v81DH6N1/Fnpgnd2suwGKDa9o/WkzKzVBD0cv5tjXW6b
         gbauj156FnyzRcly7lGjMDF7C0FMl0mpSP3FK8ozUizc2poL7h3CF7JkfkaP7r/3cYJJ
         2/2HcNxFG/PN129V+7xqesUxl9evRU8A24jS4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aWJwSkHcQYbNKOEWZ1TVdIJh2rPz2r71PSLyhlvFLUY=;
        b=XEYwCsqud7Wjp1tiS79KfurBczPRUNA+iKrdcHCCzBSUyc2hr4euw9Ockxf6Kjpwin
         A9CdUfm5m21q7I4zQ2OmBpqm2k0UJdiEdDFpxsRhAz7CaHXgt5XRBp4QZRSa0WFlBPSC
         6m5N4Ehb0Q7vw3hN7+0mU4zmeMJLvp1BgnKnC4lyqjCCJfS3ZzUtG2bJm6Z1LP9JlFzA
         hHgNUMURdTbRUoV7AVG+yA2JIMMW3ywT03lAK4UinxcAwt8Cd9M1cjksL4hTOaqYEtut
         DxRpbZgDwN+D3Kf5gM2Fnk0wE5uOnDjL7oG/E1UlfFJBtAIvqXukxOKQCEap2WhRrUKx
         WZyA==
X-Gm-Message-State: AOAM532SDiiknrfWGTNRgpUjlZtXzmasLi7zkAmJ/J2dCRceHX5plUNI
        THfkS90kY43QKNj+J/qKhTNj9JSaaCw40neogcrt5Q==
X-Google-Smtp-Source: ABdhPJxuiIE50tiO0iM0XKiceVHkTJpArQPlcp7pIYzNrV16sQaJzDwMqt8DYhjynnNrl2S33JiyhZ3ih3qhCGU0LVU=
X-Received: by 2002:a1f:434b:: with SMTP id q72mr1948481vka.5.1601025081001;
 Fri, 25 Sep 2020 02:11:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200925065418.1077472-1-ikjn@chromium.org> <20200925145255.v3.5.Id1cb208392928afc7ceed4de06924243c7858cd0@changeid>
 <CAJsYDV+EifAeMKEGwi0oH6A5EvPN8tMZQ+oqY5JGe=+kqzjMLw@mail.gmail.com>
In-Reply-To: <CAJsYDV+EifAeMKEGwi0oH6A5EvPN8tMZQ+oqY5JGe=+kqzjMLw@mail.gmail.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Fri, 25 Sep 2020 17:11:10 +0800
Message-ID: <CAATdQgC7GQ5fhkFBg7y6fpzdbFAiv+3ONdnk+jLytumB7a9pXQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] spi: spi-mtk-nor: support 36bit dma addressing
To:     Chuanhong Guo <gch981213@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, linux-spi@vger.kernel.org,
        linux-mtd@lists.infradead.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 25, 2020 at 4:27 PM Chuanhong Guo <gch981213@gmail.com> wrote:
>

[snip]

> > +       if (sp->high_dma) {
> > +               writel(dma_addr >> 32, sp->base + MTK_NOR_REG_DMA_DADR_HB);
> > +               writel((dma_addr + length) >> 32, sp->base + MTK_NOR_REG_DMA_END_DADR_HB);
> > +       }
>
> I remembered kbuild test robot reported a warning on this on 32-bit platforms
> in your v1. [0]
> I don't know what's the fix for this though :(
>
> [0] https://marc.info/?l=linux-spi&m=159982425706940&w=2

yeah, I'm not sure how to handle this properly,

"warning: shift count >= width of type",
(sp->high_dma) is always false on 32bit arm kernel.
I think adding size check on here is unnecessary, should I fix for this warning?

> --
> Regards,
> Chuanhong Guo

Sorry for resending, Chuanhong.

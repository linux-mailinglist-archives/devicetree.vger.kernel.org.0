Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 067CA3D113E
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:26:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238397AbhGUNph (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:45:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239556AbhGUNoJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 09:44:09 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB2B2C0617A0
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 07:22:45 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id l11so3249914ljq.4
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 07:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RxH3J+Eoh7kaNaXSHILbrEKptNqW5XNSkT/LEfhorfw=;
        b=np3T/tKhWSs3xDEU7MtFijZp9knPrBJjhodCGPOhu6WamYYnmI0gWgLGwLiNBVO5Cv
         PY1SoZQb+Yd3SboBPYmHKlddwz0Qh7RS4ABDPEFwe+7cPUmCuN7+IY5A/hWgkSBr2lMX
         j5/t1emiw10+TGpDl8R9AGk0R6trQrmcKoEZ7ZcoQsKlqecQZu+WjhXR8he0+NqXegso
         4j8UZUofI2jkgKlTt5CnguAr5JSdq8A7kgzUkaQ1+2bwoj3MHdKoPFbJYCkI2+zkhmPO
         2AKw2+7SY6NIuFDUZ8U29hXdJ4BRQcYUrQLeC7Kzmo837X3mqcFFVJNz9cBQFO4GYJWV
         hfmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RxH3J+Eoh7kaNaXSHILbrEKptNqW5XNSkT/LEfhorfw=;
        b=oINYwpx6l9Zl/Fio/jeVl+/Rv5tgxaB+uJmCfpqG45kw1EUzcGzm7r1QuqoCAoGTM1
         ntdsU5JTGcfJwQaoMxuCu3EE4uc2mYsXp87PyJE50Q/8UmlQLaeuRDJzXfl/QjHqZ1H4
         M/2dZUqM3QmTnmC0Ne09VU+irAbEAkiCEaUsehsY2D2X9eIuu1w6lqALBzItmvWftIP6
         S01Rd4laOEEErgDqkpOpbTUKcuqvrdJ3olYYO0GO12IcpkAp8HnESyG6boU6SMUyHcG/
         quzR/8bhQbSTY+IXVgoQitfK4N9qcMhz/Yv+idndMUGmw8tWQq+vUIkRFMUd6fzMDkSQ
         ZZWQ==
X-Gm-Message-State: AOAM532TPdtnaiXx0MfOss2Vww43NtJwsn/sdKwRZLuYAIwXMdP4FLSP
        H8dI9eC/96S6ff6gR03aHrZoLfFBSpf0YxXpXGn53g==
X-Google-Smtp-Source: ABdhPJxRKXD+U0XQM/F7sLwpZwFlzVAYL4bWalqIvOAZRJl36XOz1b+yigg+oOm5a+edqTSoFlwCiEItIcz7ltih25o=
X-Received: by 2002:a2e:9d15:: with SMTP id t21mr31738197lji.200.1626877364224;
 Wed, 21 Jul 2021 07:22:44 -0700 (PDT)
MIME-Version: 1.0
References: <1626853288-31223-1-git-send-email-dillon.minfei@gmail.com>
 <1626853288-31223-2-git-send-email-dillon.minfei@gmail.com>
 <CACRpkdYerVu_LyNOJoxMTqhuNd9QBSFWTM7bfRnrsOyrxqE_kw@mail.gmail.com> <YPgsl5M6P86iJADt@ravnborg.org>
In-Reply-To: <YPgsl5M6P86iJADt@ravnborg.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 21 Jul 2021 16:22:33 +0200
Message-ID: <CACRpkdb14g+cn1hKi+gF6oOLMSNLffvuuJbVqR95pmuCtgjHEA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: panel: Add ilitek ili9341
 panel bindings
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dillon min <dillon.minfei@gmail.com>,
        "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Dave Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 4:18 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> Hi Linus,
> On Wed, Jul 21, 2021 at 04:00:35PM +0200, Linus Walleij wrote:
> > On Wed, Jul 21, 2021 at 9:41 AM <dillon.minfei@gmail.com> wrote:
> >
> > > From: Dillon Min <dillon.minfei@gmail.com>
> > >
> > > Add documentation for "ilitek,ili9341" panel.
> > >
> > > Cc: Linus Walleij <linus.walleij@linaro.org>
> > > Signed-off-by: Dillon Min <dillon.minfei@gmail.com>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> >
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> will you take care to push the patches now you did the review?

Yes but uncertain about patch 2/3 which fixes a DTS file.

Normally that should go through the SoC tree. I'm fine with
applying 1 & 3 but don't want to cause excess errors in schema
validation so I'm a bit ambivalent.

I would prefer if patch 2 gets applied to the SoC tree and
propagate all the way to linux-next before applying patch 1 & 3
but I understand that will take some time.

Yours,
Linus Walleij

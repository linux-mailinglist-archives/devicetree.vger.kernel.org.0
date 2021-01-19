Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30F322FBF60
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 19:52:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728459AbhASSoi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 13:44:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726549AbhASR4m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 12:56:42 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7D45C06138A
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 09:54:30 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id k132so9661630ybf.2
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 09:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=b+/J27uvGJNWRkcEdHdikRhtGLPGXBf2Z7B8raJzfG8=;
        b=VNmhhkIievbkfSc+cjRvVw2L92usrVFQArZAzXCy99qCox/NjfpvR07w/+4P8slWk5
         NHZAWIhrgGzzekDe1fQMBL0cUF2CjUMATWBMUl31unA/FvaxTrFd+77Oup7faIC9sJVM
         9QG87sR/eWzrliUtIupEbtEiNWQyG5oPB7F+/+CpmGxlk2KYqDH3PnavfGc3sy9n7tP/
         cCSPhtGwfXS2d2gSzNiZrKaqlfal36TyN15sGM/Dns6WwQFG0fZRlvY/116YfkG8Ku5T
         qUqMC+HWaUq+SDkKx1HB9w2+TB9q8VzQq1SEh+nw8myO82T6druRVu5BAszrPdMLCQAC
         YqKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=b+/J27uvGJNWRkcEdHdikRhtGLPGXBf2Z7B8raJzfG8=;
        b=kUPPPaougZ1ZbhqVZUpxc6/f8y7xTLVM3jnTcPmPbtx2DYHglx6MMXmmga4DIJbzXC
         1W940I+T1T57amqz80pIhBwnV1utJoi2k4JIcr3HbSgN4gB8IZi+7ZCv0Bm+Y8aKzmut
         qPJkZKH/42T1hWUXx2Cs5qAy9kr4L/+D5HYKLiezIg5/Lm/Ei2k0PXEpjAiNSm6F3VoA
         ry41uSwFKFpmnS/RrMaqrAV+iS2YLesCctnLtJxg/uiC8nxGElGIzjrUxB6/LKZJqBn5
         FMmHzA1KUxdd9OwqFb+w7pShC7NRoaE6JWwOBZqESvMbZFYYKo2KVOuFBfA/q/vqZid5
         dXRQ==
X-Gm-Message-State: AOAM5307bff/++yhHRH2B3wat0nd67ec848d8KTtwkHQGZpvMRW/f1Kq
        Kvu5i1DyqT3HoAASQnxcOaBo6wInw1vgB3WlfiEWAQ==
X-Google-Smtp-Source: ABdhPJxrYl/1TM45kNIJhyUluY43XDSvSI/9t/hcpCygXflUpxCfBA/MJNLA/Q+aYIn08kWgLlNWb6Xo+b5k0jCg4sg=
X-Received: by 2002:a25:7491:: with SMTP id p139mr7075085ybc.346.1611078869664;
 Tue, 19 Jan 2021 09:54:29 -0800 (PST)
MIME-Version: 1.0
References: <20210115210159.3090203-1-saravanak@google.com>
 <CACRpkdYrzaFuWkbTe7Fmos4Bk4Ojt6wbqayDjyrS7sf98P-Rbg@mail.gmail.com>
 <CAGETcx9t3R-k0ttiaBUqcveqnXMX75xuTcKPSo9J6WJOfgSP8w@mail.gmail.com>
 <CAMuHMdUN7+O28Xz5rkPwR2RuSA+o_E2VcWsz_9+kzy4=0Jnb1g@mail.gmail.com> <CACRpkdZqSm-xfo8a8aFUe-Mbaw9tM+OmCAF3KWjOVDfC=oWj+Q@mail.gmail.com>
In-Reply-To: <CACRpkdZqSm-xfo8a8aFUe-Mbaw9tM+OmCAF3KWjOVDfC=oWj+Q@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Tue, 19 Jan 2021 09:53:53 -0800
Message-ID: <CAGETcx-Vp0BpYbpPjwsmOv0q5ba1mJvfsPEZ9Oi2Rmx67udu7A@mail.gmail.com>
Subject: Re: [PATCH v1] of: property: Add fw_devlink support for "gpio" and
 "gpios" binding
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-tegra <linux-tegra@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Android Kernel Team <kernel-team@android.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 19, 2021 at 2:20 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Tue, Jan 19, 2021 at 9:50 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> > > Can we pull this into driver-core-next please? It fixes issues on some
> > > boards with fw_devlink=on.
> >
> > On r8a77951-salvator-xs.dts, it introduces one more failure:
> >
> >     OF: /soc/i2c@e66d8000/gpio@20/pcie-sata-switch-hog: could not get
> > #gpio-cells for /cpus/cpu@102

Geert,

One good thing is that it's noticing this being weird and ignoring it
in your particular board. I *think* it interprets the "7" as a phandle
and that's cpu@102 and realizes it's not a gpio-controller. For at
least in your case, it's a safe failure.

> >
> > Seems like it doesn't parse gpios properties in GPIO hogs correctly.
>
> Could it be that the code assumes no self-referencing phandles?
> (Just guessing...)
>

Linus,

Ok I tried to understand what gpio-hogs means. It's not fully clear to
me. But it looks like if a gpio-controller has a gpio-hog, then it
doesn't have/need gpio-cells? Is that right?

So if a gpio-controller has a gpio-hog, can it ever be referred to by
another consumer in DT using blah-gpios = ...? If so, I don't see any
obvious code that's handling the missing gpio-cells in this case.

Long story short, please help me understand gpio-hog in the context of
finding dependencies in DT.

Thanks,
Saravana

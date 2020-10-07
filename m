Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E3EE285C28
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 11:59:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726131AbgJGJ7H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 05:59:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726719AbgJGJ7H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 05:59:07 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D86A2C0613D2
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 02:59:06 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id h20so1332483lji.9
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 02:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KKQOOjn04T7GkwMmz5OrXlYtJd2KqxiO96+i+bYKJvE=;
        b=VZDIwNyOkJpF6oCHFqUyy1PFN8hIoad17B4mRzF40dnUyOyh/65o05khD7hfPfjwPy
         vdTdj4asiEHztzr+oJLoYAaHYAigHjMGGpuX1YEZBlz3oO9Knz0JQX/MbNS7ELjwvrPt
         vsQlMRGB/FDCGgPwEhv3hrbjTOn8CNGwZ+tX8wqVbGrIF4chfNvoZM0pnJBdBWz7gD+d
         oB1Xp3diWpwahPWJ95b8XErjloJSapjIa/Otlq4j+hFTtJiAFmi8wYTheYA6nx801BG1
         0zWhph7triv/+Lb5AeA7pXEEBv+VVWmhnDMlWdQI8k420GC9MU3PEJr36y7DELNVFu1P
         SLIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KKQOOjn04T7GkwMmz5OrXlYtJd2KqxiO96+i+bYKJvE=;
        b=srfH0ZDKs6fJTh0eEZDZK+57vkIA4f9DaOolWD3+H15GUVSD3sGFurnzh2NJGq3UnC
         ULdmg+GxJCY4Q5fLak2Yac9HaYTpKM74CJXF2viOKAFNTS6ralpS0rM3HuWDZNgaIscs
         1o+GWHH0I9tijG4txg1HE4mIpa6dWeS59dJQfwhbxVPQ7BqN//UENKTvEv5j1rw2nJRd
         GjtNLRFJx3Caz8DVdjb2tJckCRQVlkQU9iJXMmwl0s6f7f97mRCgma9ge+G1x8mkASIC
         oi4TXl8pFvjtUuPxkgZetrRK6tWA4OWH6B8OH8ytk0XoXrXsj6Dy6QjWUZMFe8NTDV7C
         y6Fw==
X-Gm-Message-State: AOAM533/VvCg0ojHhrNo6UKf7t62xhAX3RKZC/qFgBghLXfNHWUr22Uo
        OdbD5PC+FOyZV8Ej1DLrpWIAmfi7Bv7Mnp/MTUtTmg==
X-Google-Smtp-Source: ABdhPJwiyu1tG4DSWuw2KhjV8R5X5Q+afnfcyPo8Lmx0Fz3nRf7XTIMmNWlPlPzGJIZWVbxcnF2OS3YP3wPrxQzNVtk=
X-Received: by 2002:a2e:810e:: with SMTP id d14mr1008642ljg.100.1602064745198;
 Wed, 07 Oct 2020 02:59:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200930092053.2114-1-mike.looijmans@topic.nl>
 <CACRpkdbsYcmv9m2EiQNgPDZ0MdjPnWTxXvnqATVPvWpB=8Oqkw@mail.gmail.com> <20201006193235.GA2689027@bogus>
In-Reply-To: <20201006193235.GA2689027@bogus>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 7 Oct 2020 11:58:54 +0200
Message-ID: <CACRpkdZmYKn1JU8PeA+GAJDuVEtWQrH-3KijH4+df88Bt=iZtA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: pca953x: Add support for the
 NXP PCAL9554B/C
To:     Rob Herring <robh@kernel.org>
Cc:     Mike Looijmans <mike.looijmans@topic.nl>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 6, 2020 at 9:32 PM Rob Herring <robh@kernel.org> wrote:
> On Wed, Sep 30, 2020 at 11:50:38AM +0200, Linus Walleij wrote:
> > On Wed, Sep 30, 2020 at 11:21 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:
> >
> > > The NXP PCAL9554B is a variant of the PCA953x GPIO expander,
> > > with 8 GPIOs, latched interrupts and some advanced configuration
> > > options. The "C" version only differs in I2C address.
> > >
> > > This adds the entry to the devicetree bindings.
> > >
> > > Signed-off-by: Mike Looijmans <mike.looijmans@topic.nl>
> > > ---
> > > v2: Split devicetree and code into separate patches
> >
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >
> > This patch 1/2 does not apply to my tree, I suppose Rob has
> > to apply it?
>
> Nope, no changes in my tree.

Weird, OK Mike apply this wherever it should be applied or rebase
on my GPIO tree and resend if you want me to apply it.

Yours,
Linus Walleij

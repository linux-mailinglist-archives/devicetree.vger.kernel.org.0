Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4BCF31D182
	for <lists+devicetree@lfdr.de>; Tue, 16 Feb 2021 21:23:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230031AbhBPUX2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Feb 2021 15:23:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbhBPUX1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Feb 2021 15:23:27 -0500
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 178D7C061574
        for <devicetree@vger.kernel.org>; Tue, 16 Feb 2021 12:22:47 -0800 (PST)
Received: by mail-yb1-xb32.google.com with SMTP id r127so2271208ybr.1
        for <devicetree@vger.kernel.org>; Tue, 16 Feb 2021 12:22:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MNL6q3NMPg7Av9dHHI0hPvFwAb0XgQMgvvPlpO0wi9A=;
        b=Nnh3fpicXOiF6LT0Dj/jd9+od7qquP7CGGgKWPr26ujuQwuNmLLqQRNqsWjwOd2p0Z
         ZWgDh1ttk03h5DD6ZcPnGWqOY04r5+Pm5JncEAFf+WSNShJvRo1o11/jPki0x/DUkgfR
         frPWTCmjs1PQfuWoSq0MJIjcGAJ4uYruIx+GGyoMYUpJNZfhJ1JBQoXAkJLs7gcIQSgb
         Mrk1b4kKm9niuyb6myGGYS9yoUmzplfb+229WVLBpBVgYahM6tappH61STGa8m4S5mmB
         5zBMQl0Mlhzb+2E7W504TmyoK+cdirXGPxs3+DwyIXeqF+zaTySXa9O/BijfXn/5zll+
         bKFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MNL6q3NMPg7Av9dHHI0hPvFwAb0XgQMgvvPlpO0wi9A=;
        b=BRipoLOetxsPXslqrGZGfOj9n+hAzvyxZ4LHOv0A5Gr2XNGSZpD6dIxIVgm4VsLrm3
         +7CSwIadzwInuCvjobzy7s+WEVAyDXllvAOyFpzUrOTNNbnA8KANetPqQCyq8FN6SC9H
         Tv06kIuhyb53/2i3GsEEWzWtGBXa4RNE0QCQ+LKeOIIbZG43bZN4bA8c31QOLdpkmmUq
         7303LaStYHk1WyT3ZY/DFpshlj5u1Dnf67lyFn+aQLB2tYGBMlAV3cfA5vwkrdNpwtCe
         1i01iWORQ5nq/pI+B0PetTCZkIXpQGiGliJJN09JD9aW9xZfzqE/Ps2ST+jwuycZWHhh
         Y9rQ==
X-Gm-Message-State: AOAM530PDytsm7VyufWcfniBSjvwdRmmPYeqsWA+c+TV9f95J4f0gJaL
        mSI39eNh7PJt1yfne+14MndVSAe8TVr/yAi6rIr+qw==
X-Google-Smtp-Source: ABdhPJx2CC78wzRPWfCMc+8bTql8g1J1PW087Pjpm/550Cbmx/EbqO5Q4wIviypaM/nDfCv8YlJ/uS25+wIk7E7d1nM=
X-Received: by 2002:a25:aa43:: with SMTP id s61mr34252451ybi.32.1613506966197;
 Tue, 16 Feb 2021 12:22:46 -0800 (PST)
MIME-Version: 1.0
References: <20210215224258.1231449-1-saravanak@google.com> <255a5fba-d5a1-0c40-c26c-2f6ae0e91d56@metux.net>
In-Reply-To: <255a5fba-d5a1-0c40-c26c-2f6ae0e91d56@metux.net>
From:   Saravana Kannan <saravanak@google.com>
Date:   Tue, 16 Feb 2021 12:22:10 -0800
Message-ID: <CAGETcx8cy_6X3S4KCG9fTt2gVvf3Hte2S08Kt8qZKC8mbDDONg@mail.gmail.com>
Subject: Re: [PATCH] of: property: fw_devlink: Ignore interrupts property for
 some configs
To:     "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Thierry Reding <treding@nvidia.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Android Kernel Team <kernel-team@android.com>,
        Rob Herring <robh@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 16, 2021 at 12:20 PM Enrico Weigelt, metux IT consult
<lkml@metux.net> wrote:
>
> On 15.02.21 23:42, Saravana Kannan wrote:
>
> Hi,
>
> > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > index 79b68519fe30..5036a362f52e 100644
> > --- a/drivers/of/property.c
> > +++ b/drivers/of/property.c
> > @@ -1300,6 +1300,9 @@ static struct device_node *parse_interrupts(struct device_node *np,
> >   {
> >       struct of_phandle_args sup_args;
> >
> > +     if (!IS_ENABLED(CONFIG_OF_IRQ) || IS_ENABLED(CONFIG_PPC))
> > +             return NULL;
> > +
> >       if (strcmp(prop_name, "interrupts") &&
> >           strcmp(prop_name, "interrupts-extended"))
> >               return NULL;
>
> wouldn't it be better to #ifdef-out the whole code in this case ?

No, #ifdef is not preferred. That's why we even have the IS_ENABLED()
macros in the first place. The compiled will optimize out the code.

-Saravana

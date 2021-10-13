Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 147E542CF38
	for <lists+devicetree@lfdr.de>; Thu, 14 Oct 2021 01:35:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229668AbhJMXh7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 19:37:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229725AbhJMXh7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 19:37:59 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FA15C061746
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 16:35:55 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id i20so16322992edj.10
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 16:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+QVWEmqTwjvB4lKG2oT78utmP75huv6baJV8Y1UEyyM=;
        b=XGhEFyFE/kODzisBg+Dy3AWn53AkLeZdpDCkcVjpmgkQ5sBz/p59SBbPu5fEYROYNl
         3VZG3uLSjs6+TssumBQaLFlmPuC9hEMTTSOvtXtsBFw9OxqzEHMD1VxPUCaIUifMd/k0
         pWcd1MxVSJ6o9D1nP1dT9+KqMXkE9x8+fxYSmw0sNJ4u/yDOWhQq5P65VcHnSL5Xsyz0
         IYmTaT3V9edfHkDZO74JiRn2d3SLiqGGviUzePNz9HWEiOBqHi4lV++TlHX9no9nD8p0
         QqXDOlXbcgltsvk8a1CVTZZbJ+rBeq+d8jEVc5oae7gBFRfnfjJTU4QTwOXcQ0v4qm7h
         lkxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+QVWEmqTwjvB4lKG2oT78utmP75huv6baJV8Y1UEyyM=;
        b=p+ECFiIAb8yFfV/e1OHGnJvUBoBATt1/GEG9AldkugzWgXdG1Tv2r5FT//8d7yf7II
         6/TZT9zl2b0rDF6An54hJKXDS+1pgbVcQ39WZ+xlzLX/bHVpzsdVKBCJNkBrEq6EsY/h
         iZR2XiDH7m2tHVx8ROvGbwmNHcbCv4GzcYxnOVRR0UthxCPwyEiwSH0Iio+IJfdcN8Rh
         wnHzZJPCkD55wWDH3fOquNK+F2m9OGDah1/bmfuWxJBExt+Kj1g5C4gGH3E/5kcqoFNl
         yScGj2QL+r9bvaL4Y+cr70o927EW8ynmYc8OfvUVLG3pkjPZiqRXZeqZd6Hp6UlK0/HX
         UPgA==
X-Gm-Message-State: AOAM532gFPUsRRNsXCLnLALnb6XZjyYjdlIZAuheooK6Leq8okHK6RTC
        ckMKcTI+/efXUHOs3gjBSQp8o+T2kgfbJ69A2R0hkg==
X-Google-Smtp-Source: ABdhPJzudWwbadLJFz5Q8P5mUjjvq1YMm2nXg1AcHEp7PN3hUnfOyGsjcJO908OaBYfm4p57U+ZXDNmK5T53AbSmRP4=
X-Received: by 2002:a05:6402:410:: with SMTP id q16mr3747697edv.286.1634168153873;
 Wed, 13 Oct 2021 16:35:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210924071614.868307-1-maxime@cerno.tech> <CAL_JsqL3BUX8jO4X12Au_VAytboisQAoxDYz03rQfDMJjL4EDA@mail.gmail.com>
 <YWWg0PjnuBCKO3Tq@google.com> <CAL_JsqKK_ZC95QfDYsKWdFM3bF+DD7wD=R=--6d74DwqHkgexA@mail.gmail.com>
 <YWWu+t487giK/FB2@google.com> <YWWvJKs8K9Z8WIGV@google.com>
In-Reply-To: <YWWvJKs8K9Z8WIGV@google.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 14 Oct 2021 01:35:42 +0200
Message-ID: <CACRpkdYe+qJMqbFNyfSE=93ERg4XrmnxqxkT34Kv5n+ZtCyNLA@mail.gmail.com>
Subject: Re: [RESEND v2 1/3] dt-bindings: gpio: Convert X-Powers AXP209 GPIO
 binding to a schema
To:     Lee Jones <lee.jones@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Chen-Yu Tsai <wens@csie.org>,
        =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, linux-sunxi@lists.linux.dev,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 12, 2021 at 5:52 PM Lee Jones <lee.jones@linaro.org> wrote:
> On Tue, 12 Oct 2021, Lee Jones wrote:
> > On Tue, 12 Oct 2021, Rob Herring wrote:

> > Ah, I missed Bartosz Ack up there.
> >
> > Happy to apply it.
>
> Linus, Bartosz, do you require a PR?

I'm a bit out of the loop so let Bartosz answer this but generally
not, as long as your tree builds clean we are happy!

Yours,
Linus Walleij

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9AE02AD9E3
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 16:14:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730200AbgKJPOO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 10:14:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730917AbgKJPOO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 10:14:14 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAEFCC0613D1
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 07:14:13 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id e27so18053097lfn.7
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 07:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=esaALOmKo83QH8MAAmVaB5BXgE9Ow2/0mSnbljaNYM4=;
        b=aeQXNm0tKZwhf6aXmLrbFggPtUpqewp/8SjnXWL1j4vT5eUrA7/62XUhY9QD6/EBGU
         qQA/akMYY9vJ5JrVyvRU8WCeIh2lFOFU8nHEBdC/lPkksAvwc8HAPUBzV0wdH87WBr8P
         +2NIFt2eLokVMO3bLCkXJ4qDp8Y9oeqFHsD4Ymsag+fkcI6AgjpZT51AyiJrYSivYFzI
         gSGbC7l3bMeVw9m+0Mk4obXDiKISugOOebVyUAKJ2qI1yUeclXNYHFV3DIjnbksXy92F
         wOv+06H1kw409IyWkKA21K/ACTEP8Li8w9GB+8khDD237duXDW78OvjwQcfRniyY9aff
         l4JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=esaALOmKo83QH8MAAmVaB5BXgE9Ow2/0mSnbljaNYM4=;
        b=B/osP9XaET0znuJqh7GdeKA4vC7hSGnc4jAFchVMK/sVRsmTiafS1t9BpwgRiDeMzO
         hM8WHFSJ2sUPw+f1uOFf1m9wUp+hS6xtMebDqSMnEXuAWxWXdxxzOBbmBth8Lqjx557a
         IpyDg0GNYFLEAcsbak7upvRkvRhXro0DTtqcIOvVTsux2inTpEW4i/AviE3ZE5Ogp3G8
         B3ll5TEDuRjHb2AZHsb8CpUEpIrd4gaLfJHZ5wc9PZaH4DRdbPZU2LVkxuw5ja+Gr4fH
         Uby44+dzI+fpy4DGRrrgKPb+KchLSf8p00LM5fnt3P5BPjbVA/MdHXJsRNfdr1Npf0Vj
         /vgw==
X-Gm-Message-State: AOAM530LRZDqbqA7AZxhKRYFrJc6F7ZlIgaG9s7zXGpHPuHLIDeIW7Bq
        NPquIaDH+McugdprzGKv/tMO1+UOq0VSKe7CrRzvGA==
X-Google-Smtp-Source: ABdhPJwzF+JOkojGk7BDkPHJu/89IPzTit6/oFTL4Sc2j3Z1+spPJaHh0ixYhP7yxxb/DDLLnEcf0ZAt1jgWDhmZ9IU=
X-Received: by 2002:a19:fc03:: with SMTP id a3mr6142298lfi.472.1605021252171;
 Tue, 10 Nov 2020 07:14:12 -0800 (PST)
MIME-Version: 1.0
References: <20201105111823.1613337-1-anders.roxell@linaro.org> <20201106151240.GA45829@kozik-lap>
In-Reply-To: <20201106151240.GA45829@kozik-lap>
From:   Anders Roxell <anders.roxell@linaro.org>
Date:   Tue, 10 Nov 2020 16:14:01 +0100
Message-ID: <CADYN=9+FZgm0ufR-Gdqh0b7dht0KiDxEm8S+d5neFYmJQtzPuA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: freescale: fix typo Makefile
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 6 Nov 2020 at 16:12, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Thu, Nov 05, 2020 at 12:18:23PM +0100, Anders Roxell wrote:
> > While trying to do 'make dtbs_install' the following error shows up
> >
> > make[3]: *** No rule to make target
> >   '/srv/src/kernel/next/out/obj-arm64-next-20201105/dtbsinstall/freescale/imx8mm-kontron-n801x-s.dts',
> >   needed by '__dtbs_install'.
> > make[3]: Target '__dtbs_install' not remade because of errors.
> > make[2]: *** [/srv/src/kernel/bisecting/scripts/Makefile.dtbinst:34:
> >   arch/arm64/boot/dts/freescale] Error 2
> > make[2]: Target '__dtbs_install' not remade because of errors.
> > make[1]: *** [/srv/src/kernel/bisecting/Makefile:1344: dtbs_install]
> >   Error 2
> > make: *** [Makefile:185: __sub-make] Error 2
> > make: Target 'dtbs_install' not remade because of errors.
>
> Don't paste unrelated messages and don't wrap too early ("Error 2"
> should not be after new line). This blob is not useful at all.
>
> Keep only first two lines, all rest is meaningless.

Thank you for your review Krzysztof, I'll do that.

>
> >
> > Fix typo in imx8mm-kontron-n801x-s.dts change file ending to *.dtb
> >
> > Fixes: 8668d8b2e67f ("arm64: dts: Add the Kontron i.MX8M Mini SoMs and baseboards")
> > Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
>
> You need to CC the maintainers of platform. Unfortunately Makefile is
> not included, so point to the DTS file to get the proper folks and
> mailing lists.

Ok, I'll send out a v2 shortly.

Cheers,
Anders

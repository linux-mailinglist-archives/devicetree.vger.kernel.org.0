Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11C1F41DABD
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 15:10:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244692AbhI3NL6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 09:11:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234439AbhI3NL5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 09:11:57 -0400
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com [IPv6:2607:f8b0:4864:20::e32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF13BC06176A
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:10:14 -0700 (PDT)
Received: by mail-vs1-xe32.google.com with SMTP id h30so7223442vsq.3
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=apc4WniCFtPp9CA557OzdjUaRaGLWw983FzhWYJqI9M=;
        b=ucxCq4VdJzfleMFDo7ub0e5a1F2FZgZC2iKADpY6UsvNm+3jSHwPA70uvCgXPrxlC/
         qROt0Mrv15ihf4uAPyzYlsJQaIkopvg5mYJuMX9KTSIIFShLII9/G6H1IRxtiztMJHop
         1dEAFGqucrhKzh/u7PHnGQLD3S72VV691VTVw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=apc4WniCFtPp9CA557OzdjUaRaGLWw983FzhWYJqI9M=;
        b=UdmvG4BeJLpUqYnWII1kgPaHo9YcEFqRvZSs+9MVPGVMvD3CUm0Kvnr4GqLw8Cc9Sf
         dUpadETpyt89sQV0l2bNErNpngXmmlaf3VOephgTcWy6FohJgF/iuesZ5OKNUpmMYdep
         +exsWkMEy6FiG5HFsZCe/AWoXlVpCkJYxgsYe1KfW5yYaPzqWsQF6yKA7XvnNvS19EMM
         xmzgMMl5ziNxV16LzoXcA2PdxwEzenE6Iewz0dS/j3uKUAdJjKzaYKp4UAeU+3u7GGxq
         YLVFyvKceZ7bC/6gNBf6a/cI0Z0LD1RUr5Qgex/kutMsLxXLWHR7YaBtgXalDJMiA2Nu
         xoNA==
X-Gm-Message-State: AOAM533Eb/HzlTI3Y2vNYmVB5jizqBldr6IWziTq/oepxFotYo7muCzM
        vFEjDZlrfyHcMKTa+OWwzzr1umnVZYyGEII38hstmg==
X-Google-Smtp-Source: ABdhPJwBVbcZUWbq0/2+7n2xBYa1G1vIHMgCxSk3gY0LAueasyeQCmnIpvN359PONKJ8P5Ext7LSMSydY69akgqiRPs=
X-Received: by 2002:a05:6102:1c9:: with SMTP id s9mr3207147vsq.14.1633007414052;
 Thu, 30 Sep 2021 06:10:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <20210914100415.1549208-3-daniel@0x0f.com>
 <87zgs7vavl.wl-maz@kernel.org> <CAFr9PXnC4hQw5_0TtciKvqF7s=4axJ5Yrq80RXGcY4VvT1Ac2A@mail.gmail.com>
 <87wnnbv6ac.wl-maz@kernel.org> <CAFr9PXmA07Up_wfJzzgZeYwE5ZrwnLqjBvLG3CERGHOLeay0Cg@mail.gmail.com>
 <87lf3quydn.wl-maz@kernel.org> <CACRpkdYLURJCopH3hDuZTY8ce9-OxakELyFqwqkAVCsYmzF5kg@mail.gmail.com>
 <CAFr9PXn3hEpmAprP2XhnbX2t9+pe3Lihc2A+EGzdmv9LM5pXOg@mail.gmail.com> <8735pmtdo9.wl-maz@kernel.org>
In-Reply-To: <8735pmtdo9.wl-maz@kernel.org>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Thu, 30 Sep 2021 22:10:03 +0900
Message-ID: <CAFr9PXmqXMt_9N1SXPy9BVk988JUBTejGSVRzb5GHjyqX004iQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] irqchip: SigmaStar SSD20xD gpi
To:     Marc Zyngier <maz@kernel.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marc,

On Thu, 30 Sept 2021 at 22:07, Marc Zyngier <maz@kernel.org> wrote:
> Can you give the hack that sits in my reply to Linus a go?

Yep. Doing it now.

Thanks,

Daniel

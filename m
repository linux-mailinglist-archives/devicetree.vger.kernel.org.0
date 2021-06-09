Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9AC63A0F7C
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 11:17:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233848AbhFIJTk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 05:19:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233184AbhFIJTk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 05:19:40 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06D3CC061574
        for <devicetree@vger.kernel.org>; Wed,  9 Jun 2021 02:17:35 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 131so30786732ljj.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 02:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bEG/w+83YCQdhcjk3hMB/2pU0Hzz9e45pwvsQ652QZ4=;
        b=CKuHDfWBu2cwegozqj52R/g3GZnPS2uOKYtWbcWrnQB6pLHMwhDhTdoZjvpBq//AiL
         MLxZwa2uz9ZntVlOJ7sQsyWFIe1iS5JsYfe6Lp4pDUma8MeZfS8l4UsRweQRithBuXfi
         EBy5eM3VpgWhDTrdpb+aKxy/aKTOrUT+8yOM4aiREY/vEfJ8S79T46wGL2VFWYLNCAdt
         n4Qs2ypust5VOR80/jR1KriOS1AseOLMyQ/MF2eOfQyY6vWIXkSLS1Fh12e3/L4h6yNt
         4bBVNkTdUJT3V1j4OsonlnbJTe2gnRrchrwtR+oaGAsPQGQgUGqFBJ4KoZktllY3pBaF
         9x7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bEG/w+83YCQdhcjk3hMB/2pU0Hzz9e45pwvsQ652QZ4=;
        b=bqlZ7gElRAKXnxf5/nRZdwOBT+rzUSN7gBgba0SYHzopWJ9mTaiTePiBOVOB9VtzRd
         bf7BtuDGNn1wjSmy3r9g9F3MBCkLWGnC4Ty8ZGNAxvdN98cFnlE+HrWQl28QzZHyZRli
         2YkQm8Xoq+tXT1O4nSNbW9P6rboUARrSkrebQBMuZgdkp3yzeaaJtN2Fv8/XwkPfQXMT
         S8JGP16cLJ1OVoArfmLkR7pAi5EbdNjSpYHSSGfRAw18evmSXRqnvkHhkUZqnWXh6ViC
         +EHA+3EWvaY9MOPu6CelNuH5s7m1TvDfHcnoznOdVljhZ3gz/IRaGM0LPrVbTb2sjG8l
         4syQ==
X-Gm-Message-State: AOAM530E/K8QNJV2x9zhexcq1gxDr4xWekWmX+UZFvTzCuBUIAnoa69n
        s4WgUksRmzkENTZpHZUz4m9Gku7Dhmg9klFTEZ6/Tw==
X-Google-Smtp-Source: ABdhPJwh4YesWYyUgVjZAE6+CeyPfHk/453koIwepndYg3pfX5+tYJ7/ek1lIJ5PGwRvjl003ULe/1DyWqcXDvcPOhc=
X-Received: by 2002:a2e:1319:: with SMTP id 25mr21554697ljt.200.1623230253367;
 Wed, 09 Jun 2021 02:17:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210603101822.9645-1-steven_lee@aspeedtech.com>
 <20210603101822.9645-2-steven_lee@aspeedtech.com> <516bb11a-b75f-49e1-ba79-e5a4c344a7ab@www.fastmail.com>
 <20210604033039.GC25112@aspeedtech.com>
In-Reply-To: <20210604033039.GC25112@aspeedtech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 9 Jun 2021 11:17:22 +0200
Message-ID: <CACRpkdawakx66Nix41h=FzhL--QEMZCcDX=a_hf_kTq+0DjpAg@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: aspeed-sgpio: Convert txt bindings to yaml.
To:     Steven Lee <steven_lee@aspeedtech.com>
Cc:     Andrew Jeffery <andrew@aj.id.au>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/ASPEED MACHINE SUPPORT" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/ASPEED MACHINE SUPPORT" 
        <linux-aspeed@lists.ozlabs.org>,
        open list <linux-kernel@vger.kernel.org>,
        Hongwei Zhang <Hongweiz@ami.com>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 4, 2021 at 5:31 AM Steven Lee <steven_lee@aspeedtech.com> wrote:

> However, it might affect users who update kernel/driver from the
> old kernel/driver as they may expect the gpio output pin base is start
> from 80(MAX_NR_HW_SGPIO).

Why? What users? In-kernel, out-of-tree-kernel or userspace users?

In-kernel users can be fixed, out-of-tree kernels we don't care about
and userspace should be using the character device.

Just change it.

Yours,
Linus Walleij

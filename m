Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9220C3A25D4
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 09:51:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230155AbhFJHx0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 03:53:26 -0400
Received: from mail-lf1-f44.google.com ([209.85.167.44]:36531 "EHLO
        mail-lf1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229778AbhFJHxZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Jun 2021 03:53:25 -0400
Received: by mail-lf1-f44.google.com with SMTP id v22so1728029lfa.3
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 00:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BV0mX6VHU5X8dHAexL1PQHyIj2OEzudYmOcUzeY2MX4=;
        b=AdvT/igYobAKGf9/uDLDpNApWa3Pq6oV7rSkMR3xAYpt3CF1g7hBOIQXtIQnQnfLcg
         V9MCCOKKAbHgP6RiOfevPWvrGybrM0Uisq1KLDzOUrRYmAiMGJf4xjX8wG0zGPaKrC2H
         YtjNivLvnvqdYnnpF5TPK9UmUlmTSguPrDj30cheFYhIeKrdcGvDUn0VHt1DjPqlyISP
         wivifzrYIDWZN+HQJegNQQgvR6Yf9NxaB2YBqkfqwbHZjfXWNuu+wZQ120m3N83COajN
         pMoqB3XHUVSNPnWkV8KMdiR6S4l1UuE99hUPw9UX7pd7CLJj6lSgNilo0vQ6pn76sXTS
         eiGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BV0mX6VHU5X8dHAexL1PQHyIj2OEzudYmOcUzeY2MX4=;
        b=WR1SSKXWmcWobwvhQK810aXvWOYCjxu1l93KHN+Th3gW30BYZ5f9TGTDkr+OVkRQWO
         kxeD8jM9KPB3wLe0Aw/YplCX4SFZfNULfuDJZUTYBV71JRlq9y5pLyV0qiGC8k4JYTcz
         iLhpUMWiKme7T9thE0jqWTKgnUu4zVQnboAueXxcLA0uTvDPhkEeZ0g0YWYs/G1EqwSp
         gJCZ/VI3ski/qIRb5eTwlA63GhfZmZqI11RekGtU60wGvvGzhoxs0LzY2unMieQFe6wx
         7F3MzL/b/v3aCd8AP4LSs1SbJ1K/g1WD77v/3spFNAn+v5cWHQXLjfH0m07lPGn8CqOy
         PV7A==
X-Gm-Message-State: AOAM532EkDDJ+U8t461nPw4PDZRtO03h/mDUolApRji1JUkNida+8UwB
        InJr8hNflezGhPQp9AELY+tiwMr6H1J3sX20XlTtJA==
X-Google-Smtp-Source: ABdhPJwXgej17X2Hq45GoFUg6Fkxs282tt7kcgRz+7nJDajhBBMWhiNOQrCm3BSAzecuEcF6CuKi3ff9MxykHNNR6SE=
X-Received: by 2002:a05:6512:20c9:: with SMTP id u9mr1074510lfr.291.1623311420585;
 Thu, 10 Jun 2021 00:50:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210608102547.4880-1-steven_lee@aspeedtech.com>
 <CACRpkdZOStr+K9U9QTkAcsk4NxuSqBRVv_-9_VkGJbT69iSxmQ@mail.gmail.com> <20210610022416.GA27188@aspeedtech.com>
In-Reply-To: <20210610022416.GA27188@aspeedtech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 10 Jun 2021 09:50:09 +0200
Message-ID: <CACRpkda60eB6i2+2MQFyhqYn4Q0WRGPPs91cu9K-g1maov61+w@mail.gmail.com>
Subject: Re: [PATCH v5 00/10] ASPEED sgpio driver enhancement.
To:     Steven Lee <steven_lee@aspeedtech.com>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
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

On Thu, Jun 10, 2021 at 4:24 AM Steven Lee <steven_lee@aspeedtech.com> wrote:

> Per the comment in the following mail
> https://lkml.org/lkml/2021/6/9/317
>
> I was wondering if I should prepare v6 for the currnet solution or
> I should drop this patch series then prepare another patch for the
> new solution(piar GPIO input/output) which breaks userspace but is
> better than the current solution.

I would say just go ahead with the new solution. AFAIK Aspeed
has pretty tight control over what kind of userspace run on these
systems.

BTW please influence Aspeed to use the GPIO character device
and ligpiod
https://git.kernel.org/pub/scm/libs/libgpiod/libgpiod.git/
if you are doing any kind of userspace GPIO control (which I
suspect that you do).

Yours,
Linus Walleij

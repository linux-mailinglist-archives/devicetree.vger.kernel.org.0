Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AFC9DAE7F2
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2019 12:22:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729132AbfIJKWl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Sep 2019 06:22:41 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:37637 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728965AbfIJKWl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Sep 2019 06:22:41 -0400
Received: by mail-lj1-f193.google.com with SMTP id y5so5032929lji.4
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2019 03:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/RnO7aDpzX5C5EyL4y2IfgyW41OmQo4u8v7lMN7YHKQ=;
        b=vK1D15dW6aK1jvV0nmXA12AyrRJ4vLk03n2a23yq0lZRGq48xLdY0RhJGf/oVx3ddU
         BUAjXvFBI/R3XlUEEH3n9JnN/c8UDxlRqcZ0ljT/0fp2iSi9QNFMbGUQ1uNvvf/pHRBf
         yY68Kq2lxaiYmbOSRv4PDu75QITFpvy/hmgAYMpzQ4dWeFI7almhAIwEc7t5+FspOqdW
         RCKI6Rw+pO36dveGJhF4K3kXhysgPyGbM8rk1Ptjz4PRpFBDezeBWpCpFOHSXJjUnNaQ
         CgVPB0tp5Gh/UsxejI6EgLuWO/WSB1of8qF1yn/BDTBwMYqJmaoxG9DlUKZtw5/EGyMd
         dnPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/RnO7aDpzX5C5EyL4y2IfgyW41OmQo4u8v7lMN7YHKQ=;
        b=ubXfQQgh+MhI3QXOvShJUGBCcE4ALSBzxes+IhOkyQKvKeYYSsUcgTVL/9lP6hmFeP
         Dtc2aX4SvWPKz55FyiHi8lkqTGTnHzwqVARrBBAtr1DCeykS5KzSBASks14gAMhEUVDJ
         XMT0tIi0jjNOh+Kdh7LHqv4hlbs3RSxWzDIORVXmH82yqB7k/qUXs6Tq1wBRawGKLs+j
         OABQ5SugQ5j89+Z+dNNhgQb+bJVeD+XSV05/VEr3EOyDWb7CepyuSLYfJMWPQXuwYODh
         VnHivfxdKvzbykKgMHEu6qfZKVoqosPwW0YmHEO7op1t3W0yGwf6TmChOJ5jjkyZZb5S
         bDeA==
X-Gm-Message-State: APjAAAUQnKMb6ccDEReMlDDvaI6HiXjsJG5at2iNFLZvEmDqVHOzomql
        G/eqBTOEYr+EdXFKIK/OCuBJ2yC7KOR1d4nI72i/xA==
X-Google-Smtp-Source: APXvYqxTmNO1MGnu8vYhnE2IUmvw4ev8RpQUmIyLWCAtSHO9mqRjl78UFY8OZp8Ndh+gq+efvNad6aAMm/6X66YLAJ8=
X-Received: by 2002:a2e:8056:: with SMTP id p22mr14060234ljg.69.1568110959123;
 Tue, 10 Sep 2019 03:22:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190906084539.21838-1-geert+renesas@glider.be>
In-Reply-To: <20190906084539.21838-1-geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 10 Sep 2019 11:22:27 +0100
Message-ID: <CACRpkdax+KYuB9Gs4V-9wnFu=DPu0MNCmOupeNkUEa-pNdSZig@mail.gmail.com>
Subject: Re: [PATCH 0/4] gpio: API boundary cleanups
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 6, 2019 at 9:45 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> This patch series contains various API boundary cleanups for gpiolib:
>   - The first two patches make two functions private,
>   - The last two patches switch the remaining gpiolib exported functions
>     from EXPORT_SYMBOL() to EXPORT_SYMBOL_GPL().

Good stuff, let's merge for early v5.4 (possibly rebasing if necessary).

> After this there is only a single GPIO driver function exported with
> EXPORT_SYMBOL();
>
>     drivers/gpio/gpio-htc-egpio.c:EXPORT_SYMBOL(htc_egpio_get_wakeup_irq);

Kill it. People using this platform should step up if they need it.
The outoftree code was at handhelds.org and that web site is
even down. There is a copy of their git tree on github
somewhere but it is definately not maintained.

Yours,
Linus Walleij

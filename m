Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CB3A44A5FB
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 05:59:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231196AbhKIFBx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 00:01:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230238AbhKIFBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 00:01:51 -0500
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A0F3C061764
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 20:59:06 -0800 (PST)
Received: by mail-oo1-xc2a.google.com with SMTP id x1-20020a4aea01000000b002c296d82604so525529ood.9
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 20:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=irWfmlcyPuQHKKPir8OlxwwVnibLr6uWK7muZHmIMsk=;
        b=WzK18Y5A4egmuKvtBbizvoyHLqZQwgphFe0O19EbuiJRo0oG70FWWhAqECIkojaMTE
         LGei/ky0WwZacG7gqMOVuP6JrODhZG0ZvLRWrSl1p4XkO+hxU5UAlejPj2KacG1fLPBP
         AURwVMA7gLsyTMVWlEkcqjb2T0KilFe1jhZ4kXAO/tCscD2iZzmaN7LJz+web0hb/av/
         sXy9+WTDxPk9gzQW9iODIOP4T+mGKZZnWeYnlfwzLWcYbWGWZn3wmw/1GYD9qh1FjAMI
         vco1WzrmtuHAJaTFKzZ4GX4+Wazy1QgHkWe47k5aI/ouwH+EJxoTJddSpN4RMJzlY0O5
         X3VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=irWfmlcyPuQHKKPir8OlxwwVnibLr6uWK7muZHmIMsk=;
        b=QHHJ88qQ7D2GHdkA7xpdfYXwtinJFETQd1s49p9ecoBbeLQpuqVQ/QOTnq1moiL0v7
         7JVSAP/5ELKMan4mVfgFl6m96M4tvyqohojdgCBETjoxBFTe610QlgqKQgv5mjhKVjT4
         ADZWPHcGor6IGHepA9YWcjQrnq39tps8zG8PL3FmQ3zKpZ7AtTGTMiZwqsq0s5WhkD1o
         +sxXKOyrT/hTLK0VJnOP0UfBBw2D3GJ/5F8vEJM2UT4XXMzBkSHg/J3X0grANORRid+J
         7mIT2XuhjHjQ7NxdG3X6HCMu2VxHwQPIwVNGNu5BkyGhdlGIqD7PX6xv/KB3GSHxa6Jw
         78cg==
X-Gm-Message-State: AOAM532pAFV0yTxDROS3RS501VrXIcv0753upJFN1yVWzxAnM8LMWNrD
        e3mc64gS46iftQ/sc9qUPa0W2Q2GxM2Dp54rOIoA9A==
X-Google-Smtp-Source: ABdhPJzA0fBJmolcF9ydwIK4LPh8g10cwPkTOJq8YZWFOGCxYdG35tZxSmMOA+s7P/3EH5wClIkzSAPkiWKZInwliPU=
X-Received: by 2002:a4a:5b85:: with SMTP id g127mr2368667oob.86.1636433941005;
 Mon, 08 Nov 2021 20:59:01 -0800 (PST)
MIME-Version: 1.0
References: <20211029092703.18886-1-kavyasree.kotagiri@microchip.com>
In-Reply-To: <20211029092703.18886-1-kavyasree.kotagiri@microchip.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 9 Nov 2021 05:58:49 +0100
Message-ID: <CACRpkdb6-Wa8KGnx9kD5zhPLBw1YDZQgfDPm35VJzNnt27d3Vw@mail.gmail.com>
Subject: Re: [PATCH 0/2] Extend pinctrl-ocelot driver for lan966x
To:     Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        quentin.schulz@bootlin.com
Cc:     robh+dt@kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        UNGLinuxDriver@microchip.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 29, 2021 at 11:27 AM Kavyasree Kotagiri
<kavyasree.kotagiri@microchip.com> wrote:

> This patch series extends pinctrl-ocelot driver to support also
> the lan966x.

Alexandre Belloni and Quentin Schultz worked on this
driver a lot, so paging them for feedback/review.

Yours,
Linus Walleij

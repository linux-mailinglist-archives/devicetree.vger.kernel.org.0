Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC52C2FB7E5
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 15:28:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389801AbhASLca (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 06:32:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390429AbhASKVV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 05:21:21 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BDEAC061575
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 02:20:37 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id m10so21293312lji.1
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 02:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/YQBcNBC489WaN9UL5/YpWA5NrXZnL3lkrVKWyyBDD8=;
        b=Oij/nf57252NbWgQ6kxq3HlQvHsxTgCrtEu4ieKonr/XWhrR0+nBWWDAotFFTGtxjQ
         PargBwuTuhLGCG/yiKNdqVHxFQldBmWQH/LQ86clXlRWzWrA02XWtWzJMu4u+7d6JZsv
         qi4eQxMpbhH6tRxa0hi28WEi3Mt6cvqWntB8evriedqCtUndhRNIgoG8sOPqJYKEdTZD
         Yv9LL+w+02Da0OAgpsIR0q6hkMXz/3EY3PLj5txy2rJdwdNEL46v0RpYxb2WQWWZMx5W
         Ksh1lHnsDqaQlQ7nGOIWU4krN4ohVHo1UxKlw8N+7YrmcQuc4N0xkYEaFiHfErNwvLXa
         5JSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/YQBcNBC489WaN9UL5/YpWA5NrXZnL3lkrVKWyyBDD8=;
        b=UWJwEBCekFbJRDSMGfiDV829WpLeHEnJ64fN7nBoK6Cx08pDqFAopNW+TDX1GKYwp8
         0HIz91wYGSdqvFpyoZG1VsGhQlmQ44ACNQ93NOlGnXMO9f8NVu0Y35a4QZmz4PhZlvcF
         IWK3AYlWF7biz7GM4q/U3GnReqxV4qctbkc3EpDGv5TqpEJc3YyQOyAtrhwLZLWDOIs9
         J6eqQ47jBXPG/m/xH/SRXdeB6D17YUETYHpwoXoI43y3rRQqEPgFK1cBXqL/kXpWk04H
         cmQT07hbkPfr5V3mhbB6fBEuzJ0wCqjeRAvfl+xdbPKBdW/BTo+tITlvx+fvBB2HUTCb
         vtng==
X-Gm-Message-State: AOAM533gDiF1w65dixynGY3JPNrT8wi3nqI/cHdPOGvUrUcW6F+snSvO
        WxQpGBCl9ELuIFcsCcQ0QcvvT0pSlNxa3S9nnIuN1Q==
X-Google-Smtp-Source: ABdhPJz+4QRX7HKw9VEHd12Gtrjk667fN0JyF+01zaf0EbwqwdJ7Fe2bT7F5OqK9k2gnHfNTKGTAUF79v7Zl3/MIby4=
X-Received: by 2002:a05:651c:205b:: with SMTP id t27mr1594135ljo.368.1611051635989;
 Tue, 19 Jan 2021 02:20:35 -0800 (PST)
MIME-Version: 1.0
References: <20210115210159.3090203-1-saravanak@google.com>
 <CACRpkdYrzaFuWkbTe7Fmos4Bk4Ojt6wbqayDjyrS7sf98P-Rbg@mail.gmail.com>
 <CAGETcx9t3R-k0ttiaBUqcveqnXMX75xuTcKPSo9J6WJOfgSP8w@mail.gmail.com> <CAMuHMdUN7+O28Xz5rkPwR2RuSA+o_E2VcWsz_9+kzy4=0Jnb1g@mail.gmail.com>
In-Reply-To: <CAMuHMdUN7+O28Xz5rkPwR2RuSA+o_E2VcWsz_9+kzy4=0Jnb1g@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 19 Jan 2021 11:20:24 +0100
Message-ID: <CACRpkdZqSm-xfo8a8aFUe-Mbaw9tM+OmCAF3KWjOVDfC=oWj+Q@mail.gmail.com>
Subject: Re: [PATCH v1] of: property: Add fw_devlink support for "gpio" and
 "gpios" binding
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Saravana Kannan <saravanak@google.com>,
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

On Tue, Jan 19, 2021 at 9:50 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> > Can we pull this into driver-core-next please? It fixes issues on some
> > boards with fw_devlink=on.
>
> On r8a77951-salvator-xs.dts, it introduces one more failure:
>
>     OF: /soc/i2c@e66d8000/gpio@20/pcie-sata-switch-hog: could not get
> #gpio-cells for /cpus/cpu@102
>
> Seems like it doesn't parse gpios properties in GPIO hogs correctly.

Could it be that the code assumes no self-referencing phandles?
(Just guessing...)

Yours,
Linus Walleij

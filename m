Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF1C0255CE7
	for <lists+devicetree@lfdr.de>; Fri, 28 Aug 2020 16:45:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726571AbgH1Opd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Aug 2020 10:45:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726322AbgH1Opc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Aug 2020 10:45:32 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22B88C061264
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 07:45:31 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id s9so849960lfs.4
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 07:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Vp97yrSpR+OTzyZcNc9C0oseKakFgiDLfmVqjpmNJf8=;
        b=zX1fH0mQLlsOsTkogRPuQVazxLuvENgLGP+kJnv3g7XwwBkQ9LwPr6KCqTPSyamL3z
         U+ae7wn4s7H9Vzjo3mh56JDMvY1fDhnXioztSrabgO8Z9W3tkgxjYtb0swHQNeqRQ6hq
         DPiTqMgLwChxwCwItaY/EVXAD4nMXqzMVU8urFXOlw3E2lHCRx1YPFJerTVC7FWVctIJ
         ZzHutDEnHuGvz2Cs/uV0b89yvMUSuHuGPt9EBQtCfjqb0bblSGtZba5BM1UkTVxYbBNY
         DkAlccyj3nqVIMBdNZmven7zz1wB3TouEjPDLPOoe9e1qnWbZ5HefJ5G3eH8alDRvByi
         rH4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Vp97yrSpR+OTzyZcNc9C0oseKakFgiDLfmVqjpmNJf8=;
        b=LbDNhXRHBDAhtTK6hjM7V9tbAuVCSi0WxmV0iW3xuxwtxLcTmOipkFRtXeg3cEHcTL
         hbZ1483gjgafixJKMOhWDxQxemW374sxCu/TqCmsLrSJFUyI65GFVnfTrAo1uzU5Qgff
         38jxXIByqc+xBUQ2k+QVB4l9gKlzqsgZiOJXgHsssPFDdXC//yVVwOEXbBXqvPNWP6Lm
         +9LfrtQQN26Y61OLW+RkWhE3nrnqa13+ELiu0q5Pm/DzSYkkvTakygWHEvyVJv3G+Vs0
         07Rkku8pfCN4TB7owK2FPaAGwqzHAMHuY6Et/sCXXZJl9GlWuB+Jj4vMBj3OP7boZUsv
         XAXA==
X-Gm-Message-State: AOAM533gS9WCF23Gn+vLQGd0vJYFx6YvggJsaJo/UleeiJ0SF33+enT5
        vwiGRqM/jcI4DgjlSRFCz1RVoGAUCBf40isBJgoyIg==
X-Google-Smtp-Source: ABdhPJx+CL6vs2cc7cG2OqOnis0aSEP4pn2vlz9pcsjIjwaB64AYzwUnTUOBlVOHMmWmYhWcLF5+RGBhHe1v7dy2JVo=
X-Received: by 2002:ac2:4c05:: with SMTP id t5mr977971lfq.89.1598625930235;
 Fri, 28 Aug 2020 07:45:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200828130602.42203-1-andre.przywara@arm.com> <20200828130602.42203-8-andre.przywara@arm.com>
In-Reply-To: <20200828130602.42203-8-andre.przywara@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 Aug 2020 16:45:19 +0200
Message-ID: <CACRpkdZ5er1MBiyYBNBG=7CfDyWv83GJtEURyBKbOHxSNP_GBA@mail.gmail.com>
Subject: Re: [PATCH 07/10] ARM: dts: arm: Fix SP805 clocks
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Viresh Kumar <vireshk@kernel.org>,
        LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 28, 2020 at 3:06 PM Andre Przywara <andre.przywara@arm.com> wrote:

> The SP805 binding sets the name for the actual watchdog clock to
> "wdog_clk" (with an underscore).
>
> Change the name in the DTs for ARM Ltd. platforms to match that. The
> Linux and U-Boot driver use the *first* clock for this purpose anyway,
> so it does not break anything.
>
> For MPS2 we only specify one clock so far, but the binding requires
> two clocks to be named.
>
> In practice, Linux would pick a clock named "apb_pclk" for the bus
> clock, and the Linux and U-Boot SP805 driver would use the first clock
> to derive the actual watchdog counter frequency. So since currently both
> are the very same clock, we can just double the clock reference, and add
> the correct clock-names, to match the binding.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D0013E5B96
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 15:28:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238924AbhHJN2c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 09:28:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238872AbhHJN2b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 09:28:31 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18E11C061798
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 06:28:09 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id d4so12599522lfk.9
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 06:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=txwmknRtly19dwG2TwLijdSUyS9aLwYWp1obTuXBfoc=;
        b=uZbA+1J935R3usprafc8LRUQw8doPbVfcapR1X2WEhOvM+EX7M63d5ZsO0VAvsVNZS
         xc3FivfT6ubgZbfMXKz52jSnsZIMXiSe+40kgwcbMhimzux+MtLWI03TsIxYPR8J+FXy
         Fg5ItgR5ZgUAVtjsevhX75vxMeq6H4bInYp3SkK3AbY468I630NCUa9R16uQJpzFZaVl
         wSQXu0x1FHzzpXqhzKbQ58q8eGA3P6T88AslMArgdP9Yv7k4KPId9rJKhKVQ0lnvZMgF
         JJiyC3XFKOXLI7k7TQbwnJZ6QDbjb2mbVHMVLbZcReEvjhfrU1stahisnFI79GDgAQW9
         +JTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=txwmknRtly19dwG2TwLijdSUyS9aLwYWp1obTuXBfoc=;
        b=D9PkYDm1vtuIaAFperfn8zjqgzEy3aSyD6LIo19EeLtjWRcgHpTs6ckYf1iJQOf2l8
         VB24SllLm6+0S+yfGMw6EBkevXGRsmgzHUHmGpljr50NKvh/IRaNEPNDFZDaEp7Wv1FG
         Vam0VcPvUW6ux88XicQGE04kcfAdCIBKfDdNDDt4e9x3kM9Mmh+3RAHjA0ySfXLpn0ud
         KVpqomFZOAOEYZPxqeWNm8/ERxP9zZXvcDkH+spQYfb5sVfK7iOn9eWK1EE1GuMcsyXF
         qDoPnt90TBN5kGb2aocsR71DTkdiZIIHk7M3jufmfxYBu91oH5RYi5gZ5HpUBFpEMXRY
         reAg==
X-Gm-Message-State: AOAM530ZEd8r2rOekf9Pu7ner63DhdKCGyOK/J9+sp834vAi+4Y0JOu6
        3FYXQFlls7HqwGY0nZ53GZTOyTNVFhdm1AQsoGLmpg==
X-Google-Smtp-Source: ABdhPJwobs4y7d/rU3nBa6u5h3FCXzTiFu5hBR5q/ktt76N9parIbFxpmpXXOJKBBwsROkKpvYnYcohfRvGFRZM7pmY=
X-Received: by 2002:ac2:5d4a:: with SMTP id w10mr22073687lfd.529.1628602087498;
 Tue, 10 Aug 2021 06:28:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210723022543.4095-1-jiaxun.yang@flygoat.com> <20210723022543.4095-7-jiaxun.yang@flygoat.com>
In-Reply-To: <20210723022543.4095-7-jiaxun.yang@flygoat.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 10 Aug 2021 15:27:56 +0200
Message-ID: <CACRpkdYVcCW2yD_Xva+cog7i5C=YokMw+52i7iq0Nj2vVbWacA@mail.gmail.com>
Subject: Re: [PATCH v4 6/9] pinctrl: pistachio: Make it as an option
To:     Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc:     linux-mips@vger.kernel.org,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Michael Turquette <mturquette@baylibre.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-phy@lists.infradead.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 23, 2021 at 4:26 AM Jiaxun Yang <jiaxun.yang@flygoat.com> wrote:

> So it will be avilable for generic MIPS kernel.
>
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> --
> v3: Depend on OF as well

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

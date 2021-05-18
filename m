Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4556388278
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 23:55:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352653AbhERV4i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 17:56:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352648AbhERV4i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 17:56:38 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 524BCC061573
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:55:18 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id j10so16011701lfb.12
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pkrHwFXuonxLm5iDdJ3GtAunCIVS4uNey/s/gmA9qII=;
        b=AU1FYN+YPLrrcpqdk93hUps142FI9u50Upipl/5vJqomzUF0z2WNfqfHR37Zp7iebh
         feqtivkL/u2Wafb4kQ/YzUqSKgGNdrKaIZJBN3en5R+jCNfro1DuQby8XvHgMbMXhQF6
         OhqnhYqxohXqln7+PRuUMZY4V+QHiSL30NCZojyMjkT/eJCfGmqImDQg8SgpShUmKMsf
         bTXsHFuZFsGhWo8QGdRryEVMuuGTMhrAIQYobnp6UQyx9CgrebwdEp02k2qoHre477KG
         0rmJrsggg4sirK3RhtOdRNPnbhSW6I2Rpua/JBUnFz5gIwraJHX3N4m/HSnojveMLYea
         uPlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pkrHwFXuonxLm5iDdJ3GtAunCIVS4uNey/s/gmA9qII=;
        b=Y4CJRKoC9tJSflCq7L4J77GMX2ZjjECvWuimwjSz1OeyoTFprueN7jlru2srv19RXt
         zDkzk7OZMyoyVz02OW7NFFUDW3tUBoaawbElt9Q0IzI+pNEc/eVaYRIX5SoPm7z9IwfP
         LRFMhd/I+tRE67WhiIPYbGxeRi/TCHwMbMX+3WLogPjLnjrtDw2NWxTi5+13UkKk2xEY
         k/Ga9FXRQYhhPL8a5oop0tOAxSq99dl7Gv8oAqR8ZLI0dDlYqZXaDSb2moDNRfKK5Wlr
         NRuw575fx3Jf51bl31Frei+Spy5VQM/mLcsHm61WzqzWe1L/PKx+gklYMuXWky/eOHvo
         vJ0A==
X-Gm-Message-State: AOAM531PTsde9EPi4+BSqUdWMUBEuo+as83BaCfzHlk3gjVMZ8AhjzRp
        zz1E6QsaEI2rXZ/lxGIgHa4+QHUrVthQx3JX1MH2aA==
X-Google-Smtp-Source: ABdhPJz9MA53JA954IbUUfEyxfpo4uPR8Ul7Uig4rJHfmQ7MaPqfNQ6SM8JW041MR4qdzpgyVUbRq0S/NwMESjwAGs0=
X-Received: by 2002:a05:6512:1050:: with SMTP id c16mr5611408lfb.586.1621374916871;
 Tue, 18 May 2021 14:55:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210511165448.422987-1-clabbe@baylibre.com> <20210518002624.GA3346846@robh.at.kernel.org>
 <YKQJjrlTB0RZYNOK@Red>
In-Reply-To: <YKQJjrlTB0RZYNOK@Red>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 18 May 2021 23:55:05 +0200
Message-ID: <CACRpkdYncNhe=iuqk7tAu=XeBSOcbbG=ArvxYYRmOGbHY7gyJg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: convert faraday,tve200 to YAML
To:     LABBE Corentin <clabbe@baylibre.com>
Cc:     Rob Herring <robh@kernel.org>, Dave Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 18, 2021 at 8:38 PM LABBE Corentin <clabbe@baylibre.com> wrote:

> The only solution is to remove "reg = <0>;" and calling the node "port".
> Does it is acceptable ?

It's what I've done in the past at least so looks like the right thing to me.
It is only used in this device tree:
arch/arm/boot/dts/gemini-dlink-dir-685.dts
if you send me a patch to change port@0
to just port then I'll merge it pronto. (I can apply this patch to the DRM
misc tree as well when Rob thing it's fine.)

Yours,
Linus Walleij

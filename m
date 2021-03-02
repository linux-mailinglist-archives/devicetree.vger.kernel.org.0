Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3536E32AAD3
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 20:59:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1839905AbhCBTzi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 14:55:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240953AbhCBIXs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 03:23:48 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45F79C06178B
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 00:22:01 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id e2so15670679ljo.7
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 00:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TZiG9FUNsTtc9xJcNdP176kzLhfPZPzNMUWuHOZpK8w=;
        b=gHWMhNFwzoaxoWpcJp6yjvQ7y+iou36IC0ueaijGcXCsg6iiBUKchjf+EXQmmlPpar
         zXVMRxBZFBzDPfWohS+2dG+CfzhJz5kt7+YLk/ndTG9zW1K9thECTty+0Eb5kLmY5/Jp
         xFdVKKifCm+gh2sGx/iusL+RvceHVKk/l+WDqyzTyBx+CsR+GN78NKUIxI/cuLAVsrvX
         3aN5Qubd/YGSGOfU7XxmkVPT2mMThd4z5qiWLIEfqlnDNwTgGiJ6kz01tJpP3W9AQqxE
         NMtOHC2fM9hMfpqsaMduG0400JuHt/vXPyTdhjiAGnupttHjff2DxzvUaXXHRt0A9j1g
         Epng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TZiG9FUNsTtc9xJcNdP176kzLhfPZPzNMUWuHOZpK8w=;
        b=Zha92ibWlKqoL3k6GLMTKKc/Lg/rin8N1A4V7Fv8tRCLcFaJ6e8TBVffybKLZBzzjC
         wmaUtzvkCMC6/0VELlH96DlnTPtxLKCnYM4SdiBqSspA8rIMottOnZUvXxjGr5/NS5nH
         NIyGas/kW8XR8tfMeZ63xThL4nI8y9Nsg9Y8nGg1sWuUAzKGsYrImTrlfpU+e/z+RVEg
         Mm0B6MncD/RA3u+hH2oKrUBH0N2c18xbndE5sWAt41QZkV/7Q36cOgMjE6/GFOw93Llx
         1Pjk50N8MSVPCePEMl/mRaEmUfXLrHislFBfjW7Ldwl7yqkt/zOcfFxKZdNfaInzUilr
         5u1g==
X-Gm-Message-State: AOAM533rOxE71wNJAWs/JBtBs2chuNHUPROhpPT/2DQzBqTwoT3P25bs
        dI22klvIkm+LjgVOhtS34YuadKpTmnx0J+dzjp/1gw==
X-Google-Smtp-Source: ABdhPJx8HGSb/7Z34+2VXUnmVlC+KJdL4zJXe6r7nEdMAuDE14JW4wngfpMeFsIXp7IYIQnkEi2H5zPVRMplMdLT208=
X-Received: by 2002:a2e:864a:: with SMTP id i10mr11017005ljj.467.1614673319597;
 Tue, 02 Mar 2021 00:21:59 -0800 (PST)
MIME-Version: 1.0
References: <20210215121713.57687-1-marcan@marcan.st> <20210215121713.57687-2-marcan@marcan.st>
In-Reply-To: <20210215121713.57687-2-marcan@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Mar 2021 09:21:48 +0100
Message-ID: <CACRpkdbk9yyzL+nG0KHrRmEw2FYTPfrozOxCTPYOLD9Mk7GZHQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/25] dt-bindings: vendor-prefixes: Add apple prefix
To:     Hector Martin <marcan@marcan.st>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Marc Zyngier <maz@kernel.org>, Rob Herring <robh@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Mark Kettenis <mark.kettenis@xs4all.nl>,
        Tony Lindgren <tony@atomide.com>,
        Mohamed Mediouni <mohamed.mediouni@caramail.com>,
        Stan Skowronek <stan@corellium.com>,
        Alexander Graf <graf@amazon.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 15, 2021 at 1:17 PM Hector Martin <marcan@marcan.st> wrote:

> This is different from the legacy AAPL prefix used on PPC, but
> consensus is that we prefer `apple` for these new platforms.
>
> Signed-off-by: Hector Martin <marcan@marcan.st>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57EBF3E8D33
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 11:23:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234992AbhHKJXv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 05:23:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234670AbhHKJXv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 05:23:51 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 839B0C0613D3
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 02:23:27 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id p38so4444514lfa.0
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 02:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Wv2obZIW7bS+yaiNicFM8A4ncuxkejW+sA4cvAfXZlg=;
        b=jX3O/8ysjqDcQbgJVpMXjGfnrZGp+OmpsIcnbEK9hVCl+2IdLp1c21IDLPnDw4Lvyo
         9vCstxnPeIA/181verJTuJ+1jEZoFk56PYqGlaEgJN6cb8j4ptetHB7YkJIqgr+n2z21
         TIy3VC83Ukbr0Wr7lkmxqVRMncRZOugZNDq+dJFtHqZy1jkN8bTgbA8RZdDfQ/JGoM7l
         tCjPkFHa9D42lmmuaPWimBl44b20PKUaoUtTp9ciEg/ya/TZhInDQ9yrOLWDjRPUKbqi
         quAxUT/4moEE2wjxEvWtq47tzT56or6CDJZ77E80Fgo6/wRzb2/54Vn0yo2EqjuPo7Dt
         lMYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Wv2obZIW7bS+yaiNicFM8A4ncuxkejW+sA4cvAfXZlg=;
        b=qUsZ5ybtOMTgQsRzwuo1nwAc2k5RS3RnXyjv96w1tRwiXBVmkXRf0Zf1Mae+VFVJGT
         sSo5VP5JmnOs0gRdUIF59nDuzeufyK+biuR9Z2JcY/k066Kh1VZJejw5Ayc39SEA3XoS
         l1aq7ziDBwBNlhAaW7WneBIC83+0bv99P7YdOlSOKi+G5y5Pupxq3o44ifmHh7NsfpLG
         SNSEPKRwVBROW/cSgU88lqgE0amVCnYLq5D9rCKQeMvQm9Xu9r51vsGqhJxzfyDWMEMd
         3udJZDomBcJtNYN/1sIsRYfj3LIbUkndJnNoMWgkf/75y1Hg1cURO1z0u2PWqd3FFqCX
         rGzg==
X-Gm-Message-State: AOAM533RCrv9zULiYcH9gyfUqET5JY0zY8/AxXOrOb9X3Qm9NbbW51NN
        3jDI8c9yK38AT6NZnJWUjiX+eALumRi5iJsM6qoxEQ==
X-Google-Smtp-Source: ABdhPJyTeVHbDouXlckDIvDSJ6/AR1HfBLteshMqv3PywJcQx+H0DVOfsZHvFYogqF2k07PL0S+wamjLfLzKzj6y9ew=
X-Received: by 2002:a19:ac04:: with SMTP id g4mr8676419lfc.29.1628673805805;
 Wed, 11 Aug 2021 02:23:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210802062212.73220-1-icenowy@sipeed.com> <20210802062212.73220-8-icenowy@sipeed.com>
In-Reply-To: <20210802062212.73220-8-icenowy@sipeed.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Aug 2021 11:23:14 +0200
Message-ID: <CACRpkdaPf76ORB4wHGZdnzszb16SMUa_PEoPqhuBP+Wpfk0Hmg@mail.gmail.com>
Subject: Re: [PATCH 07/17] pinctrl: sunxi: add support for R329 CPUX pin controller
To:     Icenowy Zheng <icenowy@sipeed.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Andre Przywara <andre.przywara@arm.com>,
        Samuel Holland <samuel@sholland.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi@lists.linux.dev,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 2, 2021 at 8:23 AM Icenowy Zheng <icenowy@sipeed.com> wrote:

> Allwinner R329 SoC has two pin controllers similar to ones on previous
> SoCs, one in CPUX power domain and another in CPUS.
>
> This patch adds support for the CPUX domain pin controller.
>
> Signed-off-by: Icenowy Zheng <icenowy@sipeed.com>

Can you send the pin control changes separately?
Also the bindings.

Then they can be reviewed and merged separately so I
don't have to pick out the stuff I can apply.

Yours,
Linus Walleij

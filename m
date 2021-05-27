Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79AEF393957
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 01:46:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236118AbhE0Xre (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 19:47:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235730AbhE0Xrc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 19:47:32 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05D36C061574
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 16:45:58 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id w33so2604665lfu.7
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 16:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pzhAZz5qD9tMIBygAnX25ExGzRT83UA6SsM5Jk9PK9c=;
        b=ku+MevdNuxRQCIlQDe5WbthdcCPQDlxzodRhu4e04QT5ujq4MSRkOtpvYQW/yxHMuy
         f8M/4piku6X9w+HnbFpx3Laek/DEUtWRK5WXzuJxghvKoAN8b1NoWQRlhGfHvluUWD3I
         Zxo+KYHxKlMCru/TegYs6o7Wx1HC3HrsXqbOPlzPKezkluNtQhqrCVb9ewW+lVeON4aZ
         7BAasc7TxACThYfU8UpHTYw5znXA8c7O3yUAyqzfv/JSJJzPAZMOGrlFx+tVD6pyX/cW
         yUSCBW3S+B0M9XgiWX8isA12ea6Er/YDTkFGL4bEkXkwTv7cDHejONmAqsLBRkchgtBb
         rtEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pzhAZz5qD9tMIBygAnX25ExGzRT83UA6SsM5Jk9PK9c=;
        b=amEoZwmj94TD+R/GpPvZcn+c7G4L1K90K6LNiYyJjoU8bHys/lFTdn6hsX8b3JmqO+
         OdHGqgPXgHD13Q9NO0gKkQPPcWiLULD23OLCUDb9rHr+Ylz2h0JL6orQNY5VCvGkwY6z
         DEvrogjRSPo+gJjFWXQeBpVhHYSlQMSRI80wWYn8gnKcFcjuFXcDXb3qoY/ptdkolPLl
         n5h8OvOoeoZcHZuFmdE2fe42ITafU26YDaEntuLimZ4rC5d1kccoRv2wfN5NaXeHRCt2
         2jk9PXPPNsh92+t7oXz36p/QyUrOYQkAYAGQ2DvEr+rXUg8V+faAyLOKVzYikkJR0KpS
         1vxQ==
X-Gm-Message-State: AOAM5311gWmwniZPMOFaykbwSpiia9ECtu4T5qHNuijfnsgbjAjTMLnJ
        Vj+TUDnfJzod9TpwLnmG+nSFMLDZZD450yrqt9m9ww==
X-Google-Smtp-Source: ABdhPJy/46H+k3aOEa5cM0efkOnNLslLyNp40ndo+HmC/hefCNnT9RC3XB9+Hy8ze9TKQNzaARS55qPRJF1ZogTpez8=
X-Received: by 2002:a05:6512:11ea:: with SMTP id p10mr3746839lfs.157.1622159156359;
 Thu, 27 May 2021 16:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210525055308.31069-1-steven_lee@aspeedtech.com> <20210525055308.31069-2-steven_lee@aspeedtech.com>
In-Reply-To: <20210525055308.31069-2-steven_lee@aspeedtech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 May 2021 01:45:45 +0200
Message-ID: <CACRpkdaFVnGeOHCdwoBS4UMho8OJ_s6cAbkqJEM+uNyf9j=EQw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: pinctrl: Update enum for adding SGPM2
 and SGPS2
To:     Steven Lee <steven_lee@aspeedtech.com>
Cc:     Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        "moderated list:ASPEED PINCTRL DRIVERS" 
        <linux-aspeed@lists.ozlabs.org>,
        "moderated list:ASPEED PINCTRL DRIVERS" <openbmc@lists.ozlabs.org>,
        "open list:ASPEED PINCTRL DRIVERS" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/ASPEED MACHINE SUPPORT" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        Hongwei Zhang <Hongweiz@ami.com>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 25, 2021 at 7:53 AM Steven Lee <steven_lee@aspeedtech.com> wrote:

> AST2600 has 2 SGPIO master interfaces one with 128 pins and another one
> has 80 pins. It also supports 2 SGPIO slave interfaces.
> In the current bindings, there are only SGPM1 and SGPS1 defined in enum,
> SGPM2 and SGPS2 should also be added in the bindings.
>
> Signed-off-by: Steven Lee <steven_lee@aspeedtech.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Patch applied to the pinctrl tree.

Yours,
Linus Walleij

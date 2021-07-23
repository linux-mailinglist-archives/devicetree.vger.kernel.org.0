Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31B8F3D3823
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 11:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231365AbhGWJPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 05:15:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbhGWJPg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 05:15:36 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E6AEC061575
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 02:56:10 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id q2so1014026ljq.5
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 02:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CkR8wUqEbTCkDMFp55npGJ8Or66e381+fs8zfOqDe30=;
        b=mBol1gdnCW9lQ+lz6XAteY3lI3csu9WMtA0hENo95F4qrMNJqguZTw5jECZQaT68PD
         OOnFjsx/N/QVdfKiwzFo0+GSF0AwVPd73eGapGPy4z0z5DjcjTFQN1SbSF1o40P6wuOG
         5TqQm6w+ywesAzGsFrXN9BQfdL7ngQzcAg3co2oYzUwTXqwekOyu/xFam31KBEBUaghW
         c0dLwaXCiG1gM0ESk5NmgaBHhfOS1vaMGx253sVy8bVkxE4ZcSAsnx1jzs4RLdvaGuWu
         RomuFfIXZrKCS/8p9TE2My4H6xvgY+vI4SgKN/9wQVBT2HTm7MWZkbO6cEouLJv3jVb9
         zf8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CkR8wUqEbTCkDMFp55npGJ8Or66e381+fs8zfOqDe30=;
        b=rnavZTPgLjaHfcJXrnTq+FT4hSq9PKQsgCjOpszhw1FUQ8mDD5XvyhGXEkZQgZR8op
         L7P2FImOHD70usWHTb+2WzCrEl8yeqBafQkK+0HBXk+UEtgIx3aUHiRkgXEtrmQ92PtO
         GyAUF8az6QZBlVQCxsUqm0kpx4fh4gPCUE/Abos4s48l1RnwhR6GwQxcsxd7Vp4Ur/0W
         pjjXi7UU6x2B0Df05Pzx48WIWpZeUm20KclcZXdTug79x/O8v3U90ZtRyq27Kt8UxL1I
         IX25FlPRv4KQ1g7kwLRkp6OEA+gS/FAcLKe5xXTk5mEY6NISmHFMLRx+evmndbvm87DF
         pTog==
X-Gm-Message-State: AOAM531Ex5cLbKi4Mq73h3XIVjSOaxZ27jzCmrTmyEVuDiZv4nlPL2f2
        eADHe/8fpV1wZ7GTZopgo2KMex0eMWAXG4eh/66fWg==
X-Google-Smtp-Source: ABdhPJxnM2vPTMe/QERI1wzVFNT+EmxMDa0ooWJyC5d5IaGRNdU8tc70qB6aI0GBFYtqfCAwt6+jzUSnai8uPaJBxyg=
X-Received: by 2002:a2e:950:: with SMTP id 77mr2791047ljj.438.1627034168552;
 Fri, 23 Jul 2021 02:56:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210712100317.23298-1-steven_lee@aspeedtech.com> <20210712100317.23298-3-steven_lee@aspeedtech.com>
In-Reply-To: <20210712100317.23298-3-steven_lee@aspeedtech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Jul 2021 11:55:57 +0200
Message-ID: <CACRpkdbwR_TKB9r0CpMRrMybF=SpHN4shw5tiwZf6v=ZzTgG+w@mail.gmail.com>
Subject: Re: [PATCH v6 2/9] dt-bindings: aspeed-sgpio: Add ast2600 sgpio
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

On Mon, Jul 12, 2021 at 12:03 PM Steven Lee <steven_lee@aspeedtech.com> wrote:

> AST2600 SoC has 2 SGPIO master interfaces one with 128 pins another one
> with 80 pins. Add ast2600-sgpiom compatibles and update descriptions to
> introduce the max number of available gpio pins that AST2600 supported.
>
> Signed-off-by: Steven Lee <steven_lee@aspeedtech.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AFF63D382D
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 11:58:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231573AbhGWJSN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 05:18:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231547AbhGWJSN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 05:18:13 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08544C06175F
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 02:58:47 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id r17so1197066lfe.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 02:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bXuM8D5k6/Yl7ozL3DfM+PVJYiIerLcTEkx5mVID/UU=;
        b=NGgdq7v+o5iqkF3EI+m7OhMam7v6/wLB+PtgVWtPK+zgiAfitTZEjpKoG8KZfnGRZ0
         XJ8xuYkmi14aUj966cwbUP99rci0Pn0csyZhH9ZTUDnuQSS32kadqR3lypzYlQJVtsnM
         M/Ob2kqRn3bnETXtydx4LmnRgUUYyQCgOuGSK3GFT7vITGtGj0rltsuaNPV67aIl2IPE
         bHvysTHvHR7wop3cRkd0567v6cxdtTxGnhtE0ta1ytVcgpKU5CaZP8raw12NEl4CmFcw
         RqAlqSRFEHdmfT39ZgMX58L1/MNwxVvr9JKjOeHcHDvcFn9WS2ZMo7vYxE3BPlFA+Tmq
         I92A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bXuM8D5k6/Yl7ozL3DfM+PVJYiIerLcTEkx5mVID/UU=;
        b=JTj0n538ExO6LjmGH/3sxCxf3IkY1cRo856ZJq/zIZMLdzK9c6BBMnYAK6p1skQ2aR
         HzOwzKxRrC3awmi5FCnGgmsoqms2zhG0XHqSVSE9YGGUcp+bssx9Lqs0SPPtqKuMMVBJ
         JytvuwC8lzE1p+HAQFNB615siiwJG/IMPudEcYv7kglJ4WOidtUr4Kisjudenj3mlpjE
         kpAqwNqGtGQeq5Ov32tpXpJKKk3USjexhpPCAnyNvGUQ0Xrt6UkB8hpj0u58fN6sRE4g
         zc7EaCTkR6vYMfECAwfDCKX0Gj4zmOeGFFenEk0laJs4kC+TuAkzd5tHaGNGmZ1boegz
         6buA==
X-Gm-Message-State: AOAM530rpphzX05Zfv/elbHimaFa4dT9w7ZglZdAlZwBoCk6faMKMBlO
        2y/4TznVRFFWri19+zJ7zuvKpzjKiGjoKu7JC+Si2w==
X-Google-Smtp-Source: ABdhPJzUNSEtuAGq/AntijcVwb7VOysRbc8PRRpm+HrzsTl4s4LzDpYbxtndNsmw3C9e7zr97SPpp9rInqEhXg6DtRs=
X-Received: by 2002:ac2:5e71:: with SMTP id a17mr2434778lfr.465.1627034325426;
 Fri, 23 Jul 2021 02:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210712100317.23298-1-steven_lee@aspeedtech.com> <20210712100317.23298-7-steven_lee@aspeedtech.com>
In-Reply-To: <20210712100317.23298-7-steven_lee@aspeedtech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Jul 2021 11:58:34 +0200
Message-ID: <CACRpkdbKyV_Crw8MS63SZGf=nKztDkKnJgRprLdvXe0u7BmVNg@mail.gmail.com>
Subject: Re: [PATCH v6 6/9] gpio: gpio-aspeed-sgpio: Add set_config function
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

On Mon, Jul 12, 2021 at 12:04 PM Steven Lee <steven_lee@aspeedtech.com> wrote:

> AST SoC supports *retain pin state* function when wdt reset.
> The patch adds set_config function for handling sgpio reset tolerance
> register.
>
> Signed-off-by: Steven Lee <steven_lee@aspeedtech.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Excellent reuse of existing pin config property.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
